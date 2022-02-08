C?=openwrt-rootfs
S?=openwrt
V?=

.SILENT:
default:
	VERSION=${V} SOURCE=${S} bash build.sh

network:
	docker network create --subnet=10.0.0.0/24 --gateway=10.0.0.1 openwrt_network

bash:
	docker run --name openwrt \
		--network openwrt_network \
		--hostname openwrt \
		--privileged \
		--sysctl net.netfilter.nf_conntrack_acct=1 \
		--sysctl net.ipv6.conf.all.disable_ipv6=0 \
		--sysctl net.ipv6.conf.all.forwarding=1 \
		--sysctl net.ipv4.conf.all.forwarding=1 \
		-d --rm ${C} && \
	docker exec -it openwrt /bin/bash --login

stop:
	docker stop openwrt

