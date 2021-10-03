# Oled SSD1306 on Raspberry Pi
Some notes on using a Seamuing 128x64 OLED display for the first time in a Raspberry Pi Zero.

Uses the SSD1306 crate.

# Compiling
Compiling on the Zero takes a bit, so that's why I have set up a cross-compilation environment. Cross-compile means we compile the code in our local machine but we execute it in the Raspberry Pi.

## Requirements
For the cross compilation we need to have the toolchain for the Raspberry Pi Zero available:

```bash
# Add the ARM target to the Rust environment.

# Download the tool chain from the Raspberry Pi tool repository.
# Takes about 8 mins.
git clone git@github.com:raspberrypi/tools.git raspberrypi_tools

```

After installing the requirements we are ready to compile/copy to the pi via:
```
export IPADD=192.168.1.182
export PIUSR=pi

# Options are:
#   * No arguments: build only
#   * send: builds and sends binary
#   * run: builds, sends, and runs binary
source build.sh run
```
