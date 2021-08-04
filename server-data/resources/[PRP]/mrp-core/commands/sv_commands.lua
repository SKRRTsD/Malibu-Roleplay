PRP.Commands = PRP.Commands or {}
PRP.Commands.Registered = PRP.Commands.Registered or {}

AddEventHandler("mrp-core:exportsReady", function()
    addModule("Commands", PRP.Commands)
end)
