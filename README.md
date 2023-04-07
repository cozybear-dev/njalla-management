# njalla-management
Njalla managed by Terraform

Primarily used for fastly changing records, like my tor-fleet.

.env.example has two options;

- on disk
- fetch it using unlocked Bitwarden CLI

If you care about security, use Bitwarden CLI option.

To import in your shell;

```
source .env
```

Example import;

```
terraform import njalla_record_a.tor_nodes\[\"node9\"\] shadowbrokers.eu:123456
```