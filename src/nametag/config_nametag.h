// Filename: config_nametag.h
// Created by:  drose (19Jul01)
//
////////////////////////////////////////////////////////////////////

#ifndef CONFIG_NAMETAG_H
#define CONFIG_NAMETAG_H

#include "otpbase.h"
#include "notifyCategoryProxy.h"
#include "configVariableString.h"
#include "configVariableBool.h"

ConfigureDecl(config_nametag, EXPCL_OTP, EXPTP_OTP);
NotifyCategoryDeclNoExport(nametag);

extern EXPCL_OTP_NAMETAG ConfigVariableString nametag_fixed_bin;

extern EXPCL_OTP_NAMETAG void init_libnametag();

#endif
