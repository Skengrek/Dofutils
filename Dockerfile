# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN --mount=type=ssh --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt \
    --trusted-host pypi.org \ 
    --trusted-host pypi.python.org \
    --trusted-host=files.pythonhosted.org

COPY . .

CMD [ "python3", "src/main.py"]