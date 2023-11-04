daemon: # Start IPFS daemon (on Raspberry Pi OS)
	sudo sysctl -w net.core.rmem_max=2500000
	sudo sysctl -w net.core.wmem_max=2500000
	sudo sysctl -w vm.swappiness=0
	ipfs daemon
console: # console setup for Raspberry Pi OS
	sudo dpkg-reconfigure console-setup
connectme: # create connect commands to self
	ipfs id | jq '.Addresses.[] | .' | ruby -ne 'puts "ipfs swarm connect #{$$_}" unless /(127.0.0.1|::1)/.match($$_)'
smb: # Smart Maps Bazaar gateway connection
	watch -n 180 "curl --silent https://unopengis.github.io/smb/connect.sh | sh"
bw: # bandwidth use monitoring
	ruby bw.rb
a: # amx-project/a
	ipfs pin add --progress QmTZHWMAnRC5zNiNvdVuTDacThKkj4jKbwsZtKQkAC4R69
f: # amx-project/f
	ipfs pin add --progress QmR5sf9fzx26VmJKQYMgxMfEraV8kKvh3XGdoGUeMRS6Jt
ngs: # optgeo/ngs
	ipfs pin add --progress QmdAr2FWQKCVv7CAcLRuTBt1583Qi7DA4gaA92g3ujeL1v
c2: # optgeo/c2
	ipfs pin add --progress QmTU8chHFkydjc5XZoNVT3TQ1xEHP5zpJ4wzYktrPd1aWD
pmb: # optgeo/pmb
	ipfs pin add --progress QmdPqXGTh1hLdkkPqjLdaJFG1rA8c3UEtUbx1e95pLvtTG
