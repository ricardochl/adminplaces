FROM node:10.15.0

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV NODE_ENV='production'
ENV LOG_LEVEL='error'

ENV PUBLIC_SERVER_URL='http://places.placeshn.site'
ENV PARSE_SERVER_MOUNT '/api'

ENV APP_NAME='Places'

# Use random.org to generate a random string for the APP_ID MASTER_KEY and READ_ONLY_MASTER_KEY
# Example: https://www.random.org/strings/?num=10&len=10&digits=on&upperalpha=on&loweralpha=on&unique=on&format=html&rnd=new

ENV APP_ID='places-ujn'
ENV MASTER_KEY='YOUR_MASTER_KEY'
ENV READ_ONLY_MASTER_KEY='YOUR_READ_ONLY_MASTER_KEY'

ENV MAILGUN_API_KEY='YOUR_MAILGUN_API_KEY'
ENV MAILGUN_DOMAIN='YOUR_MAILGUN_DOMAIN'
ENV MAILGUN_FROM_ADDRESS='YOUR_MAILGUN_FROM_ADDRESS'
ENV MAILGUN_PUBLIC_LINK 'https://trynearme.app'

# Mailgun host (default: 'api.mailgun.net'). 
# When using the EU region, the host should be set to 'api.eu.mailgun.net'
ENV MAILGUN_HOST='api.mailgun.net'

ENV GOOGLE_MAPS_API_KEY='YOUR_GOOGLE_MAPS_API_KEY'

ENV PUSH_ANDROID_SENDER_ID='YOUR_ANDROID_SENDER_ID'
ENV PUSH_ANDROID_API_KEY='YOUR_ANDROID_API_KEY'

ENV PUSH_IOS_BUNDLE_ID='com.quanlabs.nearme5'

ENV MAX_REQUEST_SIZE='20mb'
ENV DOKKU_LETSENCRYPT_EMAIL='dev@quanlabs.com'
ENV PUBLIC_SERVER_URL= 'http://places.placeshn.site'
# Generate an encrypted password for your parse dashboard user
# https://bcrypt-generator.com/
ENV PARSE_DASHBOARD_USER='admin'
ENV PARSE_DASHBOARD_PASS='$2y$12$BhniVsyPxK4bMd91URESP.6fNAcK8.L4OKvhgNGj4b6QsSnXs6Nqa'

ENV PARSE_DASHBOARD_USER_READ_ONLY 'admin1'
ENV PARSE_DASHBOARD_PASS_READ_ONLY '$2y$12$6b7CuxcN7oZ4tkd7iQetOOdJOaVDajPiDrq2tjfxo0QP7DEbcirKW'
ENV MONGO_URL='mongodb+srv://admin:210412@placesapp-fuswh.mongodb.net/places?retryWrites=true&w=majority'
