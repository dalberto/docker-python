FROM python:3.11-slim

ARG APP_DIR=/opt/app

WORKDIR $APP_DIR

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ipython
