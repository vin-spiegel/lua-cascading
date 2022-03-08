# lua-cascading

cascading based gui module for nekoland lua scripting inspired from css


## to do

- [ ] cascading
- [ ] receive and render from table value for Nekoland control object

## Idea

Separation between logic and style code in Nekoland

- Generate style sheet just as table

  ```lua
  -- style.lua
  local myStyle = {}

  myStyle.content = {
      anchor = 4,
      height = 100,
      width = 300,
      pivotX = .5,
      pivotY = .5
      color = Color(200,200,200)
  }

  myStyle.modal = {
      width = Client.width,
      height = Client.height,
      color = Color(0, 0, 0, 100)
  }

  return myStyle
  ```

- Apply selector from `style.lua` and rendering the value

  ```lua
  local style = require("style")
  local ui = require("ui")

  local modal = ui.Panel{
    selector = style.modal
  }

  local myContentPanel = ui.Panel{
    selector = style.content
    width = 500 -- apply cascading according to priority
    parent = modal
  }
  ```
