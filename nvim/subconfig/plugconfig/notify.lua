
local notify = require("notify")
vim.notify = require("notify")


notify.setup(
{
    --render = "default",--default,minimal,simple see more details `:h notify.config`
    render = "default",--minimal,simple see more details `:h notify.config`
    stages = "fade",
    top_down = false --不和which key的弹窗冲突, 错开
}
)
