## deep-learning-gpu-env 是 GPU 版的深度学习环境，包含以下安装包

    keras2+tensorflow+jupyter+flask+openslide+node+npm

## Dockerfile 构建镜像的方法

    docker build -t name:tag .

## 运行该镜像的方法（GPU）加速

    nvidia-docker run -d -p 8888:8888 --name test -v /home/pzw:/home/workspace 镜像ID

    nvidia-docker exec -it 容器ID bash

## 保存该镜像的方法

    docker save -o 镜像名称

## 保存该容器的方法

    docker export -o 容器名称

***

## nvidia-docker 的安装

    参考 [nvidia-docker](https://github.com/zhudaoruyi/nvidia-docker)

注意：安装 nvidia-docker 之前先安装好 docker

    为了确认 nvidia-docker 是否安装成功，运行
    ```nvidia-docker run --rm nvidia/cuda nvidia-smi
    如果正确输出了本机的 GPU 信息，则安装成功。
    
    +-----------------------------------------------------------------------------+
    | NVIDIA-SMI 367.48                 Driver Version: 367.48                    |
    |-------------------------------+----------------------+----------------------+
    | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
    | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
    |===============================+======================+======================|
    |   0  Tesla M40 24GB      Off  | 0000:02:00.0     Off |                    0 |
    | N/A   33C    P0    57W / 250W |  22427MiB / 22939MiB |      0%      Default |
    +-------------------------------+----------------------+----------------------+
    |   1  Tesla M40 24GB      Off  | 0000:82:00.0     Off |                    0 |
    | N/A   37C    P0    58W / 250W |  21663MiB / 22939MiB |      0%      Default |
    +-------------------------------+----------------------+---------------------
