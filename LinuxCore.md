### LINUX Core Commands
`df`
Report disc usage

`file`
Identify the file type

`lsof`
Display a list of open files

`uniq`
Remove duplicate lines from a sorted file or sorted STDIN

`stat`
View detailed information about a file

`ln [file] [link]`
Symbolic link

`groupadd [name]`
Create new group

`gpasswd -a [user] [group]`
Add user to a group


### Runlevels
0: System Halt
1: Single-User Mode (no GUI or services)
2: Multi-User Mode (no GUI or networking)
3: Multi-User Mode (no GUI)
4: Not used, user definable
5: Multi-User Mode (GUI)
6: Reboot

### Permissions
drwxrwxrwx
[d] = Directory
[-] = file (on first character)
rwx: user, group, everyone else

### Installing Software from Source
`./configure && make && make install`

