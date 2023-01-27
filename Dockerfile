FROM python:3.10.7-slim-buster

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

USER 1001

EXPOSE 80

CMD ["python3", "-u", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
