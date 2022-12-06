package authz

# Default action is to deny access
default allow = false

# Only grant access if input contains a upn
allow {
  input.upn
}