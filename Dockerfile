FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /app

RUN addgroup --system --gid 1000 rangarr && \
    adduser --system --uid 1000 --gid 1000 rangarr

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY rangarr/ ./rangarr/
COPY config.example.yaml .

RUN chown -R rangarr:rangarr /app
USER rangarr

CMD ["python", "-m", "rangarr.main"]
