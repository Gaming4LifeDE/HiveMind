-- thoughts:

-- have the option to run code sync or async



local fs = require("filesystem")

local hivemind = {}

function handshake(server, token)
    modem.send(server, port, "handshake:" .. token)

    _, _, _, port, _, checked = event.pull("modem_message")
    if checked == "valid" then
        return true
    else
        return false
end

function hivemind.run(code, server, token)
    local serializedFunction = string.dump(code)
    pcall(load(serializedFunction))

    -- check if connection is still alive

    -- upload code to server
end

function hivemind.runFile(path, server, token)
    if fs.exists(path) and fs.isDirectory(path) then
        local file = io.open(path, "r")
        local code = file:read("*all")
        file:close()
    end

    -- check if connection is still alive
    modem.send(server, port, "handshake:" .. token)
    -- upload code to server
end

function hivemind.connect(server)
    -- test connection
    _, _, _, port, _, message = event.pull("modem_message")

    -- probably have add more meta info to the message
    local token = message

    -- return the access token
    return token
end

return hivemind