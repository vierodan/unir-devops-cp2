cd terraform
terraform destroy -auto-approve
sleep 5
cd ..
cd ansible
chmod +x clean.sh
./clean.sh