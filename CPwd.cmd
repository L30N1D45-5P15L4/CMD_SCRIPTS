  @echo on
:: Function: List all Wifi Connection
:: Author: Leonidas - 07 May 2022
::
   @netsh wlan show profiles
   @echo Selecione o profile e cole abaixo:
   @set /P Profile=
   netsh wlan show profile name="*%Profile%" key=Clear|find /i "chave"
   @if "%ERRORLEVEL%" == "1" echo Something wrong happened! RC="%ERRORLEVEL%
   @pause
   %0
