#!/bin/bash
sudo docker run -it \
   --network=host \
   --group-add=video \
   --ipc=host \
   --cap-add=SYS_PTRACE \
   --security-opt seccomp=unconfined \
   --shm-size=8g \
   --device /dev/kfd \
   --device /dev/dri \
   -v /mnt/nvme0n1p1/hfmodels:/app/model \
   -v /home/hotaisle/github/axolotl-amd:/app/axolotl-amd \
   docker.io/library/axolotl-amd:base \
   bash