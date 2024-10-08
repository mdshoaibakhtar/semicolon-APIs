# !/bin/bash

# Build the project
echo "Building the project..."
python3 -m pip install -r requirements.txt

echo "Make migration..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collect static"
python3 manage.py collectstatic --noinput --clear

# Make sure the output directory exists
mkdir -p staticfiles