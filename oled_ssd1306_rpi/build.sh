

PATH="$(pwd)/raspberrypi_tools/arm-bcm2708/arm-linux-gnueabihf/bin:$PATH" cargo build --release --target arm-unknown-linux-gnueabihf



if [ $# -eq 1 ]
then
    SEND="scp target/arm-unknown-linux-gnueabihf/release/oled_ssd1306_rpi $PIUSR@$IPADD:"

    if  [ $1 == "send" ]
    then
        $SEND
    fi

    if  [ $1 == "run" ]
    then
        $SEND && ssh $PIUSR@$IPADD "./oled_ssd1306_rpi"
    fi

fi
