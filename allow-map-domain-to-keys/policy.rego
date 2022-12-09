package authz

default allow = false

map := {"1234": ["company-one.com",
                 "company-two.org"],
        "5678": ["company-one.com",
                 "company-three.com"]}

allow {
    endswith(input.upn, concat( "", ["@", map[input.keyid][_]] ))
}
