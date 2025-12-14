
local notify = require("notify")
vim.notify = require("notify")


notify.setup(
{
    fps = 60,
    timeout=1000,
    --render = "default",--default,minimal,simple see more details `:h notify.config`
    render = "compact",--minimal,simple see more details `:h notify.config`
    stages = "fade",
    top_down = true --不和which key的弹窗冲突, 错开
}
)
