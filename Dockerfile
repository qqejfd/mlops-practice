FROM python:3.11-slim

WORKDIR /app

COPY requirements-api.txt /app/requirements-api.txt

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements-api.txt

COPY src/ /app/src/
COPY models/ /app/models/

CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "7860"]