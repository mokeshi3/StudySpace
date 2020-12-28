# 前置き
僕はDockerにもWSLにも詳しくありません。なので、この記事に間違っている場所があったらコメントなどで教えてくださいm(_ _)m

# 環境
OSの環境

|項目|詳細|
|---|---|
|エディション|Windows 10 Home Insider Preview|
|バージョン|2004|
|OSビルド|20197.1000|

Docker

```
> docker --version
Docker version 19.03.12, build 48a66213fe
```

# 事の経緯
いつも通りにパソコンを起動すると次のようなエラーが表示されました。

![Docker_Desktop_WSL_distro_stopped.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/678998/c3796e1b-6368-0f0b-63d2-18f55f233957.png)

詳細は次の通りです。

```
WSL distro stopped while waiting for Lifecycle server.
  >Stdout:

  >Stderr:
2020/08/27 02:10:49 resolving /mnt/host/c/Program Files/Docker/Docker/resources/wsl/docker-wsl-cli.iso...
Error: mounting wslCLIDest: stat /mnt/host/c/Program Files/Docker/Docker/resources/wsl/docker-wsl-cli.iso: no such file or directory
2020/08/27 02:10:49 stat /mnt/host/c/Program Files/Docker/Docker/resources/wsl/docker-wsl-cli.iso: no such file or directory
mounting wslCLIDest
main.doRun
	/go/src/github.com/docker/pinata/linuxkit/pkg/wsl-bootstrap/main.go:224
main.run.func1
	/go/src/github.com/docker/pinata/linuxkit/pkg/wsl-bootstrap/main.go:83
github.com/docker/pinata/vendor/github.com/spf13/cobra.(*Command).execute
	/go/src/github.com/docker/pinata/vendor/github.com/spf13/cobra/command.go:762
github.com/docker/pinata/vendor/github.com/spf13/cobra.(*Command).ExecuteC
	/go/src/github.com/docker/pinata/vendor/github.com/spf13/cobra/command.go:852
github.com/docker/pinata/vendor/github.com/spf13/cobra.(*Command).Execute
	/go/src/github.com/docker/pinata/vendor/github.com/spf13/cobra/command.go:800
main.main
	/go/src/github.com/docker/pinata/linuxkit/pkg/wsl-bootstrap/main.go:25
runtime.main
	/usr/local/go/src/runtime/proc.go:203
runtime.goexit
	/usr/local/go/src/runtime/asm_amd64.s:1357
```

# (たぶんこれが)原因
Dockerが起動時に裏でWSL2を動かす際にメモリが足りず、エラーが発生しているようです。

# 解決策
Vmmemがメモリをめちゃくちゃ使うので、`.wslconfig`を使いメモリを制限していました。この制限によって、Docker起動時にメモリが足りなくなったと考えられます。なので、[こちらの記事](https://qiita.com/yoichiwo7/items/e3e13b6fe2f32c4c6120)を参考に書き直します。

書き直し前

```ruby:.wslconfig
[wsl2]
memory=6GB
swap=0
```

書き直し後

```ruby:.wslconfig
[wsl2]
memory=10GB
swap=0
```

`memory=6GB`から`memory=10GB`に直し、再起動したらうまくいきました。10GBにした理由は特にないので、この方法でうまくいかない場合は、他の方法探すか、増やすメモリの量を変えてみてください。

もしくは、ためしていませんが、`swap=1`にすることでも解決できるかもしれません。`swap=1`の意味は[こちらの記事](https://qiita.com/yoichiwo7/items/e3e13b6fe2f32c4c6120)を参考にしてください。

# さいごに
ここまで読んでくださり、ありがとうございます。記事に間違いがあればコメントなどで教えてください。

