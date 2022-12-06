package authz
import future.keywords

# Default action is to deny access
default allow = false

# Only grant access if upn is from domain "example.com"
allow if {
  endswith(input.upn, "@example.com")
}