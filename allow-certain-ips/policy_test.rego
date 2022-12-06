package authz
import future.keywords

test_ip_in_whitelist_1_allowed if {
    allow with input as { "ipaddr": "192.168.123.4" }
}

test_ip_in_whitelist_2_allowed if {
    allow with input as { "ipaddr": "192.168.56.43" }
}

test_ip_in_whitelist_3_allowed if {
    allow with input as { "ipaddr": "10.123.56.78" }
}

test_ip_not_in_whitelist_denied if {
    not allow with input as { "ipaddr": "189.56.123.90"}
}
