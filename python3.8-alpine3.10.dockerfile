FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-alpine3.10

RUN wget -qO - https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - \
    && ln -s $HOME/.poetry/bin/poetry /usr/sbin/ \
    && poetry config virtualenvs.create false

