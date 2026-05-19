# Usa Python 3.11 come immagine base
FROM python:3.11-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file di requirements
COPY requirements.txt .

# Installa le dipendenze Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia il codice dell'applicazione
COPY . .

# Esponi la porta (modifica secondo le tue necessità)
EXPOSE 8000

# Comando per avviare l'applicazione
CMD ["python", "app.py"]
