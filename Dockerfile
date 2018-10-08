FROM hashicorp/terraform:light

MAINTAINER "Chris McKee <pcdevils@gmail.com>"

RUN apk add --update git bash

RUN adduser -S tf-cli
USER tf-cli

ENTRYPOINT ["/docker-entrypoint.sh"] 

WORKDIR "/tf-cli"

# Executing defaults
CMD ["/bin/sh"]
