# Port Scanner
A simple and efficient Bash script to check open ports on a given IP address or domain. The script scans all ports (1 to 65535) to identify which ones are open. It can be customized to scan specific ports or the default list of common ports. Ideal for quick network diagnostics or security testing.

## Features:
- Scans all ports (1 to 65535) by default
- Option to specify a custom list of ports
- Color-coded output for easy reading
- Fast execution using parallel checks
  
## Usage:
```bash
./port_scanner.sh <ip-address>
```
## Example:
```bash
./port_scanner.sh 192.168.1.1
```

## Requirements:
- Bash shell
- Timeout command for checking port status
