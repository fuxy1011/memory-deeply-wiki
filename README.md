

## 如何安装

```
npm install -g tiddlywiki //全局安装

tiddlywiki --version //测试是否安装成功

tiddlywiki wiki --init server //初始化1个服务器
```

## 如何启动

```
tiddlywiki wiki --listen //启动
```

## 如何部署

```
tiddlywiki wiki --build index //重新构建输出
```

## 如何访问

```
http://127.0.0.1:8080 //访问
```

## 其他

> 查看git远程仓库地址

```git remote -v``` 

> git配置多个远程仓库

```
git remote add github https://github.com/fuxy1011/memory-deeply-wiki.git
```

注意这里的 github 是远程仓库的ID，大家可以随便取，只要不重复就可以了。

> git 提交

```
git push (-u) github master
```

## 参考地址

[git配置多个远程地址](https://blog.csdn.net/wudajushi/article/details/52038459?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase)

## 注意

> git push 时

当多个远程仓库的时候，要带上别名。

```
git push origin
git push github
```

对于 默认的 origin，也要带上，因为直接 git push，发现码云并没有更新代码。

## 遇到的问题

> push到其他远程仓库，老是提示 版本超前，需要git pull，但是更新不下来。

原因: 之前仓库是 ssh 方式克隆的。当前仓库是 https克隆的。需要保持一致才可以。

最终解决: 将 ssh 方式 的仓库删除掉。然后用 https 重新 创建一下。

然后

```
git remote -v //查看当前本地仓库绑定的远程仓库列表
git remote remove github //删除之前添加的github的仓库
git remote -v //查看当前本地仓库绑定的远程仓库列表
git remote add github https://github.com/fuxy1011/memory-deeply-wiki.git //重新添加https类型的github仓库
git remote -v //查看当前本地仓库绑定的远程仓库列表
```

最终直接推送即可。

```
git push -u github master //推送到github的远程仓库
```