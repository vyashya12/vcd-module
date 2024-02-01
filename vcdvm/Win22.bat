setlocal enabledelayedexpansion

:: Define disk number and partition number
set DISK_NUMBER=0
set PARTITION_NUMBER=3

:: Extend the specified partition to maximum size
echo select disk %DISK_NUMBER% > "%TEMP%\diskpart_script.txt"
echo select partition %PARTITION_NUMBER% >> "%TEMP%\diskpart_script.txt"
echo extend >> "%TEMP%\diskpart_script.txt"
diskpart /s "%TEMP%\diskpart_script.txt"

:: Cleanup temporary files
del "%TEMP%\diskpart_script.txt"

:: Refresh Disk Management to reflect changes
echo Rescan | diskmgmt.msc

endlocal
