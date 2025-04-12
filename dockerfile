# Usa una imagen de Node liviana
FROM node:21-alpine3.19

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de dependencias primero para aprovechar la cache
COPY package*.json ./

# Instala todas las dependencias (incluyendo dev)
RUN npm install

# Copia todo el proyecto (incluyendo src, tsconfig, etc.)
COPY . .

# Expone el puerto de NestJS
EXPOSE 3000