CURRENT_PATH="$PWD"

docker run \
    --name platform \
    --privileged \
    --rm \
    --gpus all \
    --env NVIDIA_DISABLE_REQUIRE=1 \
    -it \
    --net=host \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v $CURRENT_PATH/src:/home/carla/Evaluation/src:rw \
    -v $CURRENT_PATH/pkgs:/home/carla/Evaluation/pkgs:rw \
    -v $CURRENT_PATH/pkgs/scenario_runner:/home/carla/scenario_runner:rw \
    -v $CURRENT_PATH/../SafeBench_bridge/scenario_routing:/home/carla/scenario_routing:rw \
    garyxcj/carla
