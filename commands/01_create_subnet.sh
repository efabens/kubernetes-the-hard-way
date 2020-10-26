#! /bin/sh

set -e

# Create the network
gcloud compute networks create kubernetes-the-hard-way --subnet-mode custom

# Create the subnet
gcloud compute networks subnets create kubernetes \
  --network kubernetes-the-hard-way \
  --range 10.240.0.0/24

# Create the firewalls
## Internal 
gcloud compute firewall-rules create kubernetes-the-hard-way-allow-internal \
  --allow tcp,udp,icmp \
  --network kubernetes-the-hard-way \
  --source-ranges 10.240.0.0/24,10.200.0.0/16

## External
gcloud compute firewall-rules create kubernetes-the-hard-way-allow-external \
  --allow tcp:22,tcp:6443,icmp \
  --network kubernetes-the-hard-way \
  --source-ranges 0.0.0.0/0
# Above allows all traffic?
# Below would be for only my home ip ?
  # --source-ranges 97.115.116.168/32 



