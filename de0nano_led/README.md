# DE0-Nano

The [DE0-Nano board](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=593) form TerAsic features a small Cyclone-IV FPGA.

## The Design

The simplest hello-world type of project for an FPGA is to program it with a binary counter.

For simplicity I took a VHDL up-counter design example off the [Asic-Worl Website](www.asic-world.com/code/vhdl_examples/up_counter.vhd), kudos to them! You can see their web article [here](http://www.asic-world.com/examples/vhdl/simple_counter.html#8-Bit_Simple_Up_Counter).

I have tweaked the reset polarity to match those of the buttons on the board.

I am using all the LEDs to show the full extent of the output ports, so after programming it you should see all your LEDs glowing with different intensities.

## Operating System notes

I did the bring up on Quartus 21.0 for Linux (20.1.1 Build 720 11/11/2020 SJ Lite Edition). For MAC users, I created a virtual machine with Xubuntu 21.04 (not included here), this worked just fine, including programming the board.

For instructions on how to allow Xubuntu/Ubuntu/Linux to correctly handle the embedded USB-Blaster [JTAG) in the board see either of the following three resources:

* [Atom Miner][https://blog.atomminer.com/fighting-altera-usb-blaster-on-ubuntu/)
* [Rocket Boards][https://rocketboards.org/foswiki/Documentation/UsingUSBBlasterUnderLinux)
* [Intel FPGA][https://www.intel.com/content/www/us/en/programmable/support/support-resources/download/drivers/dri-usb_b-lnx.html)

## Steps
In essence you need to follow these steps to go from nothing to having a project programmed into the board:

* Download/Install Quartus.
    * For MAC/OSX users this step will have to come second to creating a VM with either Linux or Windoww. I personally recommend using XUbuntu for this purpose.
* Checkout the project files into your development environment.
* Open the project in Quartus.
* Compile the project [ctrl+L)
* Use the Signal-Tap analyzer application to program the generated .sof into the board.
    * Quartus does provide a JTAG programmer application, but Signal Tap is actually the most convenient way, just a couple of clicks away.

## File Structure

* top.vhd: This is the actual code of the design, represents the top level for the whole project.
* top.qsf: Stands for Quartus-Settings-File, sets up different parameters for the Quartus' project.
    * Here is the place I set the output voltage for the LED pins to be 2.5 volts.
* de0nano_led.qpf: The most important file from the point-of-view of Quartus, this defines the project.
* de0nano_led.tcl: Can be used to set the pins assignments programmatically.
* top.sdc: This is your Synopsys-Design-Contraints file, typically use to define your timing constraints. I have tried to do the simplest possible.
    * [Centennial Software Solutions](https://www.centennialsoftwaresolutions.com/post/sdc-design-constraint-examples-and-explanations) has a detailed explanation of sdc files.

