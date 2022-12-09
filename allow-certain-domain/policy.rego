package authz

# Default action is to deny access
default allow = false

# Only grant access if upn is from domain "example.com"
allow {
  endswith(input.upn, "@example.com")
}