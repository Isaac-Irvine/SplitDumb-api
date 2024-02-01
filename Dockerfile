FROM python:3.12.1-bookworm AS base

WORKDIR /app

FROM base AS devcontainer

COPY requirements.txt .

RUN pip3 install -r requirements.txt
