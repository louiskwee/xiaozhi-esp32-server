# 1. 使用原作者的基礎環境
FROM ghcr.io/xinnan-tech/xiaozhi-esp32-server:server-base

# 2. 設定工作目錄
WORKDIR /app

# 3. 複製程式碼
COPY main/xiaozhi-server .

# 4. 強制指定 Hugging Face 要求的端口 (關鍵步驟)
ENV LISTEN_PORT=7860
EXPOSE 7860

# 5. 啟動應用，並告訴程式使用 7860 端口
CMD ["python", "app.py", "--port", "7860"]
