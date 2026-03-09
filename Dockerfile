FROM python:3.9

WORKDIR /apps

# Copy app code and requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /apps

EXPOSE 5000
CMD ["python", "run.py"]
