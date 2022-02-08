C?=openwrt-rootfs
S?=openwrt
V?=

.SILENT:
default:
	VERSION=${V} SOURCE=${S} bash build.sh

network:
	docker network create -d macvlan --subnet=192.168.50.0/24 --gateway=192.168.50.1 -o parent=en0 macvlan

bash:
	docker run --name openwrt \
		--network macvlan \
		--hostname openwrt \
		--privileged \
		-d --rm ${C} && \
	docker exec -it openwrt /bin/bash --login

stop:
	docker stop openwrt

