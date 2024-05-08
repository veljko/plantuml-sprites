# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.191.1/containers/ubuntu/.devcontainer/base.Dockerfile

ARG VARIANT=buster
FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends plantuml graphviz ttf-dejavu imagemagick inkscape