#/bin/bash

# install technobear repo
echo "deb [trusted=yes] https://thetechnobear.github.io/apt-norns/ ./" | sudo tee -a  /etc/apt/sources.list.d/technobear.list

if grep -q stretch /etc/apt/sources.list  
then 
	#update to ensure we get up to date dirmngr
	sudo apt update
	#need dirmngr for keys
	sudo apt-get install -y dirmngr
	#keys for authentication
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E0B11894F66AEC98
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7638D0442B90D010
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8B48AD6246925553
	#add stretch-backport source
	echo 'deb http://httpredir.debian.org/debian stretch-backports main contrib non-free' | sudo tee -a /etc/apt/sources.list.d/debian-backports.list
fi

# update available packages
sudo apt update

# if stetch manually install puredata from backports
if grep -q stretch /etc/apt/sources.list  
then
	sudo apt-get -t stretch-backports install -y puredata
fi

sudo apt install -y orac mec sidekick

