#begin lib_target
  #define TARGET otpbase

  #define BUILDING_DLL BUILDING_OTP_OTPBASE

 #define USE_PACKAGES eigen
  
  #define SOURCES \
    otpbase.cxx otpbase.h otpsymbols.h \

  #define INSTALL_HEADERS \
    otpbase.h otpsymbols.h

#end lib_target
