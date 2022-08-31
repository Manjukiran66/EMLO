FROM python:3.9-slim
WORKDIR /opt/src
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#COPY timm timm (needed for EMLO assingment )
#COPY conf conf (needed for EMLO assingment )
COPY . .
ENTRYPOINT ["python3", "add_2_digits_inference.py"]