-- thoughts:

-- have the option to run code sync or async



local fs = require("filesystem")

local server

local hivemind = {}

function hivemind.run(code)
    local serializedFunction = string.dump(code)
    pcall(load(serializedFunction))

    -- check if connection is still alive

    -- upload code to server
end

function hivemind.runFile(path)
    if fs.exists(path) and fs.isDirectory(path) then
        local file = io.open(path, "r")
        local code = file:read("*all")
        file:close()
    end

    -- check if connection is still alive

    -- upload code to server
end

function hivemind.connect(serveraddress)
    -- test connection
    server = serveraddress
end

return hivemind