
# HOWTOs

## run the app

    For dev mode, run `flask --app src run` or `python -m flask --app src run`
    For prod mode, run `gunicorn 'src:create_app()'`

## Generate requirements.txt

    `pipreqs . --force`         : run `pip install pipreqs` if it is not installed



# Test Dockerfile locally

1. Build the docker image

    `docker build . --progress=plain -t flaskapi1`

2. Run the above image

    `docker run -p 8000:8000 flaskapi1`

3. Other docker commands

    - Inspect exposed port(s):  docker image inspect flaskapi1 -f '{{ .ContainerConfig.ExposedPorts }}'

