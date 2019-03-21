# Simple EC2 with Security Group and RDS

This project use [Terraform](https://terraform.io/) to provide an instance on Amazon AWS using a security group and RDS.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Clone the project with the command below and follow the next steps to configure your environment:

``` console
$ git clone git@github.com:allangrds/Terraform-Studies.git
```

### Terraform

Install [Terraform](www.terraform.io) following the [official guide](https://www.terraform.io/intro/getting-started/install.html). After that, run the command below to verify the installation:

```console
$ terraform

Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

```

### AWS
Finally, the last step. You need to have [aws-cli](https://docs.aws.amazon.com/cli/latest/userguide/installing.html) to execute the commando below. This command will save your Access Key and Secret Key to allow Terraform to build your infrastructure.

```
$ aws configure
AWS Access Key ID [None]:
AWS Secret Access Key [None]:
```