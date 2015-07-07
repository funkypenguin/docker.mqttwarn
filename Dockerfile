FROM python:2.7

MAINTAINER sourceperl <loic.celine@free.fr>

RUN mkdir -p /opt/mqttwarn
WORKDIR /opt/mqttwarn/

RUN mkdir -p /opt/mqttwarn/services
ADD services/ /opt/mqttwarn/services/
ADD mqttwarn.ini /opt/mqttwarn/
ADD mqttwarn.py /opt/mqttwarn/
ADD requirements.txt /opt/mqttwarn/

RUN pip install -r requirements.txt

CMD python mqttwarn.py
