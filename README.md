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
.\InstallApplications.ps1
```

## Step 4.2 Manual
- Office 365
- Bitwarden Edge Extension
- Save To Pocket Edge Extension
- Super Agent Edge Extension
- Dell PowerManager
- Dell SupportAssist
- Affinity Designer
- Davinci Resolve

## Step 5 - Configure Windows Terminal
.\ConfigureWindowsTerminal.ps1

## Step 6 - Configure Visual Studio Code
.\ConfigureVisualStudioCode.ps1
