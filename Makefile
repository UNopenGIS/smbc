IPFS_PIN_CMD=ipfs pin add --progress --recursive

prepare: # Prepare on Raspberry Pi OS
	if grep -q 'rpi' /proc/version; then \
		sudo sysctl -w net.core.rmem_max=2500000; \
		sudo sysctl -w net.core.wmem_max=2500000; \
		sudo sysctl -w vm.swappiness=0; \
	else \
		echo "This command should be run on Raspberry Pi OS."; \
	fi
daemon: # Start IPFS daemon (86400 sec. is 1 day.)
	while timeout --preserve-status -s INT 86400 ipfs daemon; do :; done 
console: # console setup for Raspberry Pi OS
	sudo dpkg-reconfigure console-setup
connectme: # create ipfs swarm connect commands to self
	ipfs id | jq '.Addresses[] | .' | ruby -ne 'puts "ipfs swarm connect #{$$_}" unless /(127.0.0.1|::1)/.match($$_)'
smb: # Smart Maps Bazaar gateway connection
	watch -n 180 "curl --silent https://unopengis.github.io/smb/connect.sh | sh"
bw: # bandwidth use monitoring
	ruby bw.rb
a: # amx-project/a
	$(IPFS_PIN_CMD) QmTZHWMAnRC5zNiNvdVuTDacThKkj4jKbwsZtKQkAC4R69
f: # amx-project/f
	$(IPFS_PIN_CMD) QmR5sf9fzx26VmJKQYMgxMfEraV8kKvh3XGdoGUeMRS6Jt
ngs: # optgeo/ngs
	$(IPFS_PIN_CMD) QmdAr2FWQKCVv7CAcLRuTBt1583Qi7DA4gaA92g3ujeL1v
c2: # optgeo/c2
	$(IPFS_PIN_CMD) QmTU8chHFkydjc5XZoNVT3TQ1xEHP5zpJ4wzYktrPd1aWD
c2k: # optogeo/c2 for ngs
	$(IPFS_PIN_CMD) QmPhPaV3UqjQFY5JAaRy4fQJY2nc5XEbgbSJLQ2A95udWi
pmb: # optgeo/pmb
	$(IPFS_PIN_CMD) QmdPqXGTh1hLdkkPqjLdaJFG1rA8c3UEtUbx1e95pLvtTG
ada: # amx-project/ada
	$(IPFS_PIN_CMD) QmSq4BdQEC3GmvpJ6MXWujEog72f6d7FwXYqhh7pN9M3Yp
helsinki: # optgeo/helsinki-laser 7.50GB
	$(IPFS_PIN_CMD) QmXYBL9eeeB3VXc5sFhU3AySbJQevD29Nfu4ycd4RZsfA7
honolulu: # optgeo/honolulu-laser 50.35GB
	$(IPFS_PIN_CMD) QmY4qPUUJ592cqL1kJLS9Fv4QqrND9nLKCvd5J4qm489Wz
platoon: sapporo iwaki utsunomiya moroyama chiyoda chuo minato shinjuku koto shinagawa \
ota shibuya toshima yokohama niigata matsumoto numazu-a numazu-b naha # optgeo/platoon
	$(IPFS_PIN_CMD) QmTUrkw3j7PPyizAbjZPxT6SCWf37fmvDYPbpfZ4t99sAn
sapporo: 
	$(IPFS_PIN_CMD) QmUhu8CX1U7mkQDoFMb4pt2ZAXJpwJhXiahtyxV2kftmqz
iwaki:
	$(IPFS_PIN_CMD) QmNpsj2GuK6N2yuh8G9Q7DkfGLUFAndnYY7exPVZwPyyaq
utsunomiya:
	$(IPFS_PIN_CMD) QmQDbmU11qDLik8gixmUokLsCcER74HHWCQtLnaafuttN6
moroyama:
	$(IPFS_PIN_CMD) QmYDEMzckbrWSzCHWGAM2icrZhtHQp9mQkZCuvHQ1EzRjn
chiyoda:
	$(IPFS_PIN_CMD) QmRDCc2nxZjtwxQjWB85KdHDctsojiB6pYbmR8PfSXVjJH
chuo:
	$(IPFS_PIN_CMD) QmUcFnzK2XtEnd5dpRdypemUCctWycn6Afxa526NQDFH5d
minato:
	$(IPFS_PIN_CMD) QmSr9Xu73TokC7RY6WrY9MAfhgNScz99JgZpPAKG6jN8BH
shinjuku:
	$(IPFS_PIN_CMD) QmfR45fxt3xE6hUBB7wm32iBaHAEjtbYBCxtVSb8fnhics
koto:
	$(IPFS_PIN_CMD) QmfUpGbMaTNA1jE8jDuFNVjRipzPknrn6ziugDzrDdBfwz
shinagawa:
	$(IPFS_PIN_CMD) QmczdLdfKRXM4zXyvL4UB8QLFrAexkdQdiRw9nyDHxQpEx
ota:
	$(IPFS_PIN_CMD) QmbtE3mBUPzdkrSLPQJp3kXtCmJE8YgCGy6cL6sq1heF68
shibuya:
	$(IPFS_PIN_CMD) QmWK1h24FDmxfvJoB7WY7VVzu5yYB85vHXz2HW9edq5MAc
toshima:
	$(IPFS_PIN_CMD) QmTMZwC7uZX7myNmj5tR1TVHSmFWaMB376wWLSotr2LcDA
yokohama:
	$(IPFS_PIN_CMD) QmZG3Pbjs9PFEvfP7YXggBrf4j52yT1ZpnE9GtZhbyqJPV
niigata:
	$(IPFS_PIN_CMD) QmZMJXMUhL1xYhtXXm6rkH124C2YLDrJwsrNtzdiUF6Axw
matsumoto:
	$(IPFS_PIN_CMD) QmXWTHRDP45FxkscH593pRS8NVYctEHJW7nLA2XoZAmugX
numazu-a:
	$(IPFS_PIN_CMD) QmYQEaQSbiwaZaePfR3NJ5diWZwWFs6YaB3NzPft6jY37G
numazu-b:
	$(IPFS_PIN_CMD) QmVVT4K6SGQxguxC3vy9FCdkSHMyAAHzSfwCduReo2bL37
naha:
	$(IPFS_PIN_CMD) QmZR1zZUFpjyXWKTCHyoHxWHaDbt8bUNW1rP1ygo1ACLmU
iwaki11: # 616.94MB
	$(IPFS_PIN_CMD) QmX7ADs7BcBDTNz6eWg8Z1RT6WyoUxQ2NtgWcZWnm75S2i 
fi: # amx-project/fi 126MB
	$(IPFS_PIN_CMD) QmVfnLr4vKsP4S4HyHDwa18ctPLa8kKFYgjwHKHV2VcbGt
sf: # amx-project/sf 5.3MB
	$(IPFS_PIN_CMD) QmYsNiPd72agz3s9FdfihZFiRUVUaPYMHqV9FiizyMDgQ9
