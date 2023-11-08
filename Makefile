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
ada: # amx-project/ada
	ipfs pin add --progress QmSq4BdQEC3GmvpJ6MXWujEog72f6d7FwXYqhh7pN9M3Yp
helsinki: # optgeo/helsinki-laser
	ipfs pin add --progress QmXYBL9eeeB3VXc5sFhU3AySbJQevD29Nfu4ycd4RZsfA7
honolulu: # optgeo/honolulu-laser 50.35GB
	ipfs pin add --progress QmY4qPUUJ592cqL1kJLS9Fv4QqrND9nLKCvd5J4qm489Wz
platoon: sapporo iwaki utsunomiya moroyama chiyoda chuo minato shinjuku koto shinagawa \
ota shibuya toshima yokohama niigata matsumoto numazu-a numazu-b naha # optgeo/platoon
	ipfs pin add --progress QmTUrkw3j7PPyizAbjZPxT6SCWf37fmvDYPbpfZ4t99sAn
sapporo: 
	ipfs pin add --progress QmUhu8CX1U7mkQDoFMb4pt2ZAXJpwJhXiahtyxV2kftmqz
