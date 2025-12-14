# Dotfiles

```
██╗     ██╗  █████╗  ██████╗  ███████╗ ██╗  ██╗ ██╗ ███╗   ██╗ ██╗   ██╗
██║     ██║ ██╔══██╗ ██╔══██╗ ██╔════╝ ██║ ██╔╝ ██║ ████╗  ██║ ╚██╗ ██╔╝
██║ ██╗ ██║ ███████║ ██║  ██║ █████╗   █████╔╝  ██║ ██╔██╗ ██║  ╚████╔╝ 
██║████╗██║ ██╔══██║ ██║  ██║ ██╔══╝   ██╔═██╗  ██║ ██║╚██╗██║   ╚██╔╝  
╚███╔═███╔╝ ██║  ██║ ██████╔╝ ███████╗ ██║  ██╗ ██║ ██║ ╚████║    ██║   
 ╚══╝ ╚══╝  ╚═╝  ╚═╝ ╚═════╝  ╚══════╝ ╚═╝  ╚═╝ ╚═╝ ╚═╝  ╚═══╝    ╚═╝
```

Readme 由 Gemini 3 Pro 生成，这份仓库包含了 macOS 开发环境的配置文件 (Dotfiles)，整合了高效的命令行工具和现代化的开发软件配置。

## 🛠 软件概览

主要配置的软件列表：

| 类别 | 软件 | 描述 |
| --- | --- | --- |
| **Shell** | [Fish](https://fishshell.com/) | 现代化的 Shell，以用户友好著称 |
| **Prompt** | [Starship](https://starship.rs/) | 极简、快速、可定制的 Shell 提示符 |
| **Editor** | [Neovim](https://neovim.io/) | 基于 Lazy.nvim 的模块化配置 |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) | GPU 加速的快速终端，主要使用的终端 |
| **Terminal** | [WezTerm](https://wezfurlong.org/wezterm/) | 另一款 GPU 加速终端，作为 Kitty 的备用 |
| **File Manager** | [Yazi](https://github.com/sxyazi/yazi) | 极速的终端文件管理器，Rust 编写 |
| **Tools** | [Karabiner Elements](https://karabiner-elements.pqrs.org/) | 键盘改键工具 (macOS) |
| **Tools** | [Raycast](https://www.raycast.com/) | 替代 Spotlight 的生产力工具 |
| **Tools** | [Lazygit](https://github.com/jesseduffield/lazygit) | Git 终端图形界面 |

---

## ⚙️ 详细配置介绍

### 🐚 Shell: Fish & Starship

- **Fish Config**: `fish/config.fish`
  - **交互体验**: 启用了 `fish_vi_key_bindings`，提供类似 Vim 的命令行编辑体验
  - **环境管理**: 自动初始化 Conda 环境
  - **高效别名**: `lg` -> `lazygit` 等常用缩写
  - **路径扩展**: 自动挂载 `~/Workspace/scripts` 和 `~/Software/bin` 到 PATH
  - **自定义函数**: `fish/functions/`
    - `conda`: **懒加载优化**。拦截 `conda` 命令，仅在首次调用时初始化 Conda 环境，显著提升 Shell 启动速度。
    - `proxy`: **网络代理切换**。使用 `proxy on` 开启代理，`proxy off` 关闭代理。
    - `y`: **Yazi 集成**。Shell 包装器，在退出 Yazi 时自动 `cd` 到最后所在的目录。

- **Starship Theme**: `starship.toml`
  - 使用自定义符号表示状态 (成功 `➜`, 失败 `✗`)
  - 显示 Git 分支、Username、Hostname、Ruby/Python/Node 解释器版本等信息

### 📝 Editor: Neovim

- **路径**: `nvim/`
- **核心架构**:
  - ⚡️ **Lazy.nvim**: 现代化的插件管理器，支持按需加载，启动速度飞快
  - 🧩 **模块化设计**: 所有配置位于 `lua/` 目录下，结构清晰
    - `lua/core/`: 基础设置 (Options, Keymaps, Autocommands)
    - `lua/plugins/`: 插件清单与配置 (Treesitter, Telescope, etc.)
  - 🧠 **预设功能**: 内置 LSP (Language Server Protocol) 支持，开箱即用的代码补全和诊断

### 🖥️ Terminal: WezTerm & Kitty

这两款终端配置风格高度统一，均采用 **Kanagawa Dragon** 主题。

- **WezTerm** (`wezterm/wezterm.lua`)
  - 字体: **JetBrainsMono Nerd Font**, 15pt
  - 配色: Kanagawa Dragon (Gogh)
  - 界面: 启用了 Fancy Tab Bar，去除了多余的窗口装饰 (`RESIZE` mode)
  - 针对 macOS 进行了模糊背景效果优化 (`macos_window_background_blur = 100`)

- **Kitty** (`kitty/kitty.conf`) - **主力终端**
  - 🚀 **性能**: 基于 GPU 渲染，极度流畅
  - 🎨 **视觉**:
    - 主题: **Kanagawa Dragon** (高对比度深色主题)
    - **光标特效**: 启用了 `cursor_trail` (1.0) 和 `cursor_trail_decay`，打字时带有平滑的拖尾效果
    - **背景模糊**: `background_blur 20`，提供沉浸式毛玻璃质感
  - ⌨️ **字体**: **JetBrains Mono** (15pt)，开启连字 (Ligatures) 支持
  - 📑 **标签页**: 顶部 Powerline 风格 Tab Bar，支持 Cmd+1~9 快速切换

### 📂 File Manager: Yazi

- **路径**: `yazi/`
- **配置**:
  - `theme.toml`: 定制了 Yazi 的外观主题
  - `yazi.toml`: 定义了文件打开规则 (Opener)，例如在 Unix 系统下默认使用 `nvim` 编辑文件

### 🔧 Utility Tools

- **Karabiner Elements** (`karabiner/karabiner.json`)
  - **按键映射**: 将 `Caps Lock` 映射为 `Escape` (且 `Escape` 映射回 `Caps Lock`)，这是 Vim 用户的经典配置，提升编辑效率。

- **Raycast** (`raycast/`)
  - 包含 `extensions` 目录，用于同步和备份 Raycast 插件配置。

- **Lazygit** (`lazygit/`)
  - 优秀的 Git TUI 工具，通过 shell alias `lg` 快速启动。
