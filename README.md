# Set up

## In network dir

- Create links

```
$ cd network/
$ ln -s ../shares/provider.tf provider.tf
$ ln -s ../shares/locals.tf locals.tf
$ ln -s ../shares/vars.tf vars.tf
```

- Initialize

```
$ terraform init
```

- Plan

```
$ terraform plan --var-file ../.tfvars
```

- Apply

```
$ terraform apply --var-file ../.tfvars
```

- Destroy

```
$ terraform destroy --var-file ../.tfvars
```

## In cloud9dir

```
$ cd cloud9/
$ ln -s ../shares/provider.tf provider.tf
$ ln -s ../shares/locals.tf locals.tf
$ ln -s ../shares/vars.tf vars.tf
```

- Initialize

```
$ terraform init
```

- Plan

```
$ terraform plan --var-file ../.tfvars
```

- Apply

```
$ terraform apply --var-file ../.tfvars
```

- Destroy

```
$ terraform destroy --var-file ../.tfvars
```

## CLI

- Modify EBS volume size
```
$ aws ec2 describe-volumes --filters Name=attachment.instance-id,Values=${instance-id} --query "Volumes[*].{ID:VolumeId}" --output text 
vol-030826ba30454287a
$ aws ec2 modify-volume --volume-id ${volume-id} --size ${size}
```

## Install Terraform in Cloud9

```
$ sudo yum update
$ sudo yum install -y yum-utils shadow-utils
$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
$ sudo yum -y install terraform
```