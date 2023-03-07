FROM python:alpine
WORKDIR /app
COPY main.py .
CMD ["python", "main.py"]                             
