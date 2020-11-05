FROM jupyter/datascience-notebook
# Setting jupyter notebook environment.
RUN rmdir work

# install libraries
ENV GRANT_SUDO=yes
USER root

## install linux base packages
RUN apt-get update && apt-get install -y\
    gcc\
    libffi-dev\
    musl-dev\
    make\
    g++\
    gfortran\
    swig\
    mecab\
    mecab-ipadic-utf8\
    libmecab-dev


## install poetry
RUN pip install --upgrade pip && pip install\
    poetry==1.1.4\
    pyparsing==2.4.7\
    certifi==2020.6.20

RUN poetry config virtualenvs.create false

## install python library
RUN pip3 install MeCab

## install elyra
RUN conda install -c conda-forge elyra
RUN jupyter lab build --dev-build=False --minimize=False

# install libraries
ENV GRANT_SUDO=no
USER jovyan

### Set Environment
ENV MECAB_PATH /usr/local/lib/libmecab.so
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

# jupyter config
COPY ./settings/jupyter_notebook_config.py .jupyter/
