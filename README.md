# OPA policies for THALES Luna Key Broker for DKE

Set of REGO files with authorization policies for THALES Luna Key Broker for DKE

## How to test policies?

Get the `opa` executable for your system as described at <https://www.openpolicyagent.org/docs/latest/#1-download-opa> and follow the commands below.

```shell
# Change int to directory of the policy you want to test
cd ./allow-existing-upn
# Run the tests
opa test . -v
```
