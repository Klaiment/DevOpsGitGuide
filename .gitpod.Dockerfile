FROM gitpod/workspace-python

USER root

RUN apt-get update && apt-get install -y cron tree

RUN service cron start