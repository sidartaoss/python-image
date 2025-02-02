FROM python:3.12-slim

WORKDIR /app

COPY src .

RUN pip install --no-cache -r requirements.txt --break-system-packages

EXPOSE 9000

CMD ["python", "app.py"]