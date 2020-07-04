all: build_docker

Dockerfile: Dockerfile.template

	python3 gen_dockerfile.py $< $@

build_docker: Dockerfile
	docker build -t debian-develop .

install: build_docker
	bash install.sh >> ~/.bashrc

clean:
	rm Dockerfile

