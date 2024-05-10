FROM python:3.12

WORKDIR /app

COPY poetry.lock /app/poetry.lock
COPY pyproject.toml /app/pyproject.toml

RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install --only main

COPY . .

CMD ["python", "hw.py"]