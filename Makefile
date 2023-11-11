daemon: # Start IPFS daemon (on Raspberry Pi OS)
	sudo sysctl -w net.core.rmem_max=2500000
	sudo sysctl -w net.core.wmem_max=2500000
	sudo sysctl -w vm.swappiness=0
	ipfs daemon
console: # console setup for Raspberry Pi OS
	sudo dpkg-reconfigure console-setup
connectme: # create connect commands to self
	ipfs id | jq '.Addresses[] | .' | ruby -ne 'puts "ipfs swarm connect #{$$_}" unless /(127.0.0.1|::1)/.match($$_)'
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
helsinki: # optgeo/helsinki-laser 7.50GB
	ipfs pin add --progress QmXYBL9eeeB3VXc5sFhU3AySbJQevD29Nfu4ycd4RZsfA7
honolulu: # optgeo/honolulu-laser 50.35GB
	ipfs pin add --progress QmY4qPUUJ592cqL1kJLS9Fv4QqrND9nLKCvd5J4qm489Wz
platoon: sapporo iwaki utsunomiya moroyama chiyoda chuo minato shinjuku koto shinagawa \
ota shibuya toshima yokohama niigata matsumoto numazu-a numazu-b naha # optgeo/platoon
	ipfs pin add --progress QmTUrkw3j7PPyizAbjZPxT6SCWf37fmvDYPbpfZ4t99sAn
sapporo: 
	ipfs pin add --progress QmUhu8CX1U7mkQDoFMb4pt2ZAXJpwJhXiahtyxV2kftmqz
iwaki:
	ipfs pin add --progress QmNpsj2GuK6N2yuh8G9Q7DkfGLUFAndnYY7exPVZwPyyaq
utsunomiya:
	ipfs pin add --progress QmQDbmU11qDLik8gixmUokLsCcER74HHWCQtLnaafuttN6
moroyama:
	ipfs pin add --progress QmYDEMzckbrWSzCHWGAM2icrZhtHQp9mQkZCuvHQ1EzRjn
chiyoda:
	ipfs pin add --progress QmRDCc2nxZjtwxQjWB85KdHDctsojiB6pYbmR8PfSXVjJH
chuo:
	ipfs pin add --progress QmUcFnzK2XtEnd5dpRdypemUCctWycn6Afxa526NQDFH5d
minato:
	ipfs pin add --progress QmSr9Xu73TokC7RY6WrY9MAfhgNScz99JgZpPAKG6jN8BH
shinjuku:
	ipfs pin add --progress QmfR45fxt3xE6hUBB7wm32iBaHAEjtbYBCxtVSb8fnhics
koto:
	ipfs pin add --progress QmfUpGbMaTNA1jE8jDuFNVjRipzPknrn6ziugDzrDdBfwz
shinagawa:
	ipfs pin add --progress QmczdLdfKRXM4zXyvL4UB8QLFrAexkdQdiRw9nyDHxQpEx
ota:
	ipfs pin add --progress QmbtE3mBUPzdkrSLPQJp3kXtCmJE8YgCGy6cL6sq1heF68
shibuya:
	ipfs pin add --progress QmWK1h24FDmxfvJoB7WY7VVzu5yYB85vHXz2HW9edq5MAc
toshima:
	ipfs pin add --progress QmTMZwC7uZX7myNmj5tR1TVHSmFWaMB376wWLSotr2LcDA
yokohama:
	ipfs pin add --progress QmZG3Pbjs9PFEvfP7YXggBrf4j52yT1ZpnE9GtZhbyqJPV
niigata:
	ipfs pin add --progress QmZMJXMUhL1xYhtXXm6rkH124C2YLDrJwsrNtzdiUF6Axw
matsumoto:
	ipfs pin add --progress QmXWTHRDP45FxkscH593pRS8NVYctEHJW7nLA2XoZAmugX
numazu-a:
	ipfs pin add --progress QmYQEaQSbiwaZaePfR3NJ5diWZwWFs6YaB3NzPft6jY37G
numazu-b:
	ipfs pin add --progress QmVVT4K6SGQxguxC3vy9FCdkSHMyAAHzSfwCduReo2bL37
naha:
	ipfs pin add --progress QmZR1zZUFpjyXWKTCHyoHxWHaDbt8bUNW1rP1ygo1ACLmU
iwaki11: # 616.94MB
	ipfs pin add --progress QmX7ADs7BcBDTNz6eWg8Z1RT6WyoUxQ2NtgWcZWnm75S2i 
