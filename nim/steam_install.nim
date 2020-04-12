import registry

var steamInstallDir: string
try:
   steamInstallDir = (
      getUnicodeValue(
         r"SOFTWARE\Wow6432Node\Valve\Steam",
         "InstallPath",
         HKEY_LOCAL_MACHINE
      )
   )
except OSError:
   echo "Got beaned trying to get a reg val:"
   echo getCurrentExceptionMsg()
