FROM jupyter/datascience-notebook
# Setting jupyter notebook environment.
ADD ./settings/jupyter_notebook_config.py .jupyter/
RUN rmdir work

# install libraries
ENV GRANT_SUDO=yes
USER root

# install mecab


## install elyra
RUN conda install -c conda-forge elyra
RUN jupyter lab build --dev-build=False --minimize=False &&\
    jupyter serverextension list

