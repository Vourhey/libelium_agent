Libelium agent
-------------------------

## Build

```
nix build -f release.nix
```

## Launch

```
source result/setup.bash (zsh)
roslaunch libelium_agent worker.launch device:="/dev/ttyUSB0" sensor:="PH" limit:="4.0" liability:="LIABILITY ADDRESS"
```

Where:

* `device` - device port, default "/dev/ttyUSB0"
* `sensor` - `PH`, `COND`, `WT` or `DO` string. Default `PH`
* `limit` - float number. Default `4.0`
* `liability` - the address of the liability. Must be specified

