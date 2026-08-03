FROM python:3.12-alpine

WORKDIR /app

RUN apk update && apk --no-cache add openssl bash curl

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py index.html ./

RUN chmod +x app.py

EXPOSE 3000

CMD ["python3", "app.py"]
