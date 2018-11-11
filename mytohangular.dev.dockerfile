FROM nginx:alpine
COPY /dist /usr/share/nginx/html

# directory /dist must exist
# docker build -t mytohangular.dev -f mytohangular.dev.dockerfile .
# docker container run -d --rm -p 4200:80 -v ${pwd}/dist:/usr/share/nginx/html mytohangular.dev
# ng build --watch --delete-output-path=false