package authz
import future.keywords

test_user_matches_key_allowed if {
    allow with input as {"upn": "def@company-one.com", "keyid": "1234"}
}

test_user_with_no_match_on_existing_key_denied if {
    not allow with input as {"upn":"ghi@company-three.com", "keyid": "1234"}
}

test_user_with_similar_domain_on_existing_key_denied if {
    not allow with input as {"upn": "def@fakecompany-one.com", "keyid": "1234"}
}