# Machine Setup for Monster Consultancy devices

Open an elevated Windows Powershell window

# Step 1 - Install Windows Package Manager

Take a late release from github, while it's not yet available in the Microsoft Store.

https://github.com/microsoft/winget-cli/releases

Other winget packages can be found here: https://winget.run/

## Step 1.1 - Upgrade Existing Packages

`winget upgrade --all`

# Step 2 - Install Chocolatey
`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

# Step 3 - Install Essentials

## Step 3.1 - Install Git

`winget install -h -e --id Git.Git`

## Step 3.2 - Install GitHub CLI

`winget install -h -e --id GitHub.cli`

## Step 3.3 - Prepare Sources Path

`New-Item -ItemType Directory -Force -Path D:\Sources`
