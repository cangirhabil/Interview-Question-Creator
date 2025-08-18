# Interview-Question-Creator-Project

### How to run?

1. Create an environment

```bash
conda create -n interview python=3.10 -y

conda activate interview
```

2. Install requirements

```bash
pip install -r requirements.txt
```

3. Set up your Google Gemini AI API key

- Get your API key from: https://makersuite.google.com/app/apikey
- Copy `.env.example` to `.env`
- Add your API key to the `.env` file:

```bash
cp .env.example .env
# Edit .env and add your GOOGLE_API_KEY
```

4. Run the application

```bash
python app.py
```

### Changes from OpenAI to Gemini AI

This project has been updated to use Google's Gemini AI instead of OpenAI:

- **Models**: Now uses `gemini-1.5-flash` instead of `gpt-3.5-turbo`
- **Text Splitting**: Uses `RecursiveCharacterTextSplitter` instead of `TokenTextSplitter` for better compatibility
- **Embeddings**: Uses Google's `models/embedding-001` instead of OpenAI embeddings
- **API Key**: Requires `GOOGLE_API_KEY` instead of `OPENAI_API_KEY`
- **Dependencies**: Uses `langchain-google-genai` and `google-generativeai` packages

### Features

- Upload PDF documents
- Generate interview questions from the content
- Create answers for the questions using RAG (Retrieval Augmented Generation)
- Export results to CSV format
