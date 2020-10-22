FROM jupyter/datascience-notebook
# install elyra
RUN conda install -c conda-forge elyra
RUN jupyter lab build --dev-build=False --minimize=False
RUN jupyter serverextension list