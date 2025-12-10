FROM python:3.9-alpine

# Directorio de trabajo
WORKDIR /app

# Crear usuario y grupo no privilegiado
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Copiar dependencias y aplicación
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Dar permisos al usuario no root sobre /app
RUN chown -R appuser:appgroup /app

# Cambiar al usuario no root
USER appuser

EXPOSE 8000

CMD ["python", "app.py"]

