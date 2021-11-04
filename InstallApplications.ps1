Write-Host @'
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
__________               __________                                                  ____   ________ 
\______   \ _______  ___ \______   \_______   ____ ______ ______   ___________       \   \ /   /_   |
 |    |  _//  _ \  \/  /  |     ___/\_  __ \_/ __ \\____ \\____ \_/ __ \_  __ \       \   Y   / |   |
 |    |   (  <_> >    <   |    |     |  | \/\  ___/|  |_> >  |_> >  ___/|  | \/        \     /  |   |
 |______  /\____/__/\_ \  |____|     |__|    \___  >   __/|   __/ \___  >__|            \___/   |___|
        \/            \/                         \/|__|   |__|        \/                             
'@


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