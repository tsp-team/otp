#define LOCAL_LIBS otpbase
#define OTHER_LIBS interrogatedb:c dconfig:c dtoolconfig:m \
                   dtoolutil:c dtoolbase:c dtool:m prc:c \
                   display:c text:c pgraph:c gobj:c linmath:c putil:c panda:m pandaexpress:m

#define USE_PACKAGES

#begin lib_target
  #define TARGET navigation

  #define SOURCES \
    pathTable.h pathTable.I

  #define COMPOSITE_SOURCES \
    pathTable.cxx

  #define INSTALL_HEADERS \
    pathTable.h pathTable.I

  #define IGATESCAN all

#end lib_target
