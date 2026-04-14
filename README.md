# HEUThesis - 哈尔滨工程大学学位论文 LaTeX 模板

哈尔滨工程大学本硕博学位论文 XeLaTeX 模板，符合学校论文格式规范要求。

## 使用教程

### 1. 环境准备

**编译工具**：TeX Live (推荐 2021 及以上版本)

**编译方式**：XeLaTeX → BibTeX → XeLaTeX → XeLaTeX

**系统支持**：Windows / macOS / Linux

### 2. 项目结构

```
.
├── main.tex              # 主文件，设置文档类和全局选项
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

**必填选项** (type)：
- `bachelor` - 本科论文
- `master` - 硕士论文
- `doctor` - 博士论文
- `postdoc` - 博士后报告

**选填选项**：
- `fontset=windows|mac|ubuntu|fandol|adobe` - 字体设置
- `tocfour=true|false` - 是否添加四级目录（本科文科可能需要）
- `subtitle=true|false` - 是否有副标题
- `openright=true|false` - 章节首页是否奇数页开始（博士打印版）
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

### 10. 生成最终论文

编译完成后会生成以下 PDF 文件：
- `main.pdf` - 论文主体
- `spine.pdf` - 书脊
- `thesis.pdf` - 完整论文（含书脊）

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

## 联系与支持

- 作者：eagle-a
- 邮箱：sunzhaoshun@hrbeu.edu.cn
- 项目地址：https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git

---

**大工至善，大学至臻**

**哈尔滨工程大学**
