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
