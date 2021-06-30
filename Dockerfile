FROM python:3.9.6-alpine3.13

ARG APP_DIR=/opt/app

WORKDIR $APP_DIR

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ipython
