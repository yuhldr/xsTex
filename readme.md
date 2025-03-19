# 学术极简主题

修改自第三方，适配兰大颜色、logo，其他学校很容易适配

- 支持参考文献

## 使用方法

你可以直接下载这个项目，然后

- 在 [example/ppt](example/ppt) 里写ppt，
- 在 [example/book/code](example/book/code) 和 [example/book/um](example/book/um) 里写简单的册子

也可以参考 [Makefile](Makefile) 文件（按照linux写的），永久添加到系统 `texlive` 里，再也不需要每次写都到处找模板文件了

## PPT

> 修改自。。。我忘了，很久之前的了

- 编译方法：`xelatex` 四步走

    ```bash
    xelatex -> biber -> xelatex -> xelatex
    ```

- 使用例子见 [ppt.tex](example/ppt/ppt.tex)
- 预览见 [ppt.pdf](example/ppt/ppt.pdf)

## 小册子

> 比如软件著作权申请材料


- [example/book/code](example/book/code) 著作权代码
- [example/book/um](example/book/um) 著作权软件说明书


## 学术海报

> 下面说明有问题后续修改，修改自 [Gemini theme](https://github.com/anishathalye/gemini)


- 编译方法：`lualatex` 四步走

    ```bash
    lualatex -> bibtex -> lualatex -> lualatex
    ```

- 使用例子见 [poster.tex](example/poster.tex)
- 预览见 [poster.pdf](example/poster.pdf)

## 常用命令

- 查看文件位置

    ```bash
    kpsewhich beamerthemegemini.sty
    ```

- 更新文件数据库

    ```bash
    mktexlsr
    ```

- 查看文档

```bash
texdoc biblatex
```

font

- [lato](https://www.fontsquirrel.com/fonts/download/lato)
- [raleway](https://www.fontsquirrel.com/fonts/download/raleway)

ba下载的字体解压到下面的目录

```bash
mkdir ~/.fonts/tex
```

生效

```bash
mkfontscale && mkfontdir && fc-cache -fv
```
