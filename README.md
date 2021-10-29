# Machine Setup for Monster Consultancy devices

# Step 1 - Install Windows Package Manager

Take a late release from github, while it's not yet available in the Microsoft Store.

https://github.com/microsoft/winget-cli/releases

Other winget packages can be found here: https://winget.run/

# Step 1.1 - Upgrade Existing Packages

`winget upgrade --all`

# Step 1.2 - Install Git

`winget install -h -e --id Git.Git`
