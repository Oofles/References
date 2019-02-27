### Windows Core Commands

Show hidden files and directories:
- `dir /ah`

Show Alternate Data Streams:
- `dir /r`

Make a file hidden
- `attrib [file] +h`


Active Connections:
- `netstat -ano`
- a = listening ports
- n = display numberic port numbers and IP addresses instead of names
- o = displays process ID
- e = network statistics
- r = routing table

Create an alternate data stream file:
- `type [hideme.txt] > [logo.png:ads.txt]`

Add user, and prompt for password:
- `net user [user] * /add`

Disable user account:
- `net user [user] /active:no`

Add user to the Administrators group:
- `net localgroup administrators [user] /add`

Run as specific user (Does not bypass UAC)
- `runas /user:[user] secpol.msc`

Kill process with specific PID:
- `taskkill /fi "PID eq ##"`

Schedule Tasks:
- `schtasks`


### Run Commands
```
lusrmgr.msc
powershell OR powershell_ise
regedit
services.msc
```


### Windows Registry
Common Registry Value Types
```
REG_SZ - String
REG_MULTI_SZ - Multiple Strings
REG_DWORD - A number between 0 and 4,294,967,295
REG_BINARY - Binary Data
```

Look at the registry key used to execute software on boot:
- `reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /s`


### WMIC
Create a process
- `wmic process call create [process]`

Remote WMIC Commands:
- `wmic /node:[IP OR Servername]`
