package authz
import future.keywords

# Default action is to deny access
default allow = false

whitelist := [
  "192.168.123.0/24",
  "10.0.0.0/8",
  "192.168.56.43/32"
]

# Only grant access if input ip matches a cidr in the whitelist
allow if {
  net.cidr_contains(whitelist[_], input.ipaddr)
}