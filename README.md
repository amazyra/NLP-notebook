## What's this?
This repository provides kits and samples to easily get started experimenting with natural language processing in Japanese, based on the Data Science Book.  
このリポジトリでは、日本語自然言語処理の実験を簡単に始めるためのキットとサンプルを提供しています。  

## Requirements
This repository uses `docker` and `docker-compose` as the environment.  
このリポジトリでは、環境として`git`, `docker`および`docker-compose`を利用しています。  


## How to Use
### Requirements
This repository uses `docker` and `docker-compose` as the environment.  
Please install based on the following references.

このリポジトリでは、環境として`git`, `docker`および`docker-compose`を利用しています。  
以下にあげるリファレンスを元にインストールを実施してください。


- git
    - [git for windows](https://gitforwindows.org/)
    - [Download for macOS](https://git-scm.com/download/mac)
    - [Download for Linux and Unix](https://git-scm.com/download/linux)
- Docker & Docker-compose
    - [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/)
    - [Install Docker Desktop on Mac](https://docs.docker.com/docker-for-mac/install/)
    - [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

### download repository
Clone the repository to your PC.  
このリポジトリをお手元のPCにクローンしてください。
```
git clone git@github.com:amazyra/NLP-notebook-in-JAPANESE.git
```
The repository will be downloaded to the `NLP-notebook-in-JAPANESE` folder in the directory where the clone was executed.
Please work in this directory.  
  
リポジトリは、クローンを実行したディレクトリ内の`NLP-notebook-in-JAPANESE`フォルダにダウンロードされます。
以降はこのディレクトリ内で作業を行ってください。

### password settings
JupyterNotebook has a password to prevent unauthorized access.  
You can set a hashed password on line 286 of `./libraries/settings/jupyter_notebook_config.py`.  
  
JupyterNotebookでは、不正アクセス防止のためパスワードが設定されています。  
`./libraries/settings/jupyter_notebook_config.py`の286行目でハッシュ化したパスワードを設定できます。  

```python
# Hashed password to use for web authentication.
#
#  To generate, type in a python/IPython shell:
#
#    from notebook.auth import passwd; passwd()
#
#  The string should be of the form type:salt:hashed-password.
c.NotebookApp.password = "<Enter the hashed password obtained using the above code here>"
```
```python
# ウェブ認証に使用するハッシュ化されたパスワード
#
#  生成するには, python/IPythonシェルで以下の内容を入力してください
#
#    from notebook.auth import passwd; passwd()
#
#  文字列は次の形式になるはずです type:salt:hashed-password
c.NotebookApp.password = "<ここに、上記コードを利用して得たハッシュ化パスワードを入力する>"
```

### build docker image
Execute the following command. The execution environment will be set up on your PC.  
以下のコマンドを実行してください。実行環境がお手元のPCで構築されます。  
```
docker-compose up
```

After the build is complete, go to `http://localhost:80`.  
If you see the JupyterNotebook logo, you've succeeded.  
Login with the password you set up as set above.  
  
構築が完了した後、`http://localhost:80`にアクセスしてください。  
JupyterNotebookのロゴが表示されると成功です。  
先程設定したパスワードで、ログインしてください。  

### where is example notebooks?
![Home](/wiki/home_page.PNG)

- The `example_experiments` shown here are the `experiments/example_experiments/` in the repository. 
- ここに表示されている`example_experiments`はリポジトリでの`./experiments/example_experiments/`とシェアされています。
 
- See `README.md` in each folder in `example_experiments` for instructions
- 使い方は`example_experiments`内にある各フォルダの`README.md`を御覧ください
