

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
git remote add github git@github.com:fuxy1011/memory-deeply-wiki.git
```

注意这里的oschina是远程仓库的ID，大家可以随便取，只要不重复就可以了。

> git 提交

```
git push (-u) github master
```

## 参考地址

[git配置多个远程地址](https://blog.csdn.net/wudajushi/article/details/52038459?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase)