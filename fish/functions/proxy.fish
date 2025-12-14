function proxy
    set PROXY_HTTP  "http://127.0.0.1:7890"
    set PROXY_HTTPS "http://127.0.0.1:7890"
    set PROXY_SOCKS "socks5://127.0.0.1:7890"

    switch $argv[1]
        case on
            set -gx http_proxy  $PROXY_HTTP
            set -gx https_proxy $PROXY_HTTPS
            set -gx all_proxy   $PROXY_SOCKS
            set -gx HTTP_PROXY  $PROXY_HTTP
            set -gx HTTPS_PROXY $PROXY_HTTPS
            set -gx ALL_PROXY   $PROXY_SOCKS
            echo "✅ Proxy 已开启"
        case off
            set -e http_proxy
            set -e https_proxy
            set -e all_proxy
            set -e HTTP_PROXY
            set -e HTTPS_PROXY
            set -e ALL_PROXY
            echo "❎ Proxy 已关闭"
        case '*'
            echo "用法: proxy on | proxy off"
    end
end
