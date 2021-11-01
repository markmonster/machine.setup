# Machine Setup for Monster Consultancy devices

# Step 1 - Install Windows Package Manager

Take a late release from github, while it's not yet available in the Microsoft Store.

https://github.com/microsoft/winget-cli/releases

Other winget packages can be found here: https://winget.run/

## Step 1.1 - Upgrade Existing Packages

`winget upgrade --all`

# Step 2 - Install Chocolatey

Open an elevated Windows Powershell window

```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

# Step 3 - Install Essentials

## Step 3.1 - Install Git

```ps
winget install -h -e --id Git.Git
```

## Step 3.2 - Install GitHub CLI

```ps
winget install -h -e --id GitHub.cli
```

## Step 3.3 - Prepare Sources Path and clone this repository

```ps
New-Item -ItemType Directory -Force -Path D:\Sources
Set-Location D:\Sources

git clone https://github.com/markmonster/machine.setup.git
```

## Step 4 - Install applications

## Step 4.1 - Scripted
```ps
winget install -h -e --id Microsoft.PowerShell
winget install -h -e --id Microsoft.WindowsTerminal
winget install -h -e --id Fork.Fork
winget install -h -e --id Microsoft.VisualStudioCode
winget install Microsoft.VisualStudio.2019.Professional --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.NetCrossPlat"
winget install -h -e --id JetBrains.dotUltimate
winget install -h -e --id 7zip.7zip
winget install -h -e --id Typora.Typora
choco install agentransack
winget install -h -e --id Microsoft.AzureCLI
winget install -h -e --id Microsoft.AzureDataStudio
winget install -h -e --id Bitwarden.Bitwarden
winget install -h -e --id Docker.DockerDesktop
winget install -h -e --id Doxie.Doxie
winget install -h -e --id Elgato.StreamDeck
winget install -h -e --id Telerik.Fiddler
winget install -h -e --id Logitech.Options
choco install logitech-presentation
winget install -h -e --id Logitech.CameraSettings
winget install -h -e --id Microsoft.Teams
winget install -h -e --id 9WZDNCRFJB3H #Microsoft ToDo
winget install -h -e --id OpenJS.NodeJS
winget install -h -e --id OBSProject.OBSStudio
winget install -h -e --id Microsoft.PowerToys
choco install paint.net
winget install -h -e --id XSplit.VCam
```
## Step 4.2 Manual
- Office 365
- MT940 Creator
- Bitwarden Edge Extension
- Dell PowerManager
- Dell SupportAssist
- Affinity Designer
- Davinci Resolve

## Step 5 - Configure Windows Terminal

## Step 6 - Configure Visual Studio Code
