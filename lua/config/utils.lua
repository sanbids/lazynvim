local M = {}

function M.toggle_ui_notifications() -- TODO: rename to toggle_notifications in AstroNvim v4
  vim.g.ui_notifications_enabled = not vim.g.ui_notifications_enabled
end

return M
