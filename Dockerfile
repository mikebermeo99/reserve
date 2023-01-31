FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
COPY riva_api-1.8.0b0-py3-none-any.whl riva_api-1.8.0b0-py3-none-any.whl
RUN pip3 install riva_api-1.8.0b0-py3-none-any.whl
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . .


CMD [ "uvicorn", "main:app" , "--port", "8676", "--host", "localhost"]

