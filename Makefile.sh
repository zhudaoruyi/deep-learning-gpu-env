#!/bin/bash

```
first of all,docker has been installed.
judge system ,mac or ubuntu or windows,to decide weather use nvidia-docker or not
```


SYSTEM=`uname -s`
if [ $SYSTEM = "Linux" ]; then
	echo "This is $SYSTEM "
	# Install nvidia-docker and nvidia-docker-plugin
	wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
	sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb

	# Test nvidia-smi
	nvidia-docker run --rm nvidia/cuda nvidia-smi 

	sudo docker build -t image_keras .
	sudo nvidia-docker run -d -p 8888:8888 -p 8081:8081 -p 5000:5000 --name container_keras -v $PWD:/home/workspace image_keras
	sudo nvidia-docker exec -it container_keras bash
elif [ $SYSTEM = "MacOS" ]; then
	echo "This is $SYSTEM"
	docker build -t image_keras .
	docker run -d -p 8888:8888 -p 8081:8081 -p 5000:5000 --name container_keras -v $PWD:/home/workspace image_keras
	docker exec -it container_keras bash
elif [ $SYSTEM = "DOS" ]; then
	docker build -t image_keras .
	docker run -d -p 8888:8888 -p 8081:8081 -p 5000:5000 --name container_keras -v $PWD:/home/workspace image_keras
	docker exec -it container_keras bash
else
	echo "not a good system"
fi      #endif
