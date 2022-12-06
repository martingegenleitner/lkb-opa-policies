package authz
import future.keywords

default allow = false

map := {"1234": ["abc@example.com",
                 "def@example.com"],
        "5678": ["abc@example.com",
                 "ghi@example.com"]}

allow if {
    input.upn == map[input.keyid][_]
}
