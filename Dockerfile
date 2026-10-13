FROM python:3.14-slim-trixie

RUN apt-get update && \
    apt-get install -y curl make git gcc g++ unixodbc && \
    apt-get clean

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/
