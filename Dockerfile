# Using lightweight alpine image
FROM public.ecr.aws/docker/library/python:3.9.16

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN python --version
RUN pip install -r requirements.txt

# add and run as non-root user
RUN adduser myuser
USER myuser

EXPOSE 8000
ENTRYPOINT ["gunicorn","-b 0.0.0.0","src:create_app()"]
