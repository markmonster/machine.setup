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

```ps
winget install -h -e --id Microsoft.PowerShell
winget install -h -e --id Microsoft.WindowsTerminal
winget install -h -e --id Fork.Fork
winget install -h -e --id Microsoft.VisualStudioCode
#choco install -y visualstudio2019professional
#choco install -y visualstudio2019-workload-azure
#choco install -y visualstudio2019-workload-netcoretools
#choco install -y visualstudio2019-workload-netweb
winget install -h -e --id JetBrains.dotUltimate
winget install -h -e --id 7zip.7zip
winget install -h -e --id Typora.Typora
#affinity designer
#agent ransack
winget install -h -e --id Microsoft.AzureCLI
winget install -h -e --id Microsoft.AzureDataStudio
winget install -h -e --id Bitwarden.Bitwarden
# Bitwarden Edge Extension
#Dell PowerManager
#Dell SupportAssist
winget install -h -e --id Docker.DockerDesktop
winget install -h -e --id Doxie.Doxie
winget install -h -e --id Elgato.StreamDeck
winget install -h -e --id Telerik.Fiddler
winget install -h -e --id Logitech.Options
#Logitech presentation
winget install -h -e --id Logitech.CameraSettings
winget install -h -e --id Microsoft.Teams
winget install -h -e --id 9WZDNCRFJB3H #Microsoft ToDo
#MT940 Creator
winget install -h -e --id OpenJS.NodeJS
winget install -h -e --id OBSProject.OBSStudio
#Office 365
winget install -h -e --id Microsoft.PowerToys
#Paint.NET
winget install -h -e --id XSplit.VCam
```

## Step 5 - Configure Windows Terminal

## Step 6 - Configure Visual Studio Code
