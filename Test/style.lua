--style sheet 사용예제
local ui = require("ui")

-- Case 1
local myStyle1 = ui()

myStyle1 {
    anchor = 1,
    height = 100,
    width = 100,
    x = 100,
    y = 100,
    pivotX = .5,
    pivotY = .5
}

-- Case 2
local myStyle2 =
    ui {
    anchor = 1,
    height = 100,
    width = 100,
    x = 100,
    y = 100,
    pivotX = .5,
    pivotY = .5
}

-- Case 3
ui.myStyle3 = {
    anchor = 1,
    height = 100,
    width = 100,
    x = 100,
    y = 100,
    pivotX = .5,
    pivotY = .5
}

-- return ui

-- Case 4
local myStyle4 = {
    anchor = 1,
    height = 100,
    width = 100,
    x = 100,
    y = 100,
    pivotX = .5,
    pivotY = .5
}

return myStyle4
