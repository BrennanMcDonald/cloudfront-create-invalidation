FROM python:3.8-alpine

LABEL "com.github.actions.name"="CloudFront Invalidate Item(s)"
LABEL "com.github.actions.description"="Invalidates items in a CloudFront cache."
LABEL "com.github.actions.icon"="file-minus"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.1"
LABEL repository="https://github.com/BrennanMcDonald/cloudfront-create-invalidation"
LABEL homepage="https://brennanmcdonald.ca"
LABEL maintainer="Brennan McDonald <brennan.mcdonald.mail@gmail.com>"

ENV AWSCLI_VERSION='1.17.1'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]