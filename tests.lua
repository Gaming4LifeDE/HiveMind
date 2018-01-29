function run(code)
    local serializedFunction = string.dump(code)
    pcall(load(serializedFunction))
end


function test()
    print("hi")
    print("hello")
end

run(test)