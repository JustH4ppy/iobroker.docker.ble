# iobroker.docker.ble
Dockerfile for official ioBroker Docker image from buanet including everything to use the ble adapter.

This Dockerfile pulls the latest V9 from buanets iobroker image.
Afterwards it installs:
bluetooth bluez libbluetooth-dev libudev-dev libcap2-bin
and runs the command
sudo setcap cap_net_raw+eip $(eval readlink -f `which node`)
as described in https://github.com/AlCalzone/ioBroker.ble

You can run this dockerfile locally by downloading it or via Portainer by selecting Images -> Build a new image -> URL -> put in as URL:
https://github.com/JustH4ppy/iobroker.docker.ble.git
Dockerfile Path you leave at "Dockerfile" as default.

Container needs to run in Runtime "Privileged mode".
