// DIR_TYPE "metalib" indicates we are building a shared library that
// consists mostly of references to other shared libraries.  Under
// Windows, this directly produces a DLL (as opposed to the regular
// src libraries, which don't produce anything but a pile of OBJ files
// under Windows).

#define DIR_TYPE metalib
#define BUILDING_DLL BUILDING_OTP

#define COMPONENT_LIBS \
   otpbase settings nametag movement secure navigation

#define OTHER_LIBS p3direct:m panda:m pandaexpress:m p3dtool:m \
    p3express:c p3prc p3event:c p3pgraph:c p3pgraphnodes:c p3linmath:c p3gobj:c \
    p3char:c p3putil:c p3mathutil:c p3downloader:c p3mathutil:c p3chan:c \
    p3pandabase:c p3recorder:c p3grutil:c p3chan:c p3collide:c p3device:c \
    p3dgraph:c p3display:c p3gsgbase:c p3parametrics:c p3text:c p3pnmimage:c \
    p3dtoolutil:c p3interrogatedb p3interval:c p3dtoolbase:c \
    p3pipeline:c p3pstatclient:c p3cull:c p3pnmimagetypes:c \
    p3tform:c p3audio:c p3pgui:c p3directbase:c p3dcparser:c p3showbase:c \
    p3deadrec:c p3distributed:c p3motiontrail:c p3movies:c \
    $[if $[HAVE_NET],p3net:c] $[if $[WANT_NATIVE_NET],p3nativenet:c]

#if $[HAVE_FREETYPE]
    #define OTHER_LIBS $[OTHER_LIBS] p3pnmtext:c
  #endif

#begin metalib_target
  #define TARGET otp

  #define SOURCES otp.cxx
#end metalib_target
