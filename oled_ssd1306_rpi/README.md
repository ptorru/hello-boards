# Oled SSD1306 on Raspberry Pi
Some notes on using a Seamuing 128x64 OLED display for the first time in a Raspberry Pi Zero.

Uses the [SSD1306 crate](https://crates.io/crates/ssd1306) from Jamwaffles, see their [GitHub repo](https://github.com/jamwaffles/ssd1306).

I started this before finding [fmckeogh's repo](https://github.com/fmckeogh/ssd1306-raspi-examples). Full credits to they as they show how to use SSD1306 the correct I2C library for the Raspberry Pi (Zero).

Their example has fallen behind but I have contributed to bring it up to speed with version 0.7.0.

My example is pretty much the same but with a couple of extra notes and scripts.

We are assuming you have the i2c peripheral active in your raspberry pi. If using Raspbian search for how to use the raspi-config command.

# Compilation
Compiling on the Zero takes a bit, so that's why I have set up a cross-compilation environment. Cross-compile means we compile the code in our local machine but we execute it in the Raspberry Pi.

## Requirements
For the cross compilation we need to have the toolchain for the Raspberry Pi Zero available:

```bash
# Add the ARM target to the Rust environment.

# Download the tool chain from the Raspberry Pi tool repository.
# Takes about 8 mins.
git clone git@github.com:raspberrypi/tools.git raspberrypi_tools
```

## Compiling
After installing the requirements we are ready to compile/copy to the pi via:
```
export IPADD=192.168.1.182
export PIUSR=pi

# Options are:
#   * No arguments: build only
#   * clean: clean then build, nothing else
#   * send: builds and sends binary
#   * run: builds, sends, and runs binary
source build.sh run
```

## Using clean

I have added the clean target on the build script because I have found that cargo will not recompile/relink your design after a tool-chain change. You may get confused and think you are compiling with a different toolchain and you are not! (It did happen to me! :-( )
