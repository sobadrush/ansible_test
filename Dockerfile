# 使用官方的 Ubuntu 作为基础镜像
FROM ubuntu:latest

# 安装 Telnet
RUN apt-get update && apt-get install -y telnet && apt install -y iputils-ping && apt-get install -y openssh-server

# 啟動 SSH 服務
RUN service ssh start

# 開放 22 port
EXPOSE 22

# 保持容器运行
CMD ["tail", "-f", "/dev/null"]
