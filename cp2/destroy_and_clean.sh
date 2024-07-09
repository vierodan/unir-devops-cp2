cd terraform
terraform destroy -auto-approve
sleep 5
cd ..
cd ansible
./clean.sh