### Windows Core Commands

`dir /ah`
Show hidden files and directories

`dir /r`
Show Alternate Data Streams

`attrib [file] +h`
Make a file hidden

`netstat -ano`
Active Connections
a = listening ports
n = display numberic port numbers and IP addresses instead of names
o = displays process ID
e = network statistics
r = routing table

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

### Run Commands
`LUSRMGR.MSC`
Local user management

`powershell OR powershell_ise`
Launch PowerShell or the ISE

