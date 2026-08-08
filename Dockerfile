# crw (fastCRW) on Render
# Render 的 Docker Web Service 默认端口是 10000（用户未配置时）。
# 通过环境变量让 crw-server 监听 10000，与 Render 路由端口匹配。
FROM ghcr.io/us/crw:latest

ENV CRW_SERVER__PORT=10000

EXPOSE 10000