# �O�u��
�l��Docker�ɂ�WSL�ɂ��ڂ�������܂���B�Ȃ̂ŁA���̋L���ɊԈ���Ă���ꏊ����������R�����g�Ȃǂŋ����Ă�������m(_ _)m

# ��
OS�̊�

|����|�ڍ�|
|---|---|
|�G�f�B�V����|Windows 10 Home Insider Preview|
|�o�[�W����|2004|
|OS�r���h|20197.1000|

Docker

```
> docker --version
Docker version 19.03.12, build 48a66213fe
```

# ���̌o��
�����ʂ�Ƀp�\�R�����N������Ǝ��̂悤�ȃG���[���\������܂����B

![Docker_Desktop_WSL_distro_stopped.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/678998/c3796e1b-6368-0f0b-63d2-18f55f233957.png)

�ڍׂ͎��̒ʂ�ł��B

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

# (���Ԃ񂱂ꂪ)����
Docker���N�����ɗ���WSL2�𓮂����ۂɃ����������肸�A�G���[���������Ă���悤�ł��B

# ������
Vmmem�����������߂��Ⴍ����g���̂ŁA`.wslconfig`���g���������𐧌����Ă��܂����B���̐����ɂ���āADocker�N�����Ƀ�����������Ȃ��Ȃ����ƍl�����܂��B�Ȃ̂ŁA[������̋L��](https://qiita.com/yoichiwo7/items/e3e13b6fe2f32c4c6120)���Q�l�ɏ��������܂��B

���������O

```ruby:.wslconfig
[wsl2]
memory=6GB
swap=0
```

����������

```ruby:.wslconfig
[wsl2]
memory=10GB
swap=0
```

`memory=6GB`����`memory=10GB`�ɒ����A�ċN�������炤�܂������܂����B10GB�ɂ������R�͓��ɂȂ��̂ŁA���̕��@�ł��܂������Ȃ��ꍇ�́A���̕��@�T�����A���₷�������̗ʂ�ς��Ă݂Ă��������B

�������́A���߂��Ă��܂��񂪁A`swap=1`�ɂ��邱�Ƃł������ł��邩������܂���B`swap=1`�̈Ӗ���[������̋L��](https://qiita.com/yoichiwo7/items/e3e13b6fe2f32c4c6120)���Q�l�ɂ��Ă��������B

# ��������
�����܂œǂ�ł�������A���肪�Ƃ��������܂��B�L���ɊԈႢ������΃R�����g�Ȃǂŋ����Ă��������B

