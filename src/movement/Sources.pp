#define USE_PACKAGES cg  // from gobj.

#begin lib_target
  #define TARGET movement
  #define LOCAL_LIBS \
    otpbase
  #define OTHER_LIBS \
    panda:m p3downloader:c p3express:c p3pandabase:c p3recorder:c \
    p3pgraph:c p3pgraphnodes:c p3pipeline:c p3grutil:c p3chan:c p3pstatclient:c \
    p3char:c p3collide:c p3cull:c p3device:c p3dgraph:c p3display:c \
    p3event:c p3gobj:c p3gsgbase:c p3linmath:c p3mathutil:c p3parametrics:c \
    p3pnmimagetypes:c p3pnmimage:c p3tform:c p3text:c \
    p3putil:c p3audio:c p3pgui:c p3interrogatedb \
    $[if $[HAVE_NET],p3net:c] $[if $[WANT_NATIVE_NET],p3nativenet:c] \
    p3dtoolutil:c p3dtoolbase:c p3prc p3dtool:m

  #if $[HAVE_FREETYPE]
    #define OTHER_LIBS $[OTHER_LIBS] p3pnmtext:c
  #endif

  #define SOURCES \
    config_movement.cxx config_movement.h \
    cMover.h cMover.I cMover.cxx cImpulse.h cImpulse.I cImpulse.cxx \
    cMoverGroup.h cMoverGroup.I cMoverGroup.cxx

  #define INSTALL_HEADERS \
    config_movement.h \
    cMover.h cMover.I cImpulse.h cImpulse.I cMoverGroup.h cMoverGroup.I

  #define IGATESCAN all
#end lib_target
