# HEUThesis - 哈尔滨工程大学本科毕业论文 LaTeX 模板

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![LaTeX](https://img.shields.io/badge/LaTeX-2021+-blue.svg)](https://www.latex-project.org/)
[![XeLaTeX](https://img.shields.io/badge/XeLaTeX-3.1+-green.svg)](https://texlive.org/)

哈尔滨工程大学**本科**毕业论文 XeLaTeX 模板，严格遵循学校论文格式规范要求。

> 本项目基于 [Li-Wenhui/HEUThesis](https://github.com/Li-Wenhui/HEUThesis) 进行特化优化，专门针对本科生毕业论文需求进行定制开发。

## 📋 目录

- [项目特色](#项目特色)
- [快速安装](#快速安装)
- [使用教程](#使用教程)
- [编译指南](#编译指南)
- [常见问题](#常见问题)
- [更新日志](#更新日志)
- [贡献指南](#贡献指南)
- [联系支持](#联系支持)

## ✨ 项目特色

- 🎯 **规范严格**: 完全符合哈尔滨工程大学论文格式规范
- 🎓 **专注本科**: 专门针对本科生毕业论文格式要求优化
- 🌐 **跨平台**: 支持 Windows、macOS、Linux 系统
- 🎨 **字体丰富**: 支持多种字体配置，自动检测系统字体
- 📖 **文档完善**: 详细的使用说明和示例代码
- 🔧 **编译便捷**: 提供多种编译方式，支持自动化脚本
- 📱 **现代设计**: 采用现代 LaTeX 技术，编译稳定高效

## 🚀 快速安装

### 环境要求

**必需软件**：
- **TeX Live** (推荐 2021 及以上版本)
  - Windows: [下载地址](https://www.tug.org/texlive/)
  - macOS: `brew install --cask mactex`
  - Linux: `sudo apt-get install texlive-full`

**编译方式**：XeLaTeX → BibTeX → XeLaTeX → XeLaTeX

**系统支持**：Windows / macOS / Linux

### 快速开始

1. **克隆项目**
   ```bash
   git clone https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
   cd HEU-Bachelor-Latex-Opt
   ```

2. **配置个人信息**
   编辑 `front/cover.tex` 文件，填写您的个人信息

3. **编译论文**
   - Windows: 双击运行 `build.bat`
   - Linux/macOS: 执行 `make build`

4. **查看结果**
   生成的 PDF 文件位于项目根目录

### 2. 项目结构

```
.
├── main.tex              # 主文件，设置文档类和全局选项
├── spine.docx            # 书脊模板文件（Word格式，需手动转PDF）
├── spine.tex             # 书脊LaTeX源文件
├── front/
│   └── cover.tex         # 封面信息配置（论文标题、作者、导师等）
├── body/
│   ├── chap01.tex        # 第1章 绪论
│   ├── chap02.tex        # 第2章
│   ├── chap03.tex        # 第3章
│   └── ...               # 其他章节
├── back/
│   ├── conclusion.tex    # 结论
│   ├── acknowledgements.tex  # 致谢
│   └── publications.tex  # 成果
├── figures/              # 图片目录
├── reference.bib         # 参考文献数据库
├── heuthesisbook.cls     # 文档类文件
├── heuthesis.sty         # 宏包文件
├── Makefile              # Linux/macOS 编译脚本
└── build.bat             # Windows 编译脚本
```

### 3. 快速开始

#### 3.1 配置文档类选项 (main.tex)

```latex
\documentclass[type=bachelor,fontset=windows]{heuthesisbook}
```

**文档类型**：
- 本项目已固定为 `type=bachelor`，专门用于本科生毕业论文

**选填选项**：
- `fontset=windows|mac|ubuntu|fandol|adobe` - 字体设置
- `tocfour=true|false` - 是否添加四级目录（本科文科可能需要）
- `subtitle=true|false` - 是否有副标题
- `openright=true|false` - 章节首页是否奇数页开始
- `pageempty=true|false` - 空白页是否无页眉页脚
- `engtoc=true|false` - 是否需要英文目录

#### 3.2 填写封面信息 (front/cover.tex)

```latex
\heusetup{
  % 中文信息
  ctitlecover={论文题目\需要换行用双反斜杠},
  ctitle={论文题目（页眉用，不换行）},
  csubject={专业名称},
  caffil={学院名称},
  cauthor={作者姓名},
  csupervisor={导师姓名},
  cprofessional={导师职称},
  csubmitdate={提交日期},
  coralexdate={答辩日期},
  cstudentid={学号},
  % 英文信息
  etitle={English Title},
  % 关键词
  ckeywords={关键词1, 关键词2, 关键词3},
  ekeywords={keyword1, keyword2, keyword3},
}
```

#### 3.3 编写章节内容 (body/chapXX.tex)

```latex
% !TEX root = ../main.tex

\chapter{章标题}
\label{chap01}

\section{节标题}
\subsection{小节标题}

正文内容...

\section{下一节}
...
```

**注意事项**：
- 每章文件开头添加 `% !TEX root = ../main.tex`，便于 IDE 识别主文件
- 使用 `\label{}` 为章节添加标签，方便交叉引用
- 引用时使用 `\ref{标签名}` 或 `\autoref{标签名}`

#### 3.4 编写摘要 (front/cover.tex)

```latex
\begin{cabstract}
  中文摘要内容...
\end{cabstract}

\begin{eabstract}
  English abstract content...
\end{eabstract}
```

#### 3.5 编写结论 (back/conclusion.tex)

```latex
\begin{conclusions}
  结论内容...
\end{conclusions}
```

#### 3.6 编写致谢 (back/acknowledgements.tex)

```latex
\begin{acknowledgements}
  致谢内容...
\end{acknowledgements}
```

### 4. 编译论文

#### 方式一：使用 Makefile (Linux/macOS)

```bash
# 完全编译
make

# 编译并清理辅助文件（推荐）
make build

# 重新编译
make rebuild

# 清理辅助文件
make clean

# 清理所有文件（包括 PDF）
make cleanall
```

#### 方式二：使用批处理脚本 (Windows)

```batch
build.bat
```

**注意**：脚本会提示您手动处理 `spine.docx` 文件，请按照提示操作。

#### 方式三：手动编译

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

### 5. 添加新章节

1. 在 `body/` 目录下创建新文件，如 `chap03.tex`
2. 在 `main.tex` 中添加：
   ```latex
   \include{body/chap03}
   ```

### 6. 插入图片

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{图片文件名}
  \caption{图片标题}
  \label{fig:label}
\end{figure}
```

图片放在 `figures/` 目录下，引用时使用 `\ref{fig:label}`。

### 7. 插入表格

```latex
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \label{tab:label}
  \begin{tabular}{ccc}
    \toprule
    列1 & 列2 & 列3 \\
    \midrule
    数据1 & 数据2 & 数据3 \\
    数据4 & 数据5 & 数据6 \\
    \bottomrule
  \end{tabular}
\end{table}
```

### 8. 插入公式

行内公式：`$E=mc^2$`

独立公式：
```latex
\begin{equation}
  E = mc^2
  \label{eq:emc2}
\end{equation}
```

### 9. 插入参考文献

1. 在 `reference.bib` 中添加文献条目：
   ```bibtex
   @article{key,
     author = {作者},
     title = {标题},
     journal = {期刊名},
     year = {2024},
   }
   ```

2. 正文中引用：
   ```latex
   正文内容\cite{key}。
   ```

### 10. 书脊制作

本项目提供了两种书脊制作方式：

#### 方式一：使用 Word 模板（推荐）

1. **编辑 spine.docx**
   - 打开 `spine.docx` 文件
   - 修改论文标题、作者姓名等信息
   - 调整字体和布局符合要求

2. **转换为 PDF**
   ```bash
   # 方法1：使用 Microsoft Word 手动另存为 PDF
   # 方法2：使用 LibreOffice 命令行
   libreoffice --headless --convert-to pdf spine.docx
   ```

#### 方式二：使用 LaTeX 源文件

编辑 `spine.tex` 文件，然后编译：
```bash
xelatex spine.tex
```

### 11. 生成最终论文

编译完成后会生成以下 PDF 文件：
- `main.pdf` - 论文主体
- `spine.pdf` - 书脊（需要从 spine.docx 转换）
- `thesis.pdf` - 完整论文（含书脊，需要 spine.pdf 存在）

**A3 封面打印**：
编译 `a3cover.tex` 可生成 A3 横向打印封面，用于论文装订。

## 注意事项

1. **配置项不要出现空行**：`front/cover.tex` 中的 `\heusetup{}` 内部不要有空行
2. **编译顺序**：必须执行 XeLaTeX → BibTeX → XeLaTeX → XeLaTeX 四步，否则交叉引用和参考文献会不完整
3. **文件编码**：所有 `.tex` 文件使用 UTF-8 编码
4. **图片格式**：支持 PNG、JPG、PDF 格式，建议使用 PDF 格式以获得最佳质量

## 问题排查

| 问题 | 解决方案 |
|------|----------|
| 编译报错 "Font not found" | 安装相应字体或更换 `fontset` 选项 |
| 参考文献不显示 | 确保执行了 BibTeX 编译步骤 |
| 交叉引用显示为问号 | 多编译一次 XeLaTeX |
| 页眉显示不正确 | 检查 `ctitle` 是否设置正确 |

## 📝 更新日志

### v3.0.15 (2026-04-14)
- ✨ 专门针对本科生毕业论文进行特化优化
- 🎯 基于 Li-Wenhui/HEUThesis 项目进行定制开发
- 🔧 优化 .gitignore 文件，添加项目特定忽略规则
- 📚 完善文档结构和使用说明
- 🎨 改进 README.md 的可读性和导航体验
- 🐛 修复已知问题，提升模板稳定性

### v3.0.14 (2021-05-06)
- 🎯 初始版本发布（基于 Li-Wenhui/HEUThesis）
- 📖 完整的 LaTeX 模板实现
- 🌐 跨平台编译支持

## 🤝 贡献指南

我们欢迎所有形式的贡献！

### 如何贡献

1. **Fork 项目**
2. **创建特性分支** (`git checkout -b feature/AmazingFeature`)
3. **提交更改** (`git commit -m 'Add some AmazingFeature'`)
4. **推送到分支** (`git push origin feature/AmazingFeature`)
5. **提交 Pull Request**

### 贡献类型

- 🐛 **Bug 修复**: 修复模板中的错误
- ✨ **新功能**: 添加新的功能特性
- 📚 **文档改进**: 完善使用说明和示例
- 🎨 **代码优化**: 改进代码质量和性能
- 🌐 **国际化**: 支持更多语言和地区

### 开发规范

- 遵循 LaTeX 编码规范
- 保持代码简洁易读
- 添加必要的注释说明
- 确保向后兼容性

## ❓ 常见问题

<details>
<summary>编译时出现字体错误怎么办？</summary>

1. 检查系统是否安装了相应字体
2. 尝试更换 `fontset` 选项：
   - Windows: `fontset=windows`
   - macOS: `fontset=mac`
   - Linux: `fontset=ubuntu`
3. 或使用开源字体：`fontset=fandol`

</details>

<details>
<summary>参考文献不显示如何解决？</summary>

1. 确保执行了完整的编译流程：XeLaTeX → BibTeX → XeLaTeX → XeLaTeX
2. 检查 `reference.bib` 文件格式是否正确
3. 确认正文中使用了正确的引用命令 `\cite{key}`

</details>

<details>
<summary>如何添加新的章节？</summary>

1. 在 `body/` 目录创建新文件 `chapXX.tex`
2. 在文件开头添加：`% !TEX root = ../main.tex`
3. 在 `main.tex` 中添加：`\include{body/chapXX}`
4. 使用 `\chapter{章节标题}` 开始新章节

</details>

## 📄 许可证

本项目采用 [MIT 许可证](LICENSE)。

## 📞 联系支持

- **维护者**: eagle-a
- **邮箱**: sunzhaoshun@hrbeu.edu.cn
- **项目地址**: https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
- **问题反馈**: [GitHub Issues](https://github.com/eagle-a/HEU-Bachelor-Latex-Opt/issues)

---

<div align="center">

**大工至善，大学至臻**

**哈尔滨工程大学**

[![Star History Chart](https://api.star-history.com/svg?repos=eagle-a/HEU-Bachelor-Latex-Opt&type=Date)](https://star-history.com/#eagle-a/HEU-Bachelor-Latex-Opt&Date)

</div>
