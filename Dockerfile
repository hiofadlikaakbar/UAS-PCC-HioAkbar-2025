# Gunakan image Node.js untuk lingkungan
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Salin file proyek ke dalam container
COPY ./htdocs /app

# Install dependencies
RUN npm install

# Build Tailwind CSS
RUN npx tailwindcss -i ./build/input.css -o ./build/output.css --minify

# Ekspose port (sesuaikan jika berbeda)
EXPOSE 3000

# Jalankan server untuk menampilkan file HTML
CMD ["npx", "http-server", "-p", "3000"]
