package authz
import future.keywords

default allow = false

map := {"1234": ["company-one.com",
                 "company-two.org"],
        "5678": ["company-one.com",
                 "company-three.com"]}

allow if {
    endswith(input.upn, concat( "", ["@", map[input.keyid][_]] ))
}
