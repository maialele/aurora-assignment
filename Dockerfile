FROM python:alpine
WORKDIR /app
USER maya
COPY main.py .
CMD ["python", "main.py"]                             
