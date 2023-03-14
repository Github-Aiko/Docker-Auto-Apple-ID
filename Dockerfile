FROM python:3.9-slim

WORKDIR /app
COPY main.py requirements.txt lang.py /app/

ENV api_url=""
ENV api_key=""
ENV taskid=""
ENV lang=""

RUN pip install -r requirements.txt
CMD python -u main.py -api_url=$api_url -api_key=$api_key -taskid=$taskid -lang=$lang