FROM jupyter/datascience-notebook
# Setting jupyter notebook environment.
RUN rmdir work
ARG password=not_password

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

## install elyra
RUN conda install -c conda-forge elyra
RUN jupyter lab build --dev-build=False --minimize=False

# install libraries
# ENV GRANT_SUDO=no
# USER jovyan

### Set Environment
ENV MECAB_PATH /usr/local/lib/libmecab.so
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

## install python library
RUN pip3 install\
    MeCab==0.996.2\
    stanfordcorenlp==3.9.1.1\
    nltk==3.5 


# jupyter config
COPY ./settings/jupyter_notebook_config.py .jupyter/

