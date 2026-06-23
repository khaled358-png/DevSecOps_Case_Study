FROM python:3.12-slim AS builder

WORKDIR /app

COPY my-website/requirements.txt .

RUN pip install \
    --no-cache-dir \
    --prefix=/install \
    -r requirements.txt

FROM python:3.12-slim

WORKDIR /app

RUN useradd -m -u 1001 appuser

COPY --from=builder /install /usr/local

COPY --chown=appuser:appuser my-website/ .

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
