#!/bin/bash

echo "Setting up Interview Question Creator with Gemini AI..."

# Create conda environment
echo "Creating conda environment..."
conda create -n interview python=3.10 -y

# Activate environment
echo "Activating environment..."
conda activate interview

# Install requirements
echo "Installing requirements..."
pip install -r requirements.txt

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "Creating .env file from template..."
    cp .env.example .env
    echo "Please edit .env file and add your GOOGLE_API_KEY"
    echo "Get your API key from: https://makersuite.google.com/app/apikey"
else
    echo ".env file already exists"
fi

echo "Setup complete!"
echo "Don't forget to:"
echo "1. Add your GOOGLE_API_KEY to the .env file"
echo "2. Run 'conda activate interview' to activate the environment"
echo "3. Run 'python app.py' to start the application"
