V?=
S?=openwrt
T?=latest
IMAGE?=openwrt-rootfs

ifeq "${S}" "lede"
	IMAGE="lede-rootfs"
endif

.SILENT:
default:
	VERSION=${V} SOURCE=${S} bash build.sh

network:
	docker network create --subnet=10.0.0.0/24 --gateway=10.0.0.1 openwrt_network

up:
	docker run 	--privileged \
		--name ${IMAGE}-${T} \
		--network openwrt_network \
		--hostname ${S} \
		--sysctl net.netfilter.nf_conntrack_acct=1 \
		--sysctl net.ipv6.conf.all.disable_ipv6=0 \
		--sysctl net.ipv6.conf.all.forwarding=1 \
		--sysctl net.ipv4.conf.all.forwarding=1 \
		-p 8000:80 \
		-v ${PWD}:/data \
		-v /var/run/docker.sock:/docker.sock \
		-d --rm ${IMAGE}:${T}

bash:
	docker exec -it ${IMAGE}-${T} /bin/bash --login

clean:
	docker stop ${IMAGE}-${T}


