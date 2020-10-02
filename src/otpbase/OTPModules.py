# This is a temporary hack so we don't have to fix all the PandaModules imports.

# Core panda modules
#from panda3d.interrogatedb import *
from panda3d.core import *
from panda3d.direct import *
from panda3d.egg import *
from panda3d.ode import *
from panda3d.physics import *
from panda3d.fx import *

# OTP specific modules
from panda3d.otp import *

from direct.showbase import DConfig

def getConfigExpress():
    return DConfig

def getConfigShowbase():
    return DConfig
