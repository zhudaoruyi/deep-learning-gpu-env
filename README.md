# deep-learning-gpu-env
keras2+tensorflow+jupyter+flask+openslide+node+npm+gpu

## Dockerfile 构建镜像的方法

docker build -t name:tag .

## 运行该镜像的方法（GPU）加速

nvidia-docker run -d -p 8888:8888 --name test -v /home/pzw:/home/workspace 镜像ID

nvidia-docker exec -it 容器ID bash

## 保存该镜像的方法

docker save -o 镜像名称

## 保存该容器的方法

docker export -o 容器名称
