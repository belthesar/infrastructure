# MAGFest IT Infrastructure

## Creating a salt-master control server

Creating a salt-master control server should only need to be done rarely—ideally just once. The salt-master control server is the central piece of MAGFest's IT infrastructure used to provision and manage all of our other servers.

1. Create a new droplet on https://digitalocean.com
  * Ubuntu 16.04.4 x64
  * **Optional**: Add a block storage volume (this will need to be mounted on `/var/data`)
  * Select "Private Networking" and "Monitoring"
  * Add the following SSH Keys: "Saltmaster", "Rob Ruana", and "DomMCP"
2. By default the salt-minions will attempt to connect to `saltmaster.magfest.net`, so the DNS entry for `saltmaster.magfest.net` on https://dnsmadeeasy.com should be updated to point to the new droplet's **Private IP**
3. SSH to the new server (_and follow Digital Ocean's intructions for configuring your block storage volume, if applicable_)
4. As root/sudo run:
```
curl -L https://github.com/magfest/infrastructure/raw/master/bootstrap.sh | sh
```
5. Enter your GitHub credentials when prompted. If you skip this, or do not have access to https://github.com/magfest/infrastructure-secret, the new salt-master server will not be able to automatically provision new Digital Ocean servers
