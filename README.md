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

## In instance dir

```
$ cd instance/
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
