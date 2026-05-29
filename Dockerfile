FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --default-timeout=1000 --no-cache-dir -r requirements.txt

ENV PORT=5000

CMD ["sh", "-c", "gunicorn --bind 0.0.0.0:$PORT app:app"]
