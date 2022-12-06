package authz
import future.keywords

test_existing_upn_allowed if {
    allow with input as {"upn": "max.mustermann@some-organization.com"}
}

test_no_upn_denied if {
    not allow with input as {"keyid": "1237869876123"}
}
