# Dockerfile for book_catalog microservice
FROM python:3.12-slim
WORKDIR /usr/src/app
COPY ./book_catalog /usr/src/app/book_catalog

WORKDIR /usr/src/app/book_catalog
RUN pip install --no-cache-dir -r requirements.txt

ENV DATABASE_URL="postgresql://sit722_devops_project_ryp2_user:XOB1FCOf91UH3jtfUep4hIrEfR7BGw4w@dpg-cr5ek8d2ng1s73edmhdg-a.oregon-postgres.render.com/sit722_devops_project_ryp2"

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]