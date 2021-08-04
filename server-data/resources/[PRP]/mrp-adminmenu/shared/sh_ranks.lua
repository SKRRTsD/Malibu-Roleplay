PRP.Admin:AddRank("owner", {
    inherits = "dev",
    issuperadmin = true,
    allowafk = true,
    grant = 101
})

PRP.Admin:AddRank("dev", {
    inherits = "spec",
    issuperadmin = true,
    allowafk = true,
    grant = 100
})

PRP.Admin:AddRank("spec", {
    inherits = "admin",
    issuperadmin = true,
    allowafk = true,
    grant = 99
})

PRP.Admin:AddRank("admin", {
    inherits = "moderator",
    allowafk = true,
    isadmin = true,
    grant = 98
})

PRP.Admin:AddRank("moderator", {
    inherits = "trusted",
    isadmin = true,
    grant = 97
})

PRP.Admin:AddRank("trusted", {
    inherits = "user",
    isadmin = true,
    grant = 96
})

PRP.Admin:AddRank("user", {
    inherits = "",
    grant = 1
})