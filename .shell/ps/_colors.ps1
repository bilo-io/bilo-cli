# $HOST.UI.RawUI.BackgroundColor = "DarkBlue"
function setColor ($foreground) {
    $HOST.UI.RawUI.ForegroundColor = $foreground
}
function resetColor($foreground) {
    setColor "White"
}

function printHelp {
setColor "Gray"

echo '
    Color Usage:
        - setColor "Cyan"   #sets the terminal text color
        - resetColor        #resets the terminal text color

    Colors: 
        - Black & White
        - The ones below also have dark variants (e.g. DarkBlue, DarkCyan, etc.):
        - [
            Blue
            Cyan
            Gray
            Green
            Magenta
            Red
            White
        ]
'
resetColor
}


