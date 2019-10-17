# apt-norn

this repo contains debian packages for things I release for the norns :) 



# Norns users 

## Installation

for intial installation, log on to the norns with ssh we@norns.local (password sleep) 
then type (or copy n' paste) 

```
sudo curl https://thetechnobear.github.io/apt-norns/install.sh | sh
```

thats it, done :) 

you only need to do this for the initial installation for upgrades you can use sidekick


## Updating packages

In sidekick, select the "Check for Updates" option 

if for some reason, you wish to do manually, you can use
```
sudo apt-get install mec sidekick orac
```



## Developer ONLY

## updating packages in this repo

Remember to update the version number of each packages in the deb control file.

a) copy debs to the cloned repo

b) run:
```
dpkg-scanpackages . /dev/null |gzip > Packages.gz
```
c) add, commit and push repo

