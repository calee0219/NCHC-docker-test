#!/bin/bash

docker build -t calee0219/jupyter-docker - < ./cuda-jupyter

docker run --runtime=nvidia -p 9999:9999 -v /home/intern2018/NCHC-docker-test/jupyter:/jupyter -it calee0219/jupyter-docker
#docker run -d --runtime=nvidia -p 9999:9999 -v /home/calee/jupyter-docker/jupyter:/jupyter calee0219/jupyter-docker
#docker run -d --runtime=nvidia -p 9999:9999 -v /home/calee/jupyter-docker/jupyter:/jupyter calee0219/jupyter-docker 'cd /jupyter/storage && jupyter notebook --config=/jupyter/config --allow-root'
