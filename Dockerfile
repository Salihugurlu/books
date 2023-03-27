# FROM python:alpine
# WORKDIR /app
# ENV FLASK_APP bookstore-api.py
# ENV FLASK_RUN_HOST 0.0.0.0
# COPY requirements.txt requirements.txt
# # RUN apk add --no-cache gcc musl-dev linux-headers
# RUN pip install -r requirements.txt
# EXPOSE 80
# COPY . .
# CMD [ "flask" , "run" ]


FROM python:alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./bookstore-api.py