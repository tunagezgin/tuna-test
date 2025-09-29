# Node.js base image
FROM node:18-alpine

# Çalışma klasörünü ayarla
WORKDIR /usr/src/app

# Bağımlılık dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install --production

# Kodları kopyala
COPY . .

# App çalıştır
CMD ["npm", "start"]

# ECS için port aç
EXPOSE 80
