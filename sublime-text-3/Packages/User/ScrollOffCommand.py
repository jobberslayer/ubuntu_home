import sublime, sublime_plugin

class ScrollOffCommand(sublime_plugin.TextCommand):
  def run(self, edit, forward):
    self.view.run_command(“move”, {“by”: “lines”, “forward”: forward})

        limit = abs(int(self.view.settings().get("scrolloff"))) or 5

        cursor = self.view.rowcol(self.view.sel()[0].begin())[0]
        view_top = self.view.rowcol(self.view.visible_region().begin())[0]
        view_bottom = self.view.rowcol(self.view.visible_region().end())[0]

        absolute_bottom = self.view.rowcol(self.view.size())[0]

        if cursor < view_top + limit:
            self.view.set_viewport_position((0, (view_top - 1) * self.view.line_height()))
        elif cursor <= absolute_bottom - limit and cursor >= view_bottom - limit:
            self.view.set_viewport_position((0, (view_top + 1) * self.view.line_height()))