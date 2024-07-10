cd terraform
terraform init
sleep 3
terraform plan -out=tfplan
sleep 3
terraform apply "tfplan"
sleep 15
cd ..
cd ansible
chmod +x configure.sh
./configure.sh
sleep 120
kubectl get services -n avrakscp2