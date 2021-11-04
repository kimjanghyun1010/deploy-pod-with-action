FROM python:3.9
LABEL maintainer="mskjh6@naver.com"
RUN mkdir -p /app/server
COPY . /app/server

WORKDIR /app/server
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python", "scrap.py"]
RUN  cat scrap.json