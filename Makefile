help:
	@echo "Makefile commands:"
	@echo "build"
	@echo "start_server"
	@echo "start_client"
	@echo "stop"


build:
	docker-compose build
	docker run -d --rm --network t_ericsson_default --name redis redis
	docker run -it --rm --network t_ericsson_default --name server t_ericsson_server

start_server:
	docker run -it --rm --network t_ericsson_default --name server t_ericsson_server

start_client:
	docker run -it --rm --network t_ericsson_default --name client t_ericsson_client

stop:
	docker stop redis 2>/dev/null; true
	docker stop server 2>/dev/null; true
	docker stop client 2>/dev/null; true