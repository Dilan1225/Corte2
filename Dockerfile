# Dockerfile para ETL de migración internacional
FROM python:3.9-slim

WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar datos transformados
COPY datos_transformados.csv /data/datos_transformados.csv

# Comando para verificar los datos
CMD ["bash", "-c", "echo 'Datos de migración transformados:' && python -c "import pandas as pd; df = pd.read_csv('/data/datos_transformados.csv'); print(df.head())""]
