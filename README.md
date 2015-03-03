## 目錄

  * vendor- 字首的目錄代表目一個 vendor 的 docker image builder
  * project 是專案原始碼位置

## Image Builder

每個 vendor builder 目錄結構如下：

```
vendor-{name}/
├── Dockerfile
├── build-image.sh
└── scripts
    ├── bashrc
    └── build-libraries.sh
```

`{name}` 即為 vendor 名稱，為配合 docker image 命名規則，只能有小寫字母與數字。

  * Dockerfile 即為 docker script
  * build-image.sh 為 build image 的 script 會呼叫 docker build 建立目錄
  * scripts/bashrc 為環境變數，除了 PS1 設定為，最重要的是 VENDOR 變數，需與 `{name}` 相同
    ```
    export VENDOR=raspberrypi
    ```
  * build-libraries.sh 編譯相依 libraries 的 script (實務上可能會拆成多個檔)

## Helper Scripts

project 範例結構如下：

```
project/
├── CMakeLists.txt
├── build.sh
├── cmake-modules
│   └── FindFFMPEG.cmake
├── docker-build.sh
├── docker-run.sh
├── main.c
└── toolchains
    └── {vendor-name}.cmake
```

  * build.sh 即為專案編譯的 script (呼叫 cmake 產生 Makefile 並執行 make)，會依 VENDOR 環境變數決定是否要使用 toolcahin 設定
  * docker-build.sh 啟動 docker container 後，並執行 build.sh
  * docker-build.sh 啟動 docker container 後，執行 /bin/bash (可作為互動模式使用)


## 相關資訊

  * 活動訊息 [Sharing Night: Docker to Link](http://www.meetup.com/pythonhug/events/220493415/)
  * 投影片 on [SpeakerDeck](https://speakerdeck.com/qrtt1/linking-error)
  * 投影片 on [SlideShare](http://www.slideshare.net/qrtt1/linking-error)

