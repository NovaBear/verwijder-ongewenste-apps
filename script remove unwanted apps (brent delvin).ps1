##Bekijk alle apps met : 
Get-AppxPackage –AllUsers | Select Name, PackageFullName 

##============================================================##
## Dit zorgt er voor dat je alle apps appart kunt verwijderen ##
##============================================================##

#hier moet je handmatig het hele commando per app invoeren voor ze te kunnen verwijderen
#dit gebeurd doordat hij eerst zoekt naar de app die tussen de ** staat en die daarna verwijderd 

Get-AppxPackage *zunemusic* | Remove-AppPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *YourPhone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *MicrosoftSolitaireCollextion* | Remove-AppxPackage
Get-AppxPackage *XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage *XboxIdentityProvider* | Remove-AppxPackage
Get-AppxPackage *GetHelp* | Remove-AppxPackage
Get-AppxPackage *MixedReality.Portal* | Remove-AppxPackage

##====================##
## of je kan dit doen ##
##====================##

##=============================================================================================================##
## Dit zorgt er voor dat je een lijst maakt met alle apps die er wel in mogen zitten en alle andere verwijderd ##
##=============================================================================================================##

#zet eerst alle apps die je wilt houden in deze lijst. En verwijder de gene die je weg wilt
$keepers = @(
    '1527c705-839a-4832-9118-54d4Bd6a0c89'             
    'c5e2524a-ea46-4f67-841f-6a9465d9d515'            
    'E2A4F912-2574-4A75-9BB0-0D023378592B'
    'F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE'
    'Microsoft.AAD.BrokerPlugin'
    'Microsoft.AccountsControl'
    'Microsoft.AsyncTextService'
    'Microsoft.BioEnrollment'
    'Microsoft.CredDialogHost'
    'Microsoft.ECApp'
    'Microsoft.LockApp'
    'Microsoft.MicrosoftEdgeDevToolsClient'
    'Microsoft.MicrosoftEdge'
    'Microsoft.Win32WebViewHost'
    'Microsoft.Windows.Apprep.ChxApp'
    'Microsoft.Windows.AssignedAccessLockApp'
    'Microsoft.Windows.CallingShellApp'
    'Microsoft.Windows.CapturePicker'
    'Microsoft.Windows.CloudExperienceHost'
    'Microsoft.Windows.ContentDeliveryManager'
    'Microsoft.Windows.NarratorQuickStart'
    'Microsoft.Windows.OOBENetworkCaptivePortal'
    'Microsoft.Windows.OOBENetworkConnectionFlow'
    'Microsoft.Windows.ParentalControls'
    'Microsoft.Windows.PeopleExperienceHost'
    'Microsoft.Windows.PinningConfirmationDialog'
    'Microsoft.Windows.Search'
    'Microsoft.Windows.SecHealthUI'
    'Microsoft.Windows.SecureAssessmentBrowser'
    'Microsoft.Windows.XGpuEjectDialog'
    'Microsoft.XboxGameCallableUI'
    'MicrosoftWindows.UndockedDevKit'
    'NcsiUwpApp'
    'Windows.CBSPreview'
    'windows.immersivecontrolpanel'
    'Windows.PrintDialog'
    'Microsoft.UI.Xaml.2.0'
    '5A894077.McAfeeEndpointSecurityWebControl'
    'Microsoft.NET.Native.Runtime.2.2'
    'Microsoft.NET.Native.Runtime.2.2'
    'Microsoft.NET.Native.Framework.2.2'
    'Microsoft.NET.Native.Framework.2.2'
    'Microsoft.VCLibs.140.00'
    'Microsoft.VCLibs.140.00'
    'STMicroelectronicsMEMS.DellFreeFallDataProtection'
    'MicrosoftWindows.Client.CBS'
    'Microsoft.Windows.ShellExperienceHost'
    'Microsoft.UI.Xaml.2.1'
    'Microsoft.UI.Xaml.2.1'
    'Microsoft.UI.Xaml.2.3'
    'Microsoft.UI.Xaml.2.3'
    'Microsoft.Advertising.Xaml'
    'Microsoft.Advertising.Xaml'
    'Microsoft.NET.Native.Framework.1.7'
    'Microsoft.NET.Native.Framework.1.7'
    'Microsoft.UI.Xaml.2.0'
    'Microsoft.NET.Native.Runtime.1.7'
    'Microsoft.NET.Native.Runtime.1.7'
    'Microsoft.UI.Xaml.2.4'
    'Microsoft.UI.Xaml.2.4'
    'Microsoft.Services.Store.Engagement'
    'Microsoft.Services.Store.Engagement'
    'Microsoft.VCLibs.140.00.UWPDesktop'
    'Microsoft.VCLibs.140.00.UWPDesktop'
    'Microsoft.Windows.StartMenuExperienceHost'
    'Microsoft.ScreenSketch'
    'Microsoft.WindowsAlarms'
    'Microsoft.LanguageExperiencePacken-US'
    'Microsoft.WindowsCamera'
    'Microsoft.UI.Xaml.2.5'
    'Microsoft.UI.Xaml.2.5'
    'Microsoft.WindowsCalculator'
    'Microsoft.WindowsSoundRecorder'
    'Microsoft.MSPaint'
    'Microsoft.Microsoft3DViewer'
    'Microsoft.MicrosoftEdge.Stable'
    'Microsoft.WindowsMaps'
    'Microsoft.VCLibs.140.00'
    'Microsoft.MicrosoftEdge.Stable'
    'Microsoft.MicrosoftStickyNotes'
    'Microsoft.WebMediaExtensions'
    'Microsoft.UI.Xaml.2.6'
    'Microsoft.UI.Xaml.2.6'
    'Microsoft.WebpImageExtension'
    '1527c705-839a-4832-9118-54d4Bd6a0c89'
    'c5e2524a-ea46-4f67-841f-6a9465d9d515'
    'E2A4F912-2574-4A75-9BB0-0D023378592B'
    'F46D4000-FD22-4DB4-AC8E-4E1DDDE828FE'
    'Microsoft.AAD.BrokerPlugin'
    'Microsoft.AccountsControl'
    'Microsoft.AsyncTextService'
    'Microsoft.BioEnrollment'
    'Microsoft.CredDialogHost'
    'Microsoft.ECApp'
    'Microsoft.LockApp'
    'Microsoft.MicrosoftEdgeDevToolsClient'
    'Microsoft.Win32WebViewHost'
    'Microsoft.Windows.Apprep.ChxApp'
    'Microsoft.Windows.AssignedAccessLockApp'
    'Microsoft.Windows.CallingShellApp'
    'Microsoft.Windows.CapturePicker'
    'Microsoft.Windows.ContentDeliveryManager'
    'Microsoft.Windows.NarratorQuickStart'
    'Microsoft.Windows.OOBENetworkCaptivePortal'
    'Microsoft.Windows.OOBENetworkConnectionFlow'
    'Microsoft.Windows.ParentalControls'
    'Microsoft.Windows.PeopleExperienceHost'
    'Microsoft.Windows.PinningConfirmationDialog'
    'Microsoft.Windows.Search'
    'Microsoft.Windows.SecHealthUI' 
    'Microsoft.Windows.SecureAssessmentBrowser'  
    'Microsoft.Windows.ShellExperienceHost'   
    'Microsoft.Windows.StartMenuExperienceHost'    
    'Microsoft.Windows.XGpuEjectDialog'     
    'Microsoft.XboxGameCallableUI'      
    'MicrosoftWindows.UndockedDevKit'       
    'NcsiUwpApp'        
    'Windows.CBSPreview'         
    'Microsoft.BingWeather'          
    'Microsoft.LanguageExperiencePacknl-NL'           
    'Microsoft.LanguageExperiencePackfr-FR'            
    'Microsoft.HEIFImageExtension'                
    'Microsoft.StorePurchaseApp'                 
    'Microsoft.VCLibs.140.00'                 
    'Microsoft.VCLibs.140.00'                  
    'Microsoft.VP9VideoExtensions'                  
    'Microsoft.Microsoft3DViewer'                   
    'Microsoft.Windows.Photos '                        
    'Microsoft.DesktopAppInstaller '                   
    'Microsoft.GetHelp'                                
    'Microsoft.549981C3F5F10'                          
    'Microsoft.VCLibs.140.00.UWPDesktop'               
    'Microsoft.VCLibs.140.00.UWPDesktop '              
    'Microsoft.UI.Xaml.2.7'                            
    'Microsoft.UI.Xaml.2.7'                            
    'Microsoft.MicrosoftEdge'                          
    'Microsoft.Windows.CloudExperienceHost'            
    'MicrosoftWindows.Client.CBS'                      
    'Microsoft.Getstarted'                             
    'Microsoft.WindowsStore'                           
    'AppUp.IntelGraphicsExperience' 
)
# eens je de lijst hebt gemaakt word er hier onderin een script uitgevoerd dat er voor zorgt dat alle apps die niet boven in de lijst staan worden verwijderd
#doormiddel van eerst alle apps op te halen me Get-Appx... en daarna voor elk bestand kijken of ze in de lijst staan zo niet worden ze verwijderd

$packages = Get-AppxProvisionedPackage -Online
foreach( $package in $packages )
{
    if( $keepers -contains $package.DisplayName )
    {
        Write-Verbose "Wordt NIET! Verwijderd $( $package.DisplayName )"
    }
    else 
    {
        Write-Verbose "Wordt WEL! Verwijderd $( $package.DisplayName )"
        Write-Verbose "PackageFullName $( $package.PackageName )"
        Remove-AppxPackage -Package $package.PackageName -AllUsers -Verbose
        Remove-AppxProvisionedPackage -Online -PackageName $package.PackageName -Verbose -ErrorAction SilentlyContinue
    }
}
$packages = $null