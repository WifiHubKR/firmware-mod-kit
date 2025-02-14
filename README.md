# Disclaimer #
---
Automatically exported from code.google.com/p/firmware-mod-kit

Firmware Modification Kit

This kit is a collection of scripts and utilities to extract and rebuild linux based firmware images.

    Extract a firmware image into its component parts
    User makes desired modification to the firmware's file system or web UI (webif)
    Rebuild firmware
    Flash modified firmware onto device and brick it (ha) 

WARNING: You are going to brick your device by using this kit (maybe not, but better to say you will). Brick means to effectively turn into a non-functional 'brick'. Recovery is sometimes possible without hardware modifications. Sometimes it requires hardware mods (e.g. serial or JTAG headers soldered onto the PCB). Sometimes it just isn't feasible, or would cost more in total recovery cost than the unit is worth.

Do NOT use this kit if you are not prepared to have your router bricked!

EULA: By downloading or using this kit, you agree to accept liability for consequences of use or misuse of the Firmware Mod Kit. These include the bricking of your device. The authors of this kit have duly warned you. This kit is only for embedded systems software engineers.


# Firmware Mod Kit #
---
This is modified version of rampageX/firmware-mod-kit for Ubuntu 24.04.1 LTS version. 

If you need Manual of firmware-mod-kit, visit [here](https://github.com/rampageX/firmware-mod-kit)

# Updates # 
---
- Update binwalk version 2.1.1 to 2.3.4 because of imp module error
  
> Before update version of binwalk, there is a problem that can't run firmware-mod-kit because of imp module.
> 
> 'imp' module is not supported in Python 3.12, but Ubuntu 24.04.1 lts version only support Python 3.12

- Add config.sh script file
  
> This file is for setting environment for using firmware-mod-kit.
>
> install prerequisites and binwalk python module automatically 

# Installaion #
---
You should install firmware-mod-kit as the 'root' user

1. clone this repository
   
` $ git clone https://github.com/WifiHubKR/firmware-mod-kit.git `

2. run config.sh for setting new binwalk version
```
$ cd firmware-mod-kit
$ ./config.sh
```

