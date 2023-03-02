#! /bin/sh
case `hostname` in
    ticktock*)
        GPIO_REG=0xf0700000
        UART=/dev/ttyS4
        ;;
    vcu118*)
        GPIO_REG=0xfea00000
        UART=/dev/ttyS1
        ;;
    *)
        echo "Unknown host `hostname`" 1>%2
        exit 1
        ;;
esac

sudo devmem2 $GPIO_REG w 0x80000000
sudo devmem2 $GPIO_REG w 0x00000000
(
    sleep 0.1
    echo -n " "
    sleep 0.1
    echo -n "u"
    sleep 0.1
    cat
    sleep 0.1
    echo -n "e"
) >$UART
