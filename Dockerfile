FROM python:3.11-slim

RUN pip install --no-cache-dir yahoo-finance-server

ENV PYTHONUNBUFFERED=1

CMD ["sh", "-c", "yahoo-finance-server --transport http --host 0.0.0.0 --port ${PORT:-8080}"]
