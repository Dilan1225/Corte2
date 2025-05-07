FROM python:3.11

WORKDIR /app

COPY requirements.txt .
COPY etl.py .

RUN pip install -r requirements.txt

CMD ["python", "etl.py"]
