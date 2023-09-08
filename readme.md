# 学术极简主题

修改自第三方，适配兰大颜色、logo，其他学校很容易适配

- 支持参考文献

## 使用方法

你可以直接下载这个项目，然后

- 把 [example/ppt.tex](example/ppt.tex) 和 [example/database.bib](example/database.bib) 复制在在 `ppt文件夹` 里写ppt，
- 把 [example/poster.tex](example/poster.tex) 和 [example/database.bib](example/database.bib) 复制在 `poster文件夹` 里写学术海报

也可以参考 [Makefile](Makefile) 文件（按照linux写的），永久添加到系统 `texlive` 里，再也不需要每次写都到处找模板文件了

## PPT

> 修改自。。。我忘了，很久之前的了

- 编译方法：`xelatex` 四步走

    ```bash
    xelatex -> bibtex -> xelatex -> xelatex
    ```

- 使用例子见 [ppt.tex](example/poster.tex)
- 预览见 [poster.pdf](example/poster.pdf)


## 学术海报

> 修改自 [Gemini theme](https://github.com/anishathalye/gemini)


- 编译方法：`lualatex` 四步走

    ```bash
    lualatex -> bibtex -> lualatex -> lualatex
    ```

- 使用例子见 [poster.tex](example/poster.tex)
- 预览见 [poster.pdf](example/poster.pdf)

## 常用命令

- 查看文件位置

    ```bash
    kpsewhich beamerouterthemeinfolines.sty
    ```

- 更新文件数据库

    ```bash
    sudo mktexlsr
    ```

- 查看文档

    ```bash
    texdoc biblatex
    ```