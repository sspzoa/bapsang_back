FROM python:3.12.5-alpine

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

EXPOSE 8080

CMD ["uvicorn", "app.main:app", "--port", "8080"]