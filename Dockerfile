FROM python:3.7

RUN \
  apt-get update \
  && apt-get install build-essential --yes

RUN \
  pip install numpy==1.18.5 \
  && wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
  && tar -xzf ta-lib-0.4.0-src.tar.gz \
  && cd ta-lib \
  && ./configure --prefix=/usr \
  && make \
  && make install \
  && ldconfig

RUN \
  #
  # install package requirements
  rm -R ta-lib ta-lib-0.4.0-src.tar.gz \
  && pip install matplotlib==3.2.2 scipy==1.5.0 ta-lib==0.4.18 \
  #
  # install pypi requirements
  && pip install twine

COPY package /package
