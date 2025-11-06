# [Dark98/R36S-Multiboot-testing is my testing repo](https://github.com/Dark98/R36S-Multiboot-testing)

# [Releases are at Dark98.github.io/R36S-Multiboot](https://Dark98.github.io/R36S-Multiboot)

# Gameconsole R36S Multiboot images (and builder)
Shoutout to the [R36S Handheld Wiki](https://handhelds.wiki/R36S_Handheld_Wiki)


## Installation
- Image(s) are big and split into parts for github release.
    - [get all the numbered files from the DL page(7z.001, 7z.002, etc)](https://Dark98.github.io/R36S-Multiboot) and extract it with 7zip or nanaZip.
        - (linux users, i've found p7zip to be unreliable, try the official 7zip or official rar if you have issues.)
        - flahsing from android? let me know if you get that to work, so i can make a guide for others.

- once extracted, youll have another compressed file, `<image>.xz`
    - this file can be flashed without further extraction by Raspberry Pi Imager and BelanaEtcher

## Multiboot Buttons

hold a face button while powering on to boot another OS.

Hold the function button with a face button for sticky boot, that os becomes the new default.

```
#  Button     =   OS

#  Function   =   <Set sticky boot>
#  Start (+)  =   ArkOS
#  Select (-) =   <Empty>

#  Up         =   UnofficialOS
#  Down       =   Rocknix
#  Right      =   AmberELEC
#  Left       =   PAN4ELEC

#  A (east)   =   Andr36oid
#  B (south)  =   <Empty>
#  X (north)  =   LinuX (Armbian Bookworm/Jammy/Noble/Plucky)
#  Y (west)   =   <Empty>

# # # # # # # # # # # # # # # # # # # #
#  _________________________________  #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |_________________________________| #
#                                     #
#        UOS            Armbian       #
#         ▲           Linu(X)         #
#  PAN4 ◄   ► Amber     (Y) (A)ndroid #
#         ▼               (B)         #
#      Rocknix   (Fn)                 #
#         _     Sticky     _          #
#       /   \            /   \        #
#      |     | (-)  (+) |     |       #
#       \ _ /       Ark  \ _ /        #
#                                     #
# # # # # # # # # # # # # # # # # # # #
```


# black screen?
## Panel Chooser info

These images support the original R36S panel, and the 4 new panels, all in one image!

- Hold R1 and a face button (see below) while powering on the device to set panel
- if done correctly, the device will power off, and the next boot should show the logo.
    - if you miss the window and the R36S doesnt automatically power off, let it sit for a bit to setup the EZSTORAGE partition.
        - this can take 5-15 minutes depending on the first boot OS and sdcard speed.
### if you dont know what panel you have
- the image defaults to panel 4, if you've already tried the image and didnt see the logo, its not panel 4.
- start with holding `Up + R1`, the combo for panel 1, and power on the device.
- this boot sets the panel to panel 1, then shuts off the device.
- now, continue holding the combo for panel 1, and power on the device
- if you see a logo, and no lines or weirdness in the image, the panel has been set correctly, next boot you can **hold `R1 and Volume Down`** to make it permanent (and prevent accidental panel changing)
- if you see no logo, or the screen is half lit, has lines, etc, try the next panel combo.

**be aware** you may have inadvertantly interrupted the firstboot process while trying to figure out your panel, unless you are sure you didnt, and sure you never let the handheld boot past the logo, it's safest to reflash your image to avoid issues.

## Hold R1 to set panel, Set panel via the following buttons
```
    # Up        =   New Panel 1
    # Right     =   New Panel 2
    # Down      =   New Panel 3
    # Left      =   New Panel 4
    # A (east)  =   Original Panel


# # # # # # # # # # # # # # # # # # # #
#  _________________________________  #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |_________________________________| #
#                                     #
#         1                           #
#         ▲               (X)         #
#     4 ◄   ► 2         (Y) (A) Orig  #
#         ▼               (B)         #
#         3                           #
#         _                _          #
#       /   \            /   \        #
#      |     |          |     |       #
#       \ _ /            \ _ /        #
#                                     #
# # # # # # # # # # # # # # # # # # # #
```
# Dont like the boot logo color?
## Change it!
## Hold L1, and or L2, to set the logo via the following buttons
```
#     Logo Size:
#     L1+<btn>    = Big Logo
#     L2+<btn>    = Small Logo
#     L1+L2+<btn> = No Logo (just color fill)

#     Color:
#     U         =   White
#     D         =   Black
#     R         =   Orange
#     L         =   Purple
#     X(north)  =   Blue
#     A(east)   =   Red
#     B(south)  =   Yellow
#     Y(west)   =   Green
#     Select    =   Lake Blue
#     Start     =   Alt Red

# # # # # # # # # # # # # # # # # # # #
#  _________________________________  #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |                                 | #
# |_________________________________| #
#                                     #
#       White              Blue       #
#         ▲                (X)        #
# Purple◄   ►Orange Green(Y) (A) Red  #
#         ▼                (B)        #
#       Black             Yellow      #
#        _                  _         #
#      /   \              /   \       #
#     |     |  (-)  (+)  |     |      #
#      \ _ /  Lake  Alt   \ _ /       #
#             Blue  Red               #
# # # # # # # # # # # # # # # # # # # #
```

- next boot you can **hold `L1, L2, and Volume Down`** to make it semi-permanent (and prevent accidental logo changing)

- ps: to change the logo to a custom one, just replace a file in `Logos/<Size>/<Color>.bmp` and optionally the logo.bmp on the root of the boot partition.

# EZSTORAGE breif explanation (wiki/guide planned)

## How... Do Roms?
EZSTORAGE. what it is? what it do? how though?

do not afraid, its EZ.

- just boot the image to whatever OS is default, wait for it to fully boot and get to Emustation
- now, all the rom folders sill be set up. you can fill the device with roms basically as you normally would, with a few exceptions:
    - every OS is a little different and has different rom folders. to account for that, on the EZSTORAGE partition, there are multiple folders that start with an underscore, `_` , these folders contain rom folders that are not common between all OSes.
    - if youre adding roms remotely, ie from a webui, or SAMBA share, you will not see these undescore folders, only the folders compatible with that OS, in their normal structure.
    - folders that start with `00_` are VIRTUAL. for instance, every os has a "music" folder but some are named differently, but 5 copys of the same music is silly and ridiculous, so you can use `00_Music` to add them to all OSes. (Music added remotely, to the OS's music folder also ends up here)
    - i probably missed a common folder or two, let me know if you find more than one folder for the same emulated system, ill look into it eventually
    - scummvm. ports. "homebrew" is probably an issue and will be tested/fixed later if possible.

## SD2
- AmberELEC, PAN4ELEC, Rocknix, UnofficialOS
    - Basically Plug n' Play
    - insert an exfat formatted sdcard, labeled `EZSTORAGE2` (all caps) into device
    - device will immediately reboot and setup `EZSTORAGE2` folders
    - once you see Emustation, SD2 EZSTORAGE is ready to be used / filled

- ArkOS
    - untested atm, dont use, will likely require switching to Roms2 using the tools, like ark usually handles SD2. beta 2 sould have this fixed, if it's broken.


### TODO
- test ota updates per os
- set wifi on all oses from boot partition
- test complex systems, like sucummvm, ports
- ~~SD2 ezrom support. (dont try for now, will prob. 'splode or something? talkin' GIANT fireball, maybe. prolly.)~~ **done, see above**
- probably more

### Notes
- Armbian standalone images are at [R36S-Stuff/R36S-Armbian](https://github.com/R36S-Stuff/R36S-Armbian/releases/latest)
- Image(s) are big and most likely split into parts for github release.
    - [get all the numbered files from the dl page(.001, .002, etc)](https://Dark98.github.io/R36S-Multiboot) and extract it with 7zip or nanaZip.
    - (linux users, i've found p7zip to be unreliable, try the official 7zip or official rar if you have issues.)
    - flahsing from android? let me know if you get that to work, so i can make a guide for others.

### Builder info
- syntax: `./buildimg ark rocknix armbian <name-of-os-folder-NO-SPACES>`
- it builds in WSL
- ~~might need dependencies to be installed (i will do this automatically later)~~
    - should be fine now?
- can build single boot images for testing (or just u-boot with no OS arguments)

## Thanks
- u/\_manster\_ for 
    - maintainig the amazing [R36S Handheld Wiki](https://handhelds.wiki/R36S_Handheld_Wiki)
    - [and for the boot logos](https://www.reddit.com/r/R36S/comments/1gv142z/my_attempt_at_r36s_color_specific_boot_logos/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button) 
- @AeolusUX and @RetroGFX for being friendly, welcoming, and holding good conversation. (and the help/suggestions, obviously)
- Everyone in the R36S Community
- All contributors to all the OSes used
    - ArkOS
    - AmberELEC
    - PAN4ELEC
    - Rocknix
    - UnofficialOS
