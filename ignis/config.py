from ignis.widgets import Widget
import os
from ignis.app import IgnisApp

app = IgnisApp.get_default()

app.apply_css(os.path.expanduser("~/.config/ignis/style.scss"))
Widget.Window(
    namespace="some-window",  # the name of the window (not title!)
    child=Widget.Calendar(
        css_classes=["cal"]
    ),  # define text here
)

