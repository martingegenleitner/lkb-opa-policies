package authz
import future.keywords

test_user_matches_key_allowed if {
    allow with input as {"upn": "def@example.com", "keyid": "1234"}
}

test_user_with_no_match_on_existing_key_denied if {
    not allow with input as {"upn":"ghi@example.com", "keyid": "1234"}
}
