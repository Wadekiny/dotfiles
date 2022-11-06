
local notify = require("notify")


notify.setup(
{
    --render = "default",--default,minimal,simple see more details `:h notify.config`
    render = "minimal",--minimal,simple see more details `:h notify.config`
    stages = "fade",
    top_down = true --为了不和which key的弹窗冲突，放在上面
}
)
