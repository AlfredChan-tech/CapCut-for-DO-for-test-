FROM n8nio/n8n:latest

USER root

# 安裝 Python3 和 ffmpeg (影片處理常用工具)，以備不時之需
RUN apk add --update python3 py3-pip ffmpeg

# 切換回 node 使用者
USER node

# 暴露 n8n 的預設連接埠
EXPOSE 5678

# 啟動命令
CMD ["n8n", "start"]

