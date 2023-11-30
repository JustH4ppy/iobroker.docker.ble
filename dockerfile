FROM buanet/iobroker:latest-v9

RUN apt-get install bluetooth bluez libbluetooth-dev libudev-dev libcap2-bin
CMD sudo setcap cap_net_raw+eip $(eval readlink -f `which node`)
