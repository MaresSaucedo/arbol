# Usa una imagen base de Node.js
FROM node:14-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY arbolProblemas.html

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "arbolProblemas.js"]