from toontown.toonbase.ToontownGlobals import *
from direct.directnotify import DirectNotifyGlobal
import BasicEntities

class ModelEntity(BasicEntities.NodePathEntity):
    LoadFuncs = {
        'loadModelCopy': loader.loadModelCopy,
        'loadModel': loader.loadModel,
        'loadModelOnce': loader.loadModelOnce,
        }
    def __init__(self, level, entId):
        # TODO: fill in default values automatically for missing attribs
        self.collisionsOnly = False
        self.loadType = 'loadModelCopy'
        self.flattenType = 'light'
        self.goonHatType = 'none'
        self.entInitialized = False
        BasicEntities.NodePathEntity.__init__(self, level, entId)
        self.entInitialized = True
        self.model = None
        self.loadModel()
        
    def destroy(self):
        if self.model:
            self.model.removeNode()
            del self.model
        BasicEntities.NodePathEntity.destroy(self)

    def loadModel(self):
        if self.model:
            self.model.removeNode()
            self.model = None
        if self.modelPath is None:
            return
        
        self.model = ModelEntity.LoadFuncs[self.loadType](self.modelPath)
        if self.model:
            self.model.reparentTo(self)

            # hide/show as appropriate
            if self.collisionsOnly:
                if __dev__:
                    self.model.setTransparency(1)
                    self.model.setColorScale(1,1,1,.1)
                else:
                    self.model.hide()
            else:
                self.model.show()

            # HACK SDN: special code for moving crate wall collisions down
            if self.modelPath in ("phase_9/models/cogHQ/woodCrateB.bam",
                                  "phase_9/models/cogHQ/metal_crateB.bam",
                                  "phase_10/models/cashbotHQ/CBMetalCrate.bam",
                                  "phase_10/models/cogHQ/CBMetalCrate2.bam",
                                  "phase_10/models/cashbotHQ/CBWoodCrate.bam",
                                  "phase_11/models/lawbotHQ/LB_metal_crate.bam",
                                  "phase_11/models/lawbotHQ/LB_metal_crate2.bam",
                                  ):
                # get rid of any scales
                #self.model.flattenLight()
                # move walls down
                cNode = self.find("**/wall")
                cNode.setZ(cNode, -.75)
                # duplicate the floor and move it down to crate a
                # catch effect for low-hopped toons
                colNode = self.find("**/collision")
                floor = colNode.find("**/floor")
                floor2 = floor.copyTo(colNode)
                floor2.setZ(floor2, -.75)

            """
            # incorporate the entity's overall scale
            self.model.setScale(self.getScale())
            self.setScale(1)
            self.model.flattenLight()
            """

            if self.goonHatType is not 'none':
                self.goonType = {'hardhat':'pg','security':'sg'}[self.goonHatType]
                self.hat = self.model
                ### this was copied from Goon.createHead
                if self.goonType == "pg":
                    self.hat.find("**/security_hat").hide()
                elif self.goonType == "sg":
                    self.hat.find("**/hard_hat").hide()
                ###
                del self.hat
                del self.goonType

            if self.flattenType == 'light':
                self.model.flattenLight()
            elif self.flattenType == 'medium':
                self.model.flattenMedium()
            elif self.flattenType == 'strong':
                self.model.flattenStrong()

    def setModelPath(self, path):
        self.modelPath = path
        self.loadModel()
    
    def setCollisionsOnly(self, collisionsOnly):
        self.collisionsOnly = collisionsOnly
        self.loadModel()

    def setGoonHatType(self, goonHatType):
        self.goonHatType = goonHatType
        self.loadModel()
