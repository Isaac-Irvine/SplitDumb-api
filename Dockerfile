FROM python:3.12.1-bookworm AS base

WORKDIR /app

FROM base AS devcontainer

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Install Apt packages
RUN apt-get update \
    && apt-get install -y \
           sudo \
           postgresql-client
# purge apt cache
RUN rm -rf /var/lib/apt/lists/*

# Create a dev user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --shell /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Install Pip packages
COPY requirements.txt requirements-dev.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install --no-cache-dir -r requirements-dev.txt
