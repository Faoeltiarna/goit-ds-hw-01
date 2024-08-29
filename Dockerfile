FROM python:3.12

ENV APP_HOME=/app

WORKDIR $APP_HOME

COPY . .

RUN pip install pipenv

RUN pipenv install

EXPOSE 5000

ENTRYPOINT ["pipenv", "run", "python", "hw_m1.py"]