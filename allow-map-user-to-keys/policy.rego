package authz

default allow = false

map := {"1234": ["abc@example.com",
                 "def@example.com"],
        "5678": ["abc@example.com",
                 "ghi@example.com"]}

allow {
    input.upn == map[input.keyid][_]
}
