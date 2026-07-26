FROM python:3.11-slim

RUN pip install --no-cache-dir yahoo-finance-server

ENV PYTHONUNBUFFERED=1

CMD ["sh", "-c", "echo '=== PATH ===' && echo $PATH && echo '=== Which binary ===' && which yahoo-finance-server || echo 'binary not found' && echo '=== Trying to run ===' && yahoo-finance-server --help || echo 'Command failed' && echo '=== Done ==='"]
