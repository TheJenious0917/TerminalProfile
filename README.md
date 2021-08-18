# TerminalProfile

This repo is storing my various PowerShell profile settings. Windows looks for profiles in the my docs/WindowsPowershell folder, so when a profile file is created there, edit it to dot reference these files like this:

    . $env:USERPROFILE\OneDrive\Microsoft.VSCode_profile.ps1

The above path can either reference OneDrive (where I have a synced copy at all times), or the local copy of this repo.

This repo also keeps a backup of the settings for Microsoft Terminal. The Terminal settings that I have also include background images for various connections to servers on my network to distunguish the connections.
