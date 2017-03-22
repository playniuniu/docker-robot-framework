# Docker for Robot Framework

### Run on Linux

1. You need copy your sample_vol folder to your *~/vol/robot/* folder

2. You need add Docker authority

    ```bash
    xhost + local:docker
    ```

3. Run it with docker-compose

    ```
    docker-compose up
    ``` 

### Problem

For now, the firefox fisrt open will show an error dialog, just close it with 'X', donnot click on any button

### Run on step by step

If you want to run this docker step by step, check the **run_step_by_step.sh**

