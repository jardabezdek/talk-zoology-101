FROM python:3.10.12-bookworm as python-base
MAINTAINER Jaroslav Bezdek

RUN apt-get --allow-releaseinfo-change update

FROM python-base as venv-image

RUN apt-get install -y build-essential \
  python3-dev \
  python3-pip \
  python3-venv

COPY requirements.txt .

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

FROM python-base AS app-image

COPY --from=venv-image /opt/venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /usr/src/app

RUN chown -R nobody /usr/src/app/
RUN usermod --home /tmp nobody

USER nobody

ENV PYTHONPATH=/usr/src/app

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]