date
cur=`pwd`
dirs="tf-setup net iam c9net cluster nodeg cicd eks-cidr lb2 sampleapp"
for i in $dirs; do
cd ../$i
echo " "
echo "**** Building in $i ****"
rm -rf .terraform
rm -f terraform.tfstate* tfplan
terraform init -no-color
terraform plan -out tfplan -no-color
terraform apply tfplan -no-color
cd $cur
date
done
exit