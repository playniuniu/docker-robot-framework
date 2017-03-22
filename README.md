# Docker for Robot Framework

This docker is used to do web automation test with Firefox, [Selenium](http://www.seleniumhq.org/) and [Robot Framework](http://robotframework.org/)

It complete the [Robot Framework test demo](https://bitbucket.org/robotframework/webdemo) with docker

It also show the capability of docker with GUI, see [Reference](https://github.com/playniuniu/docker-robot-framework#Reference) 

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

### Run on step by step

If you want to run this docker step by step, check the **run_step_by_step.sh**

### Problem

1. For now, the firefox fisrt open will show an error dialog, just close it with 'X', donnot click on any button

2. Now it cannot use chrome browser

### Reference

1. [Docker for Firefox GUI running on Linux and macOS](https://github.com/playniuniu/docker-gui-firefox)

