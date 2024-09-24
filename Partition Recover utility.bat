@echo off
title Partition Management Utility
echo.
echo This script will help you manage partitions. Use with caution.
echo.

:: Create a temporary file for diskpart commands
echo list disk > diskpart_commands.txt
echo select disk 0 >> diskpart_commands.txt  :: Change "0" to your disk number if needed
echo list partition >> diskpart_commands.txt
echo select partition 1 >> diskpart_commands.txt  :: Change "1" to the partition number you want to activate
echo active >> diskpart_commands.txt  :: Marks the selected partition as active
echo exit >> diskpart_commands.txt

:: Run Diskpart with the created commands
diskpart /s diskpart_commands.txt

:: Clean up temporary files
del diskpart_commands.txt

echo.
echo Partition management completed. Review any messages above.
pause
