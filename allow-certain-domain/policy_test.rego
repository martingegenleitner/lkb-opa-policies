package authz
import future.keywords

test_upn_from_domain_allowed if {
    allow with input as {"upn": "max.mustermann@example.com"}
}

test_upn_from_unknown_domain_denied if {
    not allow with input as {"upn": "max.mustermann@myexample.com"}
}
