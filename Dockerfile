FROM python:alpine
LABEL maintainer="mayalapi@gmail.com"
RUN addgroup -S maya && adduser -S -s /bin/false -G maya maya
WORKDIR /app
COPY main.py .
RUN chown -R maya:maya /app
USER maya
CMD ["python", "main.py"]
