# Script configuration
$url = "https://eva-projects.com/index.php/s/AFAKxZCRrKCErfC/download"
$output = "resources-install"
$zipFolder = ".\$($output)\Resources\*"
$directoy = ".\resources"

# Script engage
$ErrorActionPreference = "Stop"
$script_start_time = Get-Date
Write-Host "Instalando Recursos pesados $($script_start_time)"

#Download
$wc = New-Object System.Net.WebClient  
$start_time = Get-Date
Write-Output "Descargando $($start_time), tenga paciencia"
$wc.DownloadFile($url, "$($output).zip")
$end_time = Get-Date
Write-Output "Descarga completada $($end_time)"

#Un-compressing
$start_time = Get-Date
Write-Output "Descomprimiendo $($start_time), tenga paciencia"
Expand-Archive "$($output).zip" -Force
$end_time = Get-Date
Write-Output "Descompresión completada $($end_time)"

#File managing
$start_time = Get-Date
Write-Output "Organizando ficheros $($start_time)"
copy-Item -Path $zipFolder -Destination $directoy -Force
Remove-Item "$($output).zip"
Remove-Item -r $output
$end_time = Get-Date

# Script ending
$script_end_time = Get-Date
Write-Output "Ficheros listos $($end_time)"
Write-Host "Instalación de recursos pesados finalizada con éxito $($script_end_time)"