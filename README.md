# Docker for Robot Framework

### Run on Linux

1. You need add Docker authority

    ```bash
    xhost + local:docker
    ```

2. You need connect Docker with XServer

    ```bash
    docker run --rm -t \
               -e DISPLAY=unix:$DISPLAY \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -v YOUR_TEST_FOLDER:/testcases \
               --name robot-framework \
               playniuniu/robot-fraemwork
    ```
