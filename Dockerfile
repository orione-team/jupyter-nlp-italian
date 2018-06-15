FROM jupyter/scipy-notebook

USER root

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install default-jdk -y && \
    pip install --upgrade pip && \
    conda update -n base conda && \
    conda install -c conda-forge spacy && \
    python -m spacy download en && \
    python -m spacy download it && \
    python -m spacy download xx && \
    pip install -U nltk && \
    pip install --upgrade -U gensim && \
    pip install -U pyldavis