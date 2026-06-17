FROM python:3.12-slim

WORKDIR /app

COPY my-website/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY my-website/ .

EXPOSE 5000

CMD ["python", "app.py"]