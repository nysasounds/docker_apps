# Chromium container
#
# Based on the solution by https://github.com/jessfraz - but using ubuntu - for the LOLs

# Base docker image
FROM ubuntu:18.04
LABEL maintainer "jcat"

# Install Chromium
RUN apt-get update && apt-get install -y \
      chromium-browser \
      chromium-browser-l10n \
      chromium-codecs-ffmpeg-extra \
      fonts-liberation \
      fonts-liberation2 \
      fonts-ubuntu \
      adwaita-icon-theme-full \
      libcanberra-gtk3-module \
      libexif-dev \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      libpango1.0-0 \
      libv4l-0 \
      --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && update-alternatives --set x-cursor-theme /usr/share/icons/Adwaita/cursor.theme

