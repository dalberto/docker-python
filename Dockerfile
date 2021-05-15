#syntax=docker/dockerfile:1.2
FROM python:3.9-alpine3.13

ARG APP_DIR=/opt/app

WORKDIR $APP_DIR

COPY requirements.txt .

RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt

CMD ipython
