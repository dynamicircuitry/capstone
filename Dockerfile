FROM python:3.7.3-stretch
## Step 1:
WORKDIR /tmp
WORKDIR /app
## Step 2:
COPY ./requirements.txt /tmp/
COPY ./app.py /app/
COPY ./model_data/* /app/model_data/
## Step 3:
RUN pip install --upgrade pip && \
	pip install --trusted-host pypi.python.org -r /tmp/requirements.txt
 	#hadolint --ignore DL3013
## Step 4:
EXPOSE 80/tcp
## Step 5:
CMD ["python", "/app/app.py"]