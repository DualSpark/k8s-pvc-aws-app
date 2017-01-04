# K8s example app using PV

Example application using PVC in AWS

## Commands used in testing

```
aws autoscaling suspend-processes --auto-scaling-group-name nodes.liea-ginny.dev.datapipe.io --scaling-processes Launch
ID=$(aws ec2 describe-instances --filter Name=network-interface.private-ip-address,Values=$(kubectl get po -o jsonpath='{.items[0].status.hostIP}') --query "Reservations[0].Instances[0].InstanceId" | sed 's/"//g')
aws ec2 reboot-instances --instance-ids $ID
# or
aws ec2 stop-instances --instance-ids $ID
```
