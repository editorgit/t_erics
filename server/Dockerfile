FROM python:3.8 as server

COPY start.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

WORKDIR .
CMD python ./start.py
