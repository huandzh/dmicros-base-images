FROM tiangolo/uwsgi-nginx:python3.11
#FROM hub.tenxcloud.com/dmicros/uwsgi-nginx:py310

LABEL maintainer="Huan Di <hd@iamhd.top>" \
      description="This image is run-time for dmcrios api." \
      version="0.9.311"

# use aliyun mirror
COPY pip.conf /etc/pip.conf
# install eve , will install flask
RUN pip install --upgrade pip

CMD ["pip", "list"]
