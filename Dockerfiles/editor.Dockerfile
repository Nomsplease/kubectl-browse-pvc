# PVCB Editor Dockerfile

FROM --platform=amd64 alpine

LABEL image="clbx/pvcb-editor" 
LABEL org.opencontainers.image.source = "https://github.com/clbx/pvcb"


RUN apk update
RUN apk add vim

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]