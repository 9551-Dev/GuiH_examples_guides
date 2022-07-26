local GuiH = require("GuiH")

local gui = GuiH.new(term.current())

local showcase_button = gui.new.button{text=gui.text{text="",centered=true,transparent=true}}.set
    .background_color(colors.blue)
    .positioning.x(2,true).y(2,true).width(12,true).height(3)
    .on_click(function(this)
        this.text.text = "clicked !"
        gui.async(function()
            this.text.text = ""
        end,0.3)
    end)
.finish()

gui.run()
