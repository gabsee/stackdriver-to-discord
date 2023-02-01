#!/bin/sh

set +e

gcloud functions deploy stackdriver-to-discord \
    --entry-point=F \
    --memory=128MB \
    --region=europe-west2 \
    --runtime=go113 \
    --env-vars-file=.env.yaml \
    --trigger-http \
    --timeout=10s
