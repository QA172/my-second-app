# Base image olarak Node.js kullanıyoruz
FROM node:14

# Çalışma dizini
WORKDIR /app

# package.json dosyasını kopyala ve bağımlılıkları yükle
COPY package*.json ./
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulama portunu aç
EXPOSE 3000

# Uygulamayı çalıştır
CMD ["npm", "start"]
