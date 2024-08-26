FROM nginx:alpine
# Build edilmiş React dosyalarını container içine kopyalıyoruz package.json içersinde bulunan build komutu sonrasında oluşan dosyalar npm run build
COPY build /usr/share/nginx/html
# 8081 portunu dışarıya açıyoruz
EXPOSE 8081
# Nginx'i çalıştırıyoruz daemon arkaplanda çalıştırma komutu onu off yapınca önplanda çalıştırıyor  yani sürekli önplanda çalışır 
CMD ["nginx", "-g", "daemon off;"]