$selfPath = (Get-Item -Path "." -Verbose).FullName
$dllRelativePath = "/.shell/ps/_colors.ps1"
$dllAbsolutePath = Join-Path $selfPath $dllRelativePath
. $dllAbsolutePath

setColor "Cyan"
echo "This is a test script"

setColor "Yellow"
echo "This is a test script"

resetColor

