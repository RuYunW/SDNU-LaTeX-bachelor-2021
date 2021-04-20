### 山东师范大学-本科毕业论文-LaTeX模板v1.1说明

------

#### 版本说明
此版本符合最新山东师范大学本科生学位论文基本格式要求（2021），版本号为V1.1。

感谢前辈 SmartHelium 学长，2018版本请前往 [SmartHelium sdnubachelor](https://github.com/SmartHelium/sdnubachelor)。

##### 版本变化
1. 新增：`独创声明和论文使用授权书`，`致谢`；
2. 修改：`摘要`页由表格修改为普通页面，中英文摘要合为一页；
3. 删除：删除原模板表格类页面：`指导教师意见`，`评阅人意见`，`答辩委员会意见`，`毕业论文内容介绍`；
4. 页码：页码标注在页面底端页脚外侧，修改摘要页码为大写英文字母，正文页码从阿拉伯数字1起始，页眉居中打印“山东师范大学学士学位论文”；
5. 字体：三级标题字体变化：一级标题（三号粗体），二级标题（小三粗黑体），三级标题（四号粗黑体），正文（小四号宋体），英文（Times New Roman），图表标题（五号宋体）；
6. 页边距：页边距修改为上左右（2.5cm）下（2cm）；
7. 图表：图表编号按章顺序编号（如``图1-1''），标题图下表上。

##### 相关资源
1. [山东师范大学本科生毕业论文（设计）管理系统](http://sdnu.co.cnki.net/Login.html?dp=&r=1618887374195)
2. [山东师范大学本科生毕业设计封面](http://sdnu.co.cnki.net/Details.html?dp=sdnu&noticeId=1032&typeId=1224)
2. [山东师范大学本科生毕业论文封面](http://sdnu.co.cnki.net/Details.html?dp=sdnu&noticeId=1031&typeId=1224)
3. [独创声明和学位论文版权使用授权书](http://sdnu.co.cnki.net/Details.html?dp=sdnu&noticeId=1030&typeId=1224)

---

##### 快速开始

1. 文件 `sdnubachelor.tex` 中有两处需要您修改（个人基本信息），分别位于**信息部分**和**摘要部分**；
2. 在 `./data/resource/abstract.tex`撰写摘要；
3. 在 `./data/resource/article.tex` 撰写正文；
3. 在 `./data/resource/bibliography.tex`中撰写参考文件，并可在正文中引用。
4. 在 `./data/resource/appendix.tex` 中撰写附录；
5. 在 `./data/resource/thanks.tex` 中撰写致谢。


##### 目录说明

- 本文件所在目录为模版主目录，包含 `sdnubachelor.cls` 格式文件与 `sdnubachelor.tex` 源文件以及编译生成的 PDF 文件。
- `./data/img/` 目录为正文图片存储目录。
- `./data/resource/` 目录为资源目录，上表中除 `sdnubachelor.tex` 外其余 `*.tex` 文件均在此目录中，需要使用者关注编辑的 `*.tex` 文件需在此打开。
- 编译过程中会生成相关过程文件与输出文件，可酌情删除；模板建议二次编译。


##### 源文件说明

相关 `data/source/*.tex` 源文件说明如下表：

| 源文件           | 编辑说明                                                     |
| ---------------- | ------------------------------------------------------------ |
| sdnubachelor.tex | 主组织文件，用于填写相关信息字段与组织编译。**使用者需关注并进行字段填写。** |
| cover.tex        | 封面源文件，从sdnubachelor.tex中获取字段。使用者无需关注此源文件。 |
| declaration.tex     | 独创声明及学位论文使用授权书文件。**使用者需关注并在此编辑附录内容，但请注意此部分需相关学生和老师亲笔签名。** |
| abstract.tex     | 摘要源文件，从sdnubachelor.tex中获取字段。**使用者需填写摘要内容**。 |
| article.tex      | 正文内容源文件，组织正文内容。**使用者需关注并在此编辑正文内容。** |
| bibliography.tex | 参考文件源文件，组织参考文献内容。**使用者需关注并在此编辑参考文件内容。** |
| appendix.tex     | 附录源文件（非必要），组织附录内容。**使用者需关注并在此编辑附录内容。** |
| thanks.tex     | 致谢文件（非必要）。**使用者需关注并在此编辑附录内容。** |

---

#### 开发说明####

本模板基于 CTeX 的 ctexart 标准文档类开发。请确保 CTeX 安装完整，并包含有 ctexart 文档类；二者已包含在 Tex Live 发行版中，建议安装 Tex Live 的离线完整版。规范参照山东师范大学本科生学位论文基本格式要求（2021）。

#### 编译环境说明####

- 编译系统发行版：TeX Live（2017或更高）
- LaTeX编译器：XeLaTeX
- 建议编辑器：TeXstudio

---

更新日期：2021-04-20 10:47:59 