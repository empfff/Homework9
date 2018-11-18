all: makedirpy makedirout Dockerfile builddock hw9_1.txt hw9_2.txt hw9_3.txt hw9_4.txt hw9_5.txt filenames

.PHONY: makedirpy
makedirpy:
	mkdir py36

.PHONY: makedirout
makedirout:
	mkdir output

Dockerfile:
	printf "FROM python:3.6\nRUN apt-get update\nRUN pip install pandas\nRUN pip install numpy\n" > py36/Dockerfile

.PHONY: builddock
builddock: Dockerfile
	docker build -f py36/Dockerfile -t py36 .

hw9_1.txt:
	docker run -it --rm -v $(shell pwd):$(shell pwd) -w $(shell pwd) py36 /bin/bash -c "python hw9_1.py 2 3 7 4 6 > output/hw9_1.txt"

hw9_2.txt:
	docker run -it --rm -v $(shell pwd):$(shell pwd) -w $(shell pwd) py36 /bin/bash -c "python hw9_2.py 5 2 17 > output/hw9_2.txt"

hw9_3.txt:
	docker run -it --rm -v $(shell pwd):$(shell pwd) -w $(shell pwd) py36 /bin/bash -c "python hw9_3.py > output/hw9_3.txt"

hw9_4.txt:
	docker run -it --rm -v $(shell pwd):$(shell pwd) -w $(shell pwd) frolvlad/alpine-python-machinelearning /bin/sh -c "python hw9_4.py 0 1 2 > output/hw9_4.txt"

hw9_5.txt:
docker run -it --rm -v $(shell pwd):$(shell pwd) -w $(shell pwd) frolvlad/alpine-python-machinelearning /bin/sh -c "python hw9_5.py 3 5 > output/hw9_5.txt"

.PHONY: filenames
filenames:
	ls output

