FROM python:3.10 AS build
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["/bin/bash", "./start.sh"]