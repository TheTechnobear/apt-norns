# apt-norn

this repo contains debian packages for things I release for the norns :) 


# installation

on the norns, simply type

```
sudo curl https://thetechnobear.github.io/apt-norns/install.sh | sh
```


# updating packages
copy debs to the repo then run
```
dpkg-scanpackages . /dev/null |gzip > Packages.gz
```

then sync the repo :) 
