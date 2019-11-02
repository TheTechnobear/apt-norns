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

a) clone this repo in the normal way
```
git clone https://github.com/TheTechnobear/apt-norns
```

b) update the packages, and copy debs to this repo
note: Remember to update the version number of each packages in the deb control file!

c) update packages file 

```
dpkg-scanpackages . /dev/null |gzip > Packages.gz
```
c) add, commit and push repo

note: if you dont have permission to this repo, the above coudl be done in a forked repo, 
and then a PR sent.

users can then add this as a deb repo with the following address
https://thetechnobear.github.io/apt-norns/

note: this is basically what the install.sh does ;) 
