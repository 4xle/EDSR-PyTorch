# docker build . -t py3torch

# function dockerpytorch() { 
# 	xhost +;
# 	docker run --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 --rm -it \
#     --ipc=host \
# 	--user=$(id -u) \
# 	--env="DISPLAY" \
# 	--env QT_X11_NO_MITSHM=1 \
# 	--workdir=/app \
# 	--volume="$PWD":/app \
# 	--volume="/home/tsael/":/home/tsael \
# 	--volume="/home/tsael/Documents/ResearchData/NewTsukubaStereo/NewTsukubaStereoDataset/":/app/data/NewTsukubaStereoDataset/ \
# 	--volume="/home/tsael/Documents/ResearchData/DIV2K/":/app/data/DIV2K \
# 	--volume="/home/tsael/Documents/ResearchData/ETH3D/":/app/data/ETH3D \
# 	--volume="/home/tsael/Documents/ResearchData/Holopix50k/":/app/data/Holopix50k \
# 	--volume="/home/tsael/Documents/ResearchData/Flickr1024/":/app/data/Flickr1024 \
# 	--volume="/etc/group:/etc/group:ro" \
# 	--volume="/etc/passwd:/etc/passwd:ro" \
# 	--volume="/etc/shadow:/etc/shadow:ro" \
# 	--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
# 	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
# 	--volume="/dev/input:/dev/input" \
# 	py3torch $*;
# 	xhost -;}
# alias pytorch="dockerpytorch"

# FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-runtime
FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime
RUN pip install wandb matplotlib scikit-image imageio tqdm
ENV LC_ALL="C.UTF-8"
ENV LANG="C.UTF-8"
ENV WANDB_DIR=/app/wandb

