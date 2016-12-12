FROM tiangolo/uwsgi-nginx:python2.7

RUN pip install pyramid

# Add app configuration to Nginx
COPY nginx.conf /etc/nginx/conf.d/

# Copy app
COPY ./app /app
