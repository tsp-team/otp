#define USE_PACKAGES cg  // from gobj.

#begin lib_target
  #define TARGET nametag
  #define LOCAL_LIBS otpbase
  #define OTHER_LIBS \
    panda pandaexpress \
    p3interval:c p3direct:m \
    p3interrogatedb p3dtoolconfig:m \
    p3dtoolutil:c p3dtoolbase:c p3dtool:m \
    p3express:c p3prc p3event:c p3pgraph:c p3pgraphnodes:c p3linmath:c p3gobj:c \
    p3char:c p3putil:c p3mathutil:c p3downloader:c p3mathutil:c p3chan:c \
    p3pandabase:c p3recorder:c p3grutil:c p3chan:c p3collide:c p3device:c \
    p3dgraph:c p3display:c p3gsgbase:c p3parametrics:c p3text:c p3pnmimage:c \
    p3pipeline:c p3pstatclient:c p3cull:c p3pnmimagetypes:c p3tform:c \
    p3audio:c p3pgui:c p3directbase:c p3movies:c \
    $[if $[HAVE_NET],p3net:c] $[if $[WANT_NATIVE_NET],p3nativenet:c]

  #if $[HAVE_FREETYPE]
    #define OTHER_LIBS $[OTHER_LIBS] p3pnmtext:c
  #endif

  #define SOURCES \
    chatBalloon.I chatBalloon.h \
    chatFlags.h \
    clickablePopup.I clickablePopup.h \
    config_nametag.h \
    nametag.I nametag.h \
    nametag2d.I nametag2d.h \
    nametag3d.I nametag3d.h \
    nametagFloat2d.h nametagFloat3d.h \
    nametagGroup.I nametagGroup.h \
    nametagGlobals.I nametagGlobals.h \
    popupMouseWatcherRegion.I popupMouseWatcherRegion.h \
    marginPopup.I marginPopup.h \
    marginManager.I marginManager.h \
    whisperPopup.I whisperPopup.h

  #define COMPOSITE_SOURCES  \
    chatBalloon.cxx \
    clickablePopup.cxx \
    config_nametag.cxx \
    nametag.cxx \
    nametag2d.cxx \
    nametag3d.cxx \
    nametagFloat2d.cxx nametagFloat3d.cxx \
    nametagGroup.cxx \
    nametagGlobals.cxx \
    popupMouseWatcherRegion.cxx \
    marginPopup.cxx \
    marginManager.cxx \
    whisperPopup.cxx

  #define IGATESCAN all

#end lib_target
