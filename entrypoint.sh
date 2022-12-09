#!/bin/sh -l

SERVER_ADDRESS='smtp.gmail.com'
SERVER_PORT='587'

sendemail -f ${FROM_EMAIL} \
          -t ${TO_EMAIL} \
          -s "${SERVER_ADDRESS}:${SERVER_PORT}" \
          -v -v \
          -o tls=yes \
          -u ${SUBJECT} \
          -xu ${AUTHORISED_USERNAME} \
          -xp ${AUTHORISED_PASSWORD} \
          -m ${MESSAGE}