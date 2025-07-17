FROM python:3.12

WORKDIR /app

COPY ./backend /app

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "-m", "gunicorn",  "mysite.asgi:application", "-b", "0.0.0.0:8000", "-k", "uvicorn_worker.UvicornWorker"]