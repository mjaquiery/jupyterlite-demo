FROM python:3.10

RUN mkdir /juptyerlite

WORKDIR /jupyterlite

COPY . .

RUN python -m pip install -r requirements.txt

RUN jupyter lite build --contents content --output-dir dist

CMD tail -f /dev/null
