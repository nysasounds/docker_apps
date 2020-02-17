# Run chromium gmail app in a container


# Base docker image #
FROM nysasounds/chromium-base:latest
LABEL maintainer "jcat"

ARG USER_ID=1000
ARG GROUP_ID=1000

# Make sure chromium is up to date #
RUN apt-get update && apt-get install -y \
      chromium-browser \
      chromium-browser-l10n \
      chromium-codecs-ffmpeg-extra \
      --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Add chromium user #
RUN groupadd -g ${GROUP_ID} chromium && useradd -u ${USER_ID} -g chromium -G audio,video chromium \
    && mkdir -p /home/chromium/Downloads && chown -R chromium:chromium /home/chromium \
    && mkdir -p /data && chown -R chromium:chromium /data

# Run as non privileged user
USER chromium

ENTRYPOINT [ "/usr/bin/chromium-browser" ]
CMD [ "--user-data-dir=/data", "--app=https://mail.google.com/mail/u/0/#inbox" ]
