Write-Host Instalando Versi�n de FIVEM de Windows...
wget https://eva-projects.com/index.php/s/EfqzmiwegbljzP4/download -outfile windows-install.zip
Expand-Archive windows-install.zip -Force
copy-Item -Path .\windows-install\Windows\* -Destination . -Force
rm windows-install.zip
rm -r windows-install
Write-Host Instalaci�n finalizada con �xito