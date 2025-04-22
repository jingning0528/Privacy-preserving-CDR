FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install mlflow

CMD ["python3", "run_recbole_cdr.py"]
