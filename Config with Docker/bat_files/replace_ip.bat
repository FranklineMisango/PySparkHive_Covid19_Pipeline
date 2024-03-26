@echo off
set /p id="Enter Public IPv4 DNS: "
echo %id%
cd C:\Users\G5\OneDrive\Desktop\bat_files
powershell -Command "(gc C:\Users\momo1\OneDrive\Desktop\bat_files\copy_bat\copy.bat) -replace 'REPLACE_HERE', '%id%' | Out-File -encoding ASCII copy.bat
powershell -Command "(gc C:\Users\momo1\OneDrive\Desktop\bat_files\copy_bat\ec2connect.bat) -replace 'REPLACE_HERE', '%id%' | Out-File -encoding ASCII ec2connect.bat
powershell -Command "(gc C:\Users\momo1\OneDrive\Desktop\bat_files\copy_bat\portforwarding.bat) -replace 'REPLACE_HERE', '%id%' | Out-File -encoding ASCII portforwarding.bat
