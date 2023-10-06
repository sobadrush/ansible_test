# Ansible Test
> 這是一個測試 ansible / ansible-playbook / ansible role 用的專案

【Step 1】使用 docker build 建立可 ssh 登入的 ubuntu
```bash
docker build --platform linux/amd64 -f ./Dockerfile --no-cache -t ubuntu:ssh-default .
```
【Step 2】使用 docker-compose 啟動測試環境
```bash
docker compose up -d
```
【Step 3】進入 ubuntu1，安裝 Ansible
```bash
docker exec -it e8b2832643c3 /bin/bash

# 安裝 ansible
apt install ansible
```
【其餘步驟】參考 `使用 Docker Compose 測試 Ansible`

---
## ansible-playbook 指令範例：
```bash
ansible-playbook -i my-inventory playbook-role-test-03.yaml
```