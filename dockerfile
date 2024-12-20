# ベースイメージとして公式の Python イメージを使用
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /dockerpractice

# 必要なファイルをコンテナ内にコピー
COPY requirements.txt requirements.txt
COPY app.py app.py

# 必要なPythonパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションを起動する
CMD ["python", "app.py"]