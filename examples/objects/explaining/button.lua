-- inicialize a new gui object
local GuiH = require("GuiH")
local gui = GuiH.new(term.current())

-- makes a new empty button object with predifined text settings and grabs its setters
local showcase_button = gui.new.button{text=gui.text{text="",centered=true,transparent=true}}.set

    -- uses setter to set values to the button
    .background_color(colors.blue)

    -- makes use of the true argument to keep the setter in the positioning table
    .positioning.x(2,true).y(2,true).width(12,true).height(3)

    .on_click(function(this)

        -- sets the buttons text to "clicked !"
        this.text.text = "clicked !"

        -- schedules a function to be ran in 0.3 seconds to remove the text again
        gui.async(function()
            this.text.text = ""
        end,0.3)
    end)

-- exists the setters and returns the finished object
.finish()

-- starts execution of the gui
gui.run()
