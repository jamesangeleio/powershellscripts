$wmi = Get-WMIObject Win32_Product | Where-Object {$_.Name -like 'Adobe Acrobat DC*'}

if($wmi)

{

Set-Itemproperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.pdf\UserChoice' -Name 'ProgID' -value 'Acrobat.Document.DC'

} else

{

Set-Itemproperty -path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.pdf\UserChoice' -Name 'ProgID' -value 'AcroExch.Document.DC'

}