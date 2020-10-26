#! /bin/sh

for i in 0 1 2; do
  gcloud compute instances delete controller-${i}
done
