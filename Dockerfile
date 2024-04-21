FROM node:20.11.1-alpine

ARG WORKDIR
ARG API_URL

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    # コンテナ上で起動したNuxtをブラウザから参照するためipを0.0.0.0に紐付ける
    HOST=0.0.0.0 \
    API_URL=${API_URL}

WORKDIR ${HOME}
