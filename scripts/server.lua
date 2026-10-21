local config = require 'config'

local function createJob(name, description, salary)
    -- Job creation logic on the server side
    print(string.format('Job created on server: %s - %s - Salary: %d', name, description, salary))
end

RegisterCommand('createjob', function(source, args, rawCommand)
    if #args < 3 then
        print('Usage: /createjob <name> <description> <salary>')
        return
    
    local name = args[1]
    local description = args[2]
    local salary = tonumber(args[3])
    
    if not salary then
        print('Salary must be a number')
        return
    end
    
    createJob(name, description, salary)
end, false)