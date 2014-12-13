# First demo
Create a `Vagrantfile` for a Windows 7 box.

```cmd
vagrant init windows_7
dir
atom .
vagrant up --provider=virtualbox
vagrant suspend
vagrant resume
vagrant destroy -f
```

Public available boxes instead of `windows_7` could be found at [Vagrant Cloud](https://vagrantcloud.com/boxes/search)
