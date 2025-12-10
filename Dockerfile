FROM python:3.9-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código de la aplicación
COPY app.py .

# Exponer el puerto HTTP
EXPOSE 8000

# Comando por defecto del contenedor
CMD ["python", "app.py"]
