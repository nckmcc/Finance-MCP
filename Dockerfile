FROM python:3.11-slim

RUN pip install yahoo-finance-server

EXPOSE 8080

CMD ["yahoo-finance-server", "--transport", "http", "--host", "0.0.0.0", "--port", "8080"]
