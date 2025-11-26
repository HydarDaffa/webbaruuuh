# Gunakan image Nginx resmi
FROM nginx

# Hapus file default Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy file website ke directory Nginx
COPY index.html /usr/share/nginx/html/

# Copy konfigurasi Nginx kustom
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]