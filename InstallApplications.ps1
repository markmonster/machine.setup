# Generate Text Art
# https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Monster%0AConsultancy%0AMachine%0ASetup%0AV1.1

Write-Host -ForegroundColor DarkYellow @'
   _____                          __                                       
  /     \   ____   ____   _______/  |_  ___________                        
 /  \ /  \ /  _ \ /    \ /  ___/\   __\/ __ \_  __ \                       
/    Y    (  <_> )   |  \\___ \  |  | \  ___/|  | \/                       
\____|__  /\____/|___|  /____  > |__|  \___  >__|                          
        \/            \/     \/            \/                              
_________                            .__   __                              
\_   ___ \  ____   ____   ________ __|  |_/  |______    ____   ____ ___.__.
/    \  \/ /  _ \ /    \ /  ___/  |  \  |\   __\__  \  /    \_/ ___<   |  |
\     \___(  <_> )   |  \\___ \|  |  /  |_|  |  / __ \|   |  \  \___\___  |
 \______  /\____/|___|  /____  >____/|____/__| (____  /___|  /\___  > ____|
        \/            \/     \/                     \/     \/     \/\/     
   _____                .__    .__                                         
  /     \ _____    ____ |  |__ |__| ____   ____                            
 /  \ /  \\__  \ _/ ___\|  |  \|  |/    \_/ __ \                           
/    Y    \/ __ \\  \___|   Y  \  |   |  \  ___/                           
\____|__  (____  /\___  >___|  /__|___|  /\___  >                          
        \/     \/     \/     \/        \/     \/                           
  _________       __                                                       
 /   _____/ _____/  |_ __ ________                                         
 \_____  \_/ __ \   __\  |  \____ \                                        
 /        \  ___/|  | |  |  /  |_> >                                       
/_______  /\___  >__| |____/|   __/                                        
        \/     \/           |__|                                           
____   ________     ____                                                   
\   \ /   /_   |   /_   |                                                  
 \   Y   / |   |    |   |                                                  
  \     /  |   |    |   |                                                  
   \___/   |___| /\ |___|                                                  
                 \/                                                        
'@
Function IsInstalled($id) {
        #Write-Host $id
        $installed = winget list -q $id
        #Write-Host ($installed -clike "*$id*")
        #$installed | Get-Member

        If($installed -clike "*$id*") {
                return $true
        }
        Else {
                return $false
        }
}

Function Install($id) {
        If(-Not (IsInstalled($id))) {
                winget install -h -e --id $id
        }
        Else {
                Write-Host -ForegroundColor Green "$id is already installed."
        }
}

Install('Microsoft.PowerShell')
Install('Microsoft.WindowsTerminal')
Install('Fork.Fork')
Install('Microsoft.VisualStudioCode')
If(-Not (IsInstalled('Microsoft.VisualStudio.2022.Professional'))) {
        winget install Microsoft.VisualStudio.2022.Professional --silent --override "--wait --quiet --addProductLang En-us --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetCoreTools --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.NetCrossPlat"
}
Else {
        Write-Host -ForegroundColor Green "Microsoft.VisualStudio.2022.Professional is already installed."
}
If(-Not (Test-Path "$ENV:LOCALAPPDATA\Jetbrains\Installations")) {
        winget install -h -e --id 'JetBrains.dotUltimate'
}
Else {
        Write-Host -ForegroundColor Green "JetBrains.dotUltimate is already installed."
}
Install('7zip.7zip')

#If(-Not (Test-Path "$ENV:LOCALAPPDATA\Programs\Typora\Typora.exe")) {
#        winget install -h -e --id 'Typora.Typora'
#}
#Else {
#        Write-Host -ForegroundColor Green "Typora.Typora is already installed."
#}

choco install -y agentransack
Install('Microsoft.AzureCLI')
Install('Microsoft.AzureDataStudio')
Install('Bitwarden.Bitwarden')
Install('Docker.DockerDesktop')
Install('Doxie.Doxie')
Install('Elgato.StreamDeck')
#Install('Telerik.Fiddler')
Install('Logitech.Options')
Install('Logitech.CameraSettings')
Install('Microsoft.Teams')
Install('OpenJS.NodeJS')
Install('OBSProject.OBSStudio')
Install('Microsoft.PowerToys')
choco install -y paint.net
choco install -y jetbrainsmononf
#Install('XSplit.VCam')
Install('JanDeDobbeleer.OhMyPosh')
Install('Files-Community.Files')

Install-Module -Name PSReadLine -AllowPrerelease -Confirm:$False -Force
Write-Host -ForegroundColor Green "PSReadLine installed."
Install-Module -Name PSKubectlCompletion -Confirm:$False -Force
Write-Host -ForegroundColor Green "PSKubectlCompletion installed."
Install-Module -Name Terminal-Icons -Confirm:$False -Force
Write-Host -ForegroundColor Green "Terminal-Icons installed."
