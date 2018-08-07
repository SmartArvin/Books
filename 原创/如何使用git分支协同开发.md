# 如何使用git分支协同开发？



> 做开发是一个严谨的事情，对代码要心存敬畏。
>
> 尤其是我们做系统开发不同于互联网应用开发，没办法做到高频率的线上修复，所以在成熟方案基础上做派生开发一定要确保功能正常后才可以同步代码到库。因此，派生开发引入分支协同开发流程。



### 一、完整的分支协同开发流程简介

> philips_str为分支名称示例

#### 1.1、首先创建本地分支

> git checkout -b: 创建原来不存在的分支philips_str，并切换至该branch

- git checkout -b philips_str



#### 1.2、将本地分支推送至远程，team可以共享分支协同开发

> 将philips_str推送至远程分支，其他同事可以git pull同步至本地

- git push origin philips_str:philips_str



#### 1.3、拉取远程分支至本地

> 将远程philips_str分支克隆至本地服务器

- git fetch origin philips_str:philips_str



#### 1.4、设置远程分支与本地分支关联

> 设置远程分支与本地分支关联，然后可以push提交对策和pull分支的提交记录

- git branch --set-upstream-to=origin/philips_str  philips_str



#### 1.5、在分支提交等git操作

> 分支内提交、撤销等操作同主分支操作一样

- git status
- git add xxxx
- git rm -rf xxxx
- git commit -m "xxxxx"
- git  push
- git pull



#### 1.6、合并分支近期对策至主分支master

> 加上--no-ff 参数，会保留分支记录，推荐加上--no-ff 

- git merge philips_str  --no-ff
- 或git merge philips_str 

> note: 
>
> merge过程中如果有修改冲突，请先解决冲突修改，然后再次merge
>
> 如果没有冲突文件，在merge过程中会出现如下界面（中/英文）：
>
> ![merge](F:\Android三组资源共享\技术文档资料汇总\git操作相关资料\如何使用git分支协同开发\md\merge.png)
>
> 该界面需要操作者编辑commit信息，编辑操作如下：
>
> - linux下不需要键入 i 就可以直接输入merge信息
> - 输入merge信息完成后直接ctrl+x，然后终端会提示是否保存最新缓冲区，选择保存（输入Y）
> - 然后直接Enter,退出编辑就可以了
> - 最后你就会看到一堆 正常 merge 的信息 ，至此merge完成



#### 1.7、删除远程分支

> 分支开发完成并合并对策至主分支master之后请删除远程分支
>
> Note：切忌在分支未合并至主分支前不要删除远程分支修改，避免代码丢失

- git push origin --delete  philips_str



### 二、分支操作常用命令列表

- git branch	【查看当前分支】
- git branch -a  【查看所有分支，本地分支和远程分支】
- git checkout -b philips_str  【新建分支】
- git checkout  philips_str  【切换至分支】
- git branch -D philips_str  【D大写，强制删除本地分支】
- git push origin philips_str:philips_str   【将本地新建分支推送到远程】
- git branch --set-upstream-to=origin/philips_str  philips_str  【设置远程分支与本地分支关联可追踪，然后可以push分支修改和pull分支的提交记录】
- git push origin --delete  philips_str  【删除远程分支】
- git fetch origin philips_str:philips_str  【拉取远程分支至本地】
- git rebase master  【跟踪同步主分支更新至分支】
- git rebase  --continue  【rebase中断后可以继续rebase】
- git rebase  --abort  【放弃rebase】