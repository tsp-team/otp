#begin lib_target
  #define TARGET otpbase

  #define BUILDING_DLL BUILDING_OTP_OTPBASE

  #define SOURCES \
    otpbase.cxx otpbase.h otpsymbols.h \

  #define INSTALL_HEADERS \
    otpbase.h otpsymbols.h

#end lib_target
