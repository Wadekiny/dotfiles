
local notify = require("notify")

vim.notify = require("notify")

notify.setup(
{
    render = "default",--minimal,simple see more details `:h notify.config`
    stages = "fade",
    top_down = false
}
)
