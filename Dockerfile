FROM python:3.12.2-alpine

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5001
# EXPOSE 8080

ENV FLASK_APP=database.py
# ENV PORT=8080
ENV PORT=5001

CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]