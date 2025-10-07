# Use Nginx for static website

FROM python:3.12

WORKDIR /app


# Copy all site files into Nginx default web directory

COPY requirements.txt requirements.txt
RUN pip install -r requirements

COPY . .


EXPOSE 5000

CMD [ "python", "app.py" ]