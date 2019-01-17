@ECHO OFF
IF EXIST .\wix\sami.wixobj (
    del .\wix\sami.wixobj
)
IF EXIST .\wix\sami.wixpdb (
    del .\wix\sami.wixpdb
)
IF EXIST .\wix\sami.msi (
    del .\wix\sami.msi
)
"%ProgramFiles(x86)%\WiX Toolset v3.11\bin\candle.exe" -out .\wix\sami.wixobj .\wix\sami.wxs
"%ProgramFiles(x86)%\WiX Toolset v3.11\bin\light.exe" -out .\wix\sami.msi .\wix\sami.wixobj

IF EXIST .\wix\sami.wixobj (
    del .\wix\sami.wixobj
)
IF EXIST .\wix\sami.wixpdb (
    del .\wix\sami.wixpdb
)
