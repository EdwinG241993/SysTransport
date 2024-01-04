# Usa la última versión de Ubuntu
FROM ubuntu:latest

# Actualiza la lista de paquetes e instala Apache
RUN apt-get update && apt-get install -y apache2

# Copia tu archivo index.html al directorio correcto
COPY index.html /var/www/html/

# Expone el puerto 80
EXPOSE 80

# Inicia Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
