FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir

COPY convert_image_to_pdf.py .

CMD ["python", "convert_image_to_pdf.py"]
