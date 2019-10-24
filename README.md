# Terraform Apply for AWS Action

This Action allows you to create, change, and improve AWS infrastructure by Terraform.

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `access_key_id` | `string` | | Your AWS access key id |
| `secret_access_key` | `string` | | Your AWS secret access key |
| `region` | `string` | | Your AWS region |
| `variables` | `string` | `""` | Comma-separated string of Terraform variables |
| `path` | `string` | `.` | Path to Terraform directory, defaults to the working directory |

## Usage

```yaml
jobs:
  provisioning:
    runs-on: ubuntu-latest
    steps:
    - uses: kciter/terraform-apply-for-aws@v1
      with:
        access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
        secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        region: ap-northeast-2
        variables: app_version=${{ github.sha }}
        path: .infra/dev
```


## License

The MIT License (MIT)

Copyright (c) 2015 Lee Sun-Hyoup