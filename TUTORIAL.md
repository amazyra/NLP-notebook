## Requirements
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

## download repository
Clone the repository to your PC.  
このリポジトリをお手元のPCにクローンしてください。
```
git clone git@github.com:amazyra/NLP-notebook-in-JAPANESE.git
```
The repository will be downloaded to the `NLP-notebook-in-JAPANESE` folder in the directory where the clone was executed.
Please work in this directory.  
  
リポジトリは、クローンを実行したディレクトリ内の`NLP-notebook-in-JAPANESE`フォルダにダウンロードされます。
以降はこのディレクトリ内で作業を行ってください。

## build docker image
Execute the following command. The execution environment will be set up on your PC.  
以下のコマンドを実行してください。実行環境がお手元のPCで構築されます。  
```
docker-compose up
```
If you see the following line, you can see that it was built successfully. (The `*` means token. I have masked it with `*` to hide it).  
  
以下の行が表示されると、正常に構築されていることがわかります。（`*`はtokenを意味する。非表示とするため、`*`でマスクした。）  
```
notebook_1  |     To access the notebook, open this file in a browser:
notebook_1  |         file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
notebook_1  |     Or copy and paste one of these URLs:
notebook_1  |         http://3d09e7dc9ff6:8888/?token=************************************************
notebook_1  |      or http://127.0.0.1:8888/?token=************************************************
```

After the build is complete, go to `http://127.0.0.1:8888/?token=************************************************`.  
  
構築が完了した後、表示された行に書かれているURL
`http://127.0.0.1:8888/?token=************************************************`にアクセスしてください。  

## where is example notebooks?
![Home](/wiki/home_page.PNG)

The `example_experiments` shown here are the `experiments/example_experiments/` in the repository. 
ここに表示されている`example_experiments`はリポジトリでの`./experiments/example_experiments/`とシェアされています。
   
See `README.md` in each folder in `example_experiments` for instructions
使い方は`example_experiments`内にある各フォルダの`README.md`を御覧ください

[<< Back to README](/README.md)