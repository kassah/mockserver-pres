.PHONY : default init

define INITMESSAGE
======================================================================

 run make<tab> to see a list of all possible target commands
below echos the description and example usages of all targets
make has TAB COMPLETION so you can type 'make te<tab>' and get make test for example

======================================================================

endef
export INITMESSAGE
default:
	@echo "$$INITMESSAGE"
	@grep 'CMD\|USAGE' Makefile | sed -e 's/"//g; s/@echo//g; /@grep/d; s/USAGE:/    USAGE:/g'
up:
	@echo "CMD: make up"
	@echo "USAGE: brings docker-compose up "
	docker-compose up -d
	sleep 3
	open https://mockserver.lightningdev.com/mockserver/dashboard
reup:
	@echo "CMD: make reup"
	@echo "USAGE: brings up a clean copy."
	docker-compose down -v
	docker-compose up -d
	sleep 3
	open https://mockserver.lightningdev.com/mockserver/dashboard
down:
	@echo "CMD: make down"
	@echo "USAGE: destroys the docker containers and volumes"
	docker-compose down -v
pull:
	@echo "CMD: make pull"
	@echo "USAGE: pulls dependent containers"
	docker-compose pull
	docker pull realguess/jq
ui:
	@echo "CMD: make mockserver-ui"
	@echo "USAGE: Running to open browser to mockserver dashboard"
	open https://mockserver.lightningdev.com/mockserver/dashboard
clear:
	@echo "CMD: make mockserver-clear"
	@echo "USAGE: Clears logs from MockServer (leaves Expectations intact)"
	bash ./mockserver/clearlog.sh
expectations:
	@echo "CMD: make mockserver-expectations"
	@echo "USAGE: Compiles expectations files into MockServer initializerJson.json"
	sh ./mockserver/compileExpectations.sh
cert:
	@echo "CMD: make cert"
	@echo "USAGE: Updates the certificates in PHP to also include MockServer CA"
	bash ./mockserver/updatecert.sh
php:
	@echo "CMD: make php"
	@echo "USAGE: Running to open browser to php app"
	open https://mockserver.lightningdev.com/app/