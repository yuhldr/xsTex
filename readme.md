# 极简主题

修改自第三方，适配兰大颜色、logo，其他学校很容易适配

- 支持参考文献

## PPT


编译方法：`xelatex` 四步走

```bash
xelatex -> bibtex -> xelatex -> xelatex
```

使用例子见 [poster.tex](example/poster.tex)


<p align="center">
<a href="https://raw.githubusercontent.com/yuhldr/assets/master/xsTex/example/poster.pdf">
<img src="https://raw.githubusercontent.com/yuhldr/assets/master/xsTex/example/poster-small.png">
</a>
</p>


## 学术海报

修改自 [Gemini theme](https://github.com/anishathalye/gemini)


编译方法：`lualatex` 四步走

```bash
lualatex -> bibtex -> lualatex -> lualatex
```

使用例子见 [poster.tex](example/poster.tex)

<p align="center">
<a href="https://raw.githubusercontent.com/yuhldr/assets/master/xsTex/example/poster.pdf">
<img src="https://raw.githubusercontent.com/yuhldr/assets/master/xsTex/example/poster-small.png">
</a>
</p>

## 常用命令

查看文件位置

```bash
kpsewhich beamerouterthemeinfolines.sty
```

更新文件数据库

```bash
sudo mktexlsr
```

查看文档

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