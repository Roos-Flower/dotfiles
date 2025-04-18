--------------------------------------------------------------------------------------------------------------
-- This is the statusbar, every widget, module and so on is combined to all the stuff you see on the screen --
--------------------------------------------------------------------------------------------------------------
-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
--local wibar = require("wibar")

return function(s, widgets)

  local top_left = awful.popup {
    screen = s,
    widget = wibox.container.background,
    ontop = false,
    bg = gears.color.transparent,--color["Grey900"],
    visible = true,
    border_width=1,
    border_color= beautiful.border_color_active,
    maximum_width = 1920-(5+6),--dpi(320),
    placement = function(c) awful.placement.top_left(c, { margins = dpi(5) }) end,
    shape = function(cr, width, height)
      gears.shape.rounded_rect(cr, width, height, 5)
    end
  }

  top_left:struts {
    top = 60
  }

  local function prepare_widgets(widgets)
    local layout = {
      forced_height = 45,
      layout = wibox.layout.fixed.horizontal
    }
    for i, widget in pairs(widgets) do
      if i == 1 then
        table.insert(layout,
          {
          widget,
          left = dpi(6),
          right = dpi(3),
          top = dpi(6),
          bottom = dpi(6),
          widget = wibox.container.margin
        })
      elseif i == #widgets then
        table.insert(layout,
          {
          widget,
          left = dpi(3),
          right = dpi(6),
          top = dpi(6),
          bottom = dpi(6),
          widget = wibox.container.margin
        })
      else
        table.insert(layout,
          {
          widget,
          left = dpi(3),
          right = dpi(3),
          top = dpi(6),
          bottom = dpi(6),
          widget = wibox.container.margin
        })
      end
    end
    return layout
  end

  top_left:setup{
    prepare_widgets(widgets),
    nil,
    nil,
    layout = wibox.layout.fixed.horizontal
  }
end
