signcode -spc \\sesrccdfile01\Verisign_Credentials\WaltDisneyCompany\mycredentials.spc -v \\sesrccdfile01\Verisign_Credentials\WaltDisneyCompany\myprivatekey.pvk -n "Disney Online Games ActiveX Control" -t http://timestamp.verisign.com/scripts/timstamp.dll DisneyOnlineGames.ocx
cabarc -s 6144 n DisneyOnlineGames.cab DisneyOnlineGames.ocx DisneyOnlineGames.inf
signcode -spc \\sesrccdfile01\Verisign_Credentials\WaltDisneyCompany\mycredentials.spc -v \\sesrccdfile01\Verisign_Credentials\WaltDisneyCompany\myprivatekey.pvk -n "Disney Online Games ActiveX Control" -t http://timestamp.verisign.com/scripts/timstamp.dll DisneyOnlineGames.cab
