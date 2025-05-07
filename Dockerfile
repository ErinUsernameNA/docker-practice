FROM python:latest
RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "converter.py", "-i", "example.csv", "-o", "example.json"]