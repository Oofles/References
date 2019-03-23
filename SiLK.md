Display all records
- `rwfilter --type=all --proto=0-255 --pass=stdout | rwcut`

Total amount of bytes transferred by protocol (top 10)
- `rwfilter --type=all --proto=0-255 --pass=stdout | rwstats --top --count=10 --fields=proto --value=bytes`

Top 10 sip, dip pairs for valid conversations (top 10)
- `rwfilter --type=all --proto=0-255 --packets=4, --pass=stdout | rwstats --top --count=10 --fields=sip,dip --value=bytes`

Top 10 outbound destination country codes by records
- `rwfilter --type=out,outweb --proto=0-255 --pass=stdout | rwstats --top --count=10 --fields=dcc`

Identify SSH Servers
- `rwfilter --type=out --proto=6 --protocol=6 --packets=4 --ack-flag=1 --sport=22 --pass=stdout | rwcut fields=sip`

Identify Web Servers
- `rwfilter --type=out --proto=6 --protocol=6 --packets=4 --ack-flag=1 --sport=80,443,8080 --pass=stdout | rwcut fields=sip`
