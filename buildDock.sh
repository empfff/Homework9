#!/bin/bash

cd py36

docker build -t py36 .

docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) py36 /bin/bash -c "python hw9_1.py 2 3 7 4 6 > hw9_1.txt"
