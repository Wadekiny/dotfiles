# Conda 懒加载函数
function conda
    # 执行 conda 初始化
    if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
        eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" | source
    else
        if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
            source "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        else
            set -gx PATH "/opt/homebrew/Caskroom/miniconda/base/bin" $PATH
        end
    end
    
    # 调用真正的 conda 命令（此时已被 hook 重新定义）
    conda $argv
end
