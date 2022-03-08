--Nekoland Methods
-- local dostring = Client.DoString

local nekolandControl = {
    Panel = Panel,
    Button = Button
}

local control = {}

-- to-do: 인스턴스 찍어 보내기
-- default Value for cascading
---@type table<string, any>
control.__index = {
    type = "BaseControl",
    width = 50,
    height = 50,
    color = Color(255, 255, 255)
}

---@param tbl table<string, any>
local function build(tbl)
    local obj = nekolandControl[tbl.type]()

    obj.width = tbl.width
    obj.height = tbl.height
    obj.color = tbl.color
end

---@param lastVar table<string, any>
---@param curVar table<string, any>
function control.__call(lastVar, curVar)
    for i, v in pairs(curVar) do
        lastVar[i] = v
    end
    build(lastVar)
    return lastVar
end

return {
    Panel = setmetatable({type = "Panel"}, control),
    Button = setmetatable({type = "Button"}, control)
}
