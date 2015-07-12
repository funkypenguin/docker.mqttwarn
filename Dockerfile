FROM python:2.7

MAINTAINER sourceperl <loic.celine@free.fr>

# build /opt/mqttwarn
RUN mkdir -p /opt/mqttwarn
WORKDIR /opt/mqttwarn/
RUN mkdir -p /opt/mqttwarn/services
ADD services/ /opt/mqttwarn/services/
ADD mqttwarn.ini /opt/mqttwarn/
ADD mqttwarn.py /opt/mqttwarn/
ADD requirements.txt /opt/mqttwarn/

# install python library
RUN pip install -r requirements.txt

# add user mqttwarn to image
RUN groupadd -r mqttwarn && useradd -r -g mqttwarn mqttwarn
RUN chown -R mqttwarn /opt/mqttwarn

# process run as mqttwarn user
USER mqttwarn

# run process
CMD python mqttwarn.py
