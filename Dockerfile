# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Install pgsync
RUN pip install pgsync

# Copy the pgsync schema file into the container
COPY schema.json /usr/src/app/schema.json

# Run pgsync
CMD ["pgsync", "--config", "/usr/src/app/schema.json"]

