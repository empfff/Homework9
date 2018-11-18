#!/bin/bash

cd py36

docker build -t py36 .

cd ../

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) py36 /bin/bash -c "python hw9_1.py 2 3 7 4 6 > output/hw9_1.txt"

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) py36 /bin/bash -c "python hw9_2.py 5 2 17 > output/hw9_2.txt"

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) py36 /bin/bash -c "python hw9_3.py > output/hw9_3.txt"

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) frolvlad/alpine-python-machinelearning /bin/sh -c "python hw9_4.py 0 1 2 > output/hw9_4.txt"

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) frolvlad/alpine-python-machinelearning /bin/sh -c "python hw9_5.py 3 5 > output/hw9_5.txt"