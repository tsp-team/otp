#define BUILD_DIRECTORY $[and $[HAVE_OPENSSL],$[HAVE_ZLIB]]

#begin lib_target
  #define TARGET secure
  #define LOCAL_LIBS otpbase
  #define OTHER_LIBS \
    pandaexpress:m \
    interrogatedb \
    dtoolutil:c dtoolbase:c dtool:m \
    prc:c
	
  #define WIN_SYS_LIBS Iphlpapi.lib

  #define USE_PACKAGES zlib net openssl

  #define BUILDING_DLL BUILDING_OTP_SECURE

  #define SOURCES \
    clientCertificate_src.cxx \
    get_fingerprint.h get_fingerprint.cxx \
    loadClientCertificate.h loadClientCertificate.cxx

  #define IGATESCAN all

  #define INSTALL_SCRIPTS sign-xrc.sh

#end lib_target

#begin bin_target
  #define BUILD_TARGET $[HAVE_OPENSSL]
  #define OTHER_LIBS dtool:m \
    dtoolutil:c dtoolbase:c

  #define WIN_SYS_LIBS \
    advapi32.lib ws2_32.lib shell32.lib user32.lib crypt32.lib $[WIN_SYS_LIBS]

  #define USE_PACKAGES openssl
  #define TARGET otp-sign1
  #define SOURCES otp_sign1.cxx
#end bin_target
