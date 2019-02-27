### Windows Core Commands

`dir /ah`
Show hidden files and directories

`dir /r`
Show Alternate Data Streams

`attrib [file] +h`
Make a file hidden

`netstat -ano`
Active Connections
- a = listening ports
- n = display numberic port numbers and IP addresses instead of names
- o = displays process ID
- e = network statistics
- r = routing table

`type [hideme.txt] > [logo.png:ads.txt]`
Create an alternate data stream file

`net user [user] * /add`
Add user, and prompt for password

`net user [user] /active:no`
Disable user account

`net localgroup administrators [user] /add`
Add user to the Administrators group

`runas /user:[user] secpol.msc`
Run as specific user (Does not bypass UAC)

`taskkill /fi "PID eq ##"`
Kill process with specific PID

`schtasks`
Schedule Tasks


### Run Commands
`lusrmgr.msc`
Local user management

`powershell OR powershell_ise`
Launch PowerShell or the ISE

`regedit`
GUI Registry editor

`services.msc`
Windows Services


### Windows Registry
Common Registry Value Types
```
REG_SZ - String
REG_MULTI_SZ - Multiple Strings
REG_DWORD - A number between 0 and 4,294,967,295
REG_BINARY - Binary Data
```

`reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /s`
Look at the registry key used to execute software on boot


### WMIC
`wmic process call create [process]`
Create a process

`wmic /node:[IP OR Servername]`
Remote WMIC Commands
