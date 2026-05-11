
#░█████╗░██╗░░░██╗████████╗░█████╗░  ██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░
#██╔══██╗██║░░░██║╚══██╔══╝██╔══██╗  ██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░
#███████║██║░░░██║░░░██║░░░██║░░██║  ██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░
#██╔══██║██║░░░██║░░░██║░░░██║░░██║  ██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░
#██║░░██║╚██████╔╝░░░██║░░░╚█████╔╝  ██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗
#╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░╚════╝░  ╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝

##install chocolaty
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


#remove activation
#slmgr /upk
#mas script activator
#.\mas\activation.cmd


## Debloat windows
iwr -useb https://christitus.com/win | iex


##browsers
choco install firefox-dev --pre   -y
choco install chromium -y
choco install firefoxpwa -y

##communicate
choco install zoom -y
choco install discord  -y
choco install signal -y
choco install telegram -y

## media
choco install vlc  -y
choco install spotify  -y
choco install asio4all -y
choco install jellyfin-media-player -y
#choco install jellyfin -y


##dev tools
choco install vscode  -y
choco install notepadplusplus -y
choco install git -y
choco install arduino -y
choco install virtualbox -y
choco install python -y
choco install nodejs -y
choco install okular -y
choco install okular -y
choco install Pycharm -y
choco install clion-ide -y
choco install virtualdub2 -y

#gaming
choco install epicgameslauncher -y
choco install steam -y

#compression
choco install 7zip -y

#editing software 
choco install audacity  -y
choco install inkscape  -y
choco install gimp  -y
choco install handbrake -y
choco install obs-studio -y

#benchmark
choco install coretemp -y
choco install msiafterburner -y
choco install cpu-z -y
choco install scrcpy -y


#general tools
choco install mailspring -y
choco install lightshot -y
choco install flameshot -y
choco install powertoys -y
choco install autohotkey -y
choco install f.lux -y
choco install quicklook -y

#Download Managers
choco install jdownloader -y
choco install qbittorrent  -y

#choco install bluestacks -y
choco install tailscale -y

# remove spotify ads
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; iex "& { $((iwr -useb 'https://raw.githubusercontent.com/amd64fox/SpotX/main/Install.ps1').Content) } -new_theme"


##exe files
#.\Taskbar-Tools\'Taskbar Tools Setup 1.3.1.exe'
.\apps\mega-ultimate\'Mega Ultimate Edition Setup 1.3.0.exe'


.\apps\office\office.exe



.\apps\office\hebrewPack.exe


.\apps\acrobat\'Adobe.Acrobat.Pro.DC.v2021.007.20095.exe'
.\apps\photoshop\'Adobe 2023'\'Set-up.exe'





##its important to keep this here otherwise it will throw an error
##saying that the hebrew package is running
.\apps\office\arabicPack.exe



##promt installation

# disable taskbar hover time 
$path1 = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'   
New-ItemProperty -Path $path1 -Name 'ExtendedUIHoverTime' -Value 0 -PropertyType DWord

#disable bing search
$path2 = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search'
New-ItemProperty -Path $path2 -Name 'BingSearchEnabled' -Value 0 -PropertyType DWord


# bring back old right click
New-item 'HKCU:\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32' -force -Value ""


# change titlebar inactive color
$path1 = 'HKCU:\SOFTWARE\Microsoft\Windows\DWM'   
New-ItemProperty -Path $path1 -Name 'AccentColorInactive' -Value 3552822 -PropertyType DWord

# enable darkmode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
# show file extensions
Set-Itemproperty -path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -value 0


# install windows subsystem for linux
wsl --install

#enable windows sandbox feature - disposable vm machine for testing things
Enable-WindowsOptionalFeature -FeatureName "Containers-DisposableClientVM" -All -Online






