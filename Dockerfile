FROM hemanhp/djbase:latest

COPY ./src /src
COPY ./requirements /requirements


WORKDIR src

EXPOSE 8000

RUN /py/bin/pip install -r /requirements/development.txt



ENV PATH="/scripts:/py/bin:$PATH"