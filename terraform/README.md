# terraform
*****************************************************************

This Terraform configuration creates a Route 53 zone and A recrods under that zone
## Requirements

### Software

- [Terraform](https://www.terraform.io/)

### IAM

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "route53:GetChange",
        "route53:GetHostedZone",
        "route53:ListResourceRecordSets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "route53:ChangeResourceRecordSets"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:route53:::hostedzone/${aws_route53_zone.hashidemos_io.zone_id}"
    }
  ]
}
```

## Usage
Adjust the map variable `static_records`. An `A` record will be created per map entry.

```sh
terraform init
terraform apply
```
