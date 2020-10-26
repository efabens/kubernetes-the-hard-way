#! /bin/sh

gcloud="/home/elifab/google-cloud-sdk/bin/gcloud"

$gcloud compute addresses delete kubernetes-the-hard-way

$gcloud compute addresses list --filter="name=('kubernetes-the-hard-way')"