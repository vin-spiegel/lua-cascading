-- Style Sheet Test
local ui = require("ui-style.init")

local test =
    ui.Panel {
    width = 100,
    height = 100,
    color = Color(255, 0, 0)
}

local test2 =
    ui.Button {
    color = Color(0, 255, 0)
}

function testCode(tbl)
    print("width:", tbl.width)
    print("height:", tbl.height)
end

-- testCode(test)
-- testCode(test2)
