FROM python:2.7

RUN pip install tornado numpy

ADD ./load.py /

ENV ES_URL elasticsearch:9200

CMD python /load.py  --es_url=http://${ES_URL}

