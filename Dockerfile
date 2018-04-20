FROM jupyter/pyspark-notebook
# Install Python requirements
COPY requirements.txt /home/jovyan/
RUN pip install -r /home/jovyan/requirements.txt
# Run the notebook
CMD ["/opt/conda/bin/jupyter", "lab"]