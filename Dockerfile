FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    xauth \
    x11-apps \
    xorg \
    openbox

ENV DISPLAY=:0
# Create Working Directory
WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install -r requirements.txt

# Copy to Working Directory
COPY . /app

# Install Dependencies

# Expose Port
EXPOSE 8501

# Run Streamlit App
CMD ["streamlit", "run", "app.py"]


