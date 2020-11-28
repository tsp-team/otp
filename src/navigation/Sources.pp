#define LOCAL_LIBS otpbase
#define OTHER_LIBS interrogatedb \
                   dtoolutil:c dtoolbase:c dtool:m prc \
                   display:c text:c pgraph:c gobj:c linmath:c putil:c panda:m pandaexpress:m

#define USE_PACKAGES

#begin lib_target
  #define TARGET navigation

  #define BUILDING_DLL BUILDING_OTP_NAVIGATION

  #define INSTALL_HEADERS \
    pathTable.h pathTable.I

  #define IGATESCAN all
  #define IGATEEXT \
    pathTable.cxx \
    pathTable.h \
    pathTable.I

#end lib_target
