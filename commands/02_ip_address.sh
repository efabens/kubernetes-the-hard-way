#! /bin/sh

gcloud="/home/elifab/google-cloud-sdk/bin/gcloud"

$gcloud compute addresses create kubernetes-the-hard-way \
  --region "$(gcloud config get-value compute/region)"

$gcloud compute addresses list --filter="name=('kubernetes-the-hard-way')"