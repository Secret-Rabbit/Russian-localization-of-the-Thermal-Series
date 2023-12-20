$modname = "test"
$instancespath = "D:\Minecraft\PrismLauncher\instances\Thermal 1.20.1\.minecraft"
$fullfilepath = $instancespath + "\mods\" + $modname + ".jar"
$fullfilepathzip = $instancespath + "\mods\" + $modname + ".zip"
if (Test-Path $fullfilepath) {
	Write-Host "File found!" -ForegroundColor Green
	Rename-Item $fullfilepath $fullfilepathzip
	Compress-Archive -Path .\data -DestinationPath $fullfilepathzip  -Update
	Rename-Item $fullfilepathzip $fullfilepath
}
else {
	Write-Host "File not found!" -ForegroundColor Red
}