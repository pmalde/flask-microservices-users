FROM python:3.6.1

# Set Working Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add requirements (to leverage Docker cache)
ADD ./requirements.txt /usr/src/app/requirements.txt

# Install requirements
RUN pip install -r requirements.txt

# Add app
ADD . /usr/src/app

# Run Server
CMD python manage.py runserver -h 0.0.0.0