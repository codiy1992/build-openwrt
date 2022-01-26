C?=openwrt
S?=/bin/bash

.SILENT:
default:
	docker-compose run --rm ${C} ${S} --login

build:
	docker-compose build ${C}

logs:
	docker-compose logs -f ${C}

