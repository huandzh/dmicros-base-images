FROM index.tenxcloud.com/dmicros/uwsgi-nginx:py310

LABEL maintainer="Huan Di <hd@iamhd.top>" \
      description="This image is run-time for dmcrios api." \
      version="0.8.0"

# use aliyun mirror
COPY pip.conf /etc/pip.conf
# install eve , will install flask
RUN pip install --upgrade pip

CMD ["pip", "list"]
