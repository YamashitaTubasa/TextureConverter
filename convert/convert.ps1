$files = Get-Item * -Include *.jpg, *.png

foreach($f in $files){
    Start-Process -FilePath TextureConverter.exe -ArgumentList "$f -ml 4" -Wait
}
pause