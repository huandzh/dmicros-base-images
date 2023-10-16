FROM hub.tenxcloud.com/dmicros/dmicros-runtime:py311

LABEL maintainer="Huan Di <hd@iamhd.top>" \
      description="This image is compiler for dmcrios api." \
      version="0.8.0"

# prepare stack
RUN mkdir release
RUN apt-get update
RUN curl -sSL https://get.haskellstack.org/ | sh
ENV PATH="${PATH}:/root/.local/bin"
# ensure lts-10.4
# COPY config.yaml ./stack.yaml
RUN stack setup
# use tsinghua mirror
# COPY config.yaml /root/.stack/config.yaml
RUN stack update
CMD ["stack", "--help"]
