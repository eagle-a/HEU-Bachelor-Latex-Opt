# HEUThesis - 哈尔滨工程大学本科毕业论文 LaTeX 模板

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![LaTeX](https://img.shields.io/badge/LaTeX-2021+-blue.svg)](https://www.latex-project.org/)
[![XeLaTeX](https://img.shields.io/badge/XeLaTeX-3.1+-green.svg)](https://texlive.org/)

哈尔滨工程大学**本科**毕业论文 XeLaTeX 模板，遵循学校论文格式规范要求。

> 本项目基于 [Li-Wenhui/HEUThesis](https://github.com/Li-Wenhui/HEUThesis) 进行特化优化，专门针对本科生毕业论文需求进行定制开发。

> ⚠️ **最终提交文件**：编译完成后，**`thesis.pdf`** 为包含书脊的完整论文，是最终提交的文件。

## 📋 目录

- [项目特色](#项目特色)
- [快速安装](#快速安装)
- [使用教程](#使用教程)
- [常见问题](#常见问题)
- [联系支持](#联系支持)

## ✨ 项目特色

- 🎯 **规范严格**: 较为符合哈尔滨工程大学论文格式规范
- 🎓 **专注本科**: 专门针对本科生毕业论文格式要求优化
- 🖥️ **Windows 优化**: 针对 Windows 系统优化，提供便捷的批处理脚本
- 📖 **文档完善**: 详细的使用说明和示例代码
- 🔧 **编译便捷**: 一键编译脚本，自动处理复杂流程
- 🤖 **AI 辅助**: 推荐配合 [Windsurf](https://windsurf.ai/) IDE 的 **SWE-1.6** 模型进行 TeX 代码编写，该模型**免费使用**，可显著提升论文撰写效率

## 🚀 快速安装

### 环境要求

**必需软件**：

- **TeX Live** (推荐 2021 及以上版本)
  - Windows: [下载地址](https://www.tug.org/texlive/)
- **WPS Office** (推荐哈尔滨工程大学专属版本)
  - 详见下方 [WPS 365 专属旗舰版安装说明](#wps-365专属旗舰版安装说明)

### WPS 365 专属旗舰版安装说明

哈尔滨工程大学为在校学生提供了 WPS 365 专属旗舰版，推荐用于编辑 `spine.docx` 书脊文件。

#### PC 端安装

1. **客户端下载**

   **方式一：学校正版软件平台**
   - 访问：[哈尔滨工程大学正版软件管理与服务平台](https://zbrj.hrbeu.edu.cn/)

   **方式二：WPS 官网教育版**
   - 访问：[WPS 教育版](https://365.wps.cn/edu/home)，选择 Windows 版本下载

2. **安装步骤**
   - 下载完成后点击【立即安装】，安装完成后启动 WPS

3. **账号激活**
   - 选择【SSO】登录方式
   - 企业代码输入：`哈尔滨工程大学` 或 `HEU`，点击【验证】
   - 跳转学校统一身份认证页面，输入账号密码完成登录
   - 选择绑定方式（推荐微信绑定），扫码完成绑定

> 💡 使用学校专属版本可享受完整功能，无需额外付费，推荐用于书脊文件的编辑与导出。

### 快速开始

1. **克隆项目**
   ```bash
   git clone https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
   cd HEU-Bachelor-Latex-Opt
   ```

2. **配置个人信息**：编辑 `front/cover.tex`，填写论文标题、作者、导师等信息

3. **编译论文正文**（不含书脊）：双击运行 `build.bat`

4. **编译完整论文**（含书脊）：准备好 `spine.pdf` 后，双击运行 `build_all.bat`

5. **查看结果**：最终完整论文为项目根目录下的 **`thesis.pdf`**

### 项目结构

```
.
├── main.tex                  # 主文件，设置文档类和全局选项
├── thesis.tex                # 合并文件，将书脊与正文合并为完整论文
├── a3cover.tex               # A3封面文件，将封面与书脊拼合
├── spine.docx                # 书脊模板（Word 格式，需手动导出为 PDF）
├── front/
│   └── cover.tex             # 封面信息配置（论文标题、作者、导师等）
├── body/
│   ├── chap01.tex            # 第1章 绪论
│   ├── chap02.tex            # 第2章
│   └── ...                   # 其他章节
├── back/
│   ├── conclusion.tex        # 结论
│   ├── acknowledgements.tex  # 致谢
│   └── publications.tex      # 成果
├── figures/                  # 图片目录
├── reference.bib             # 参考文献数据库
├── heuthesisbook.cls         # 文档类文件
├── heuthesis.sty             # 宏包文件
├── build.bat                 # 编译论文正文（不含书脊）
└── build_all.bat             # 编译完整论文（含书脊，生成 thesis.pdf）
```

## 📖 使用教程

### 1. 配置文档类选项 (main.tex)

```latex
\documentclass[type=bachelor,fontset=windows]{heuthesisbook}
```

**选填选项**：
- `fontset=windows` - Windows 字体设置
- `tocfour=true|false` - 是否添加四级目录（本科文科可能需要）
- `subtitle=true|false` - 是否有副标题

### 2. 填写封面信息 (front/cover.tex)

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

### 3. 编写章节内容 (body/chapXX.tex)

```latex
% !TEX root = ../main.tex

\chapter{章标题}
\label{chap01}

\section{节标题}
\subsection{小节标题}

正文内容...
```

> 💡 **AI 辅助编写推荐**：推荐使用 [Windsurf](https://windsurf.ai/) IDE 并选择 **SWE-1.6** 模型进行 TeX 代码编写，该模型**免费使用**。SWE-1.6 对 LaTeX 语法有良好理解，可帮助生成章节结构、公式、表格、图片引用等代码，大幅降低 LaTeX 学习门槛。

### 4. 编译论文

| 脚本 | 作用 | 输出文件 |
|------|------|----------|
| `build.bat` | 编译论文正文（不含书脊） | `main.pdf` |
| `build_all.bat` | 编译完整论文（需先准备 `spine.pdf`） | **`thesis.pdf`** |

> **注意**：运行 `build_all.bat` 前，需先将 `spine.docx` 导出为 `spine.pdf` 并放置于项目根目录。

### 5. 书脊制作

1. 打开 `spine.docx`，修改论文标题、作者姓名等信息
2. 使用 Microsoft Word 或 WPS 将其导出为 `spine.pdf`，保存到项目根目录
3. 运行 `build_all.bat` 生成包含书脊的完整论文

### 6. 输出文件说明

| 文件 | 说明 |
|------|------|
| `main.pdf` | 论文正文（不含书脊） |
| `spine.pdf` | 书脊（由 spine.docx 手动导出） |
| `a3cover.pdf` | A3 拼合封面（封面 + 书脊） |
| **`thesis.pdf`** | **完整论文（最终提交文件）** |

## ❓ 常见问题

| 问题 | 解决方案 |
|------|----------|
| 编译报错 "Font not found" | 安装相应字体或更换 `fontset` 选项 |
| 参考文献不显示 | 确保执行了 BibTeX 编译步骤 |
| 交叉引用显示为问号 | 多编译一次 XeLaTeX |
| 页眉显示不正确 | 检查 `ctitle` 是否设置正确 |
| `thesis.pdf` 无法生成 | 确认 `spine.pdf` 已存在于项目根目录 |

## 📞 联系支持

- **维护者**: eagle-a
- **邮箱**: 2121612901@qq.com
- **项目地址**: https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
- **问题反馈**: [GitHub Issues](https://github.com/eagle-a/HEU-Bachelor-Latex-Opt/issues)

---

<div align="center">

**大工至善，大学至臻**

**哈尔滨工程大学**

</div>
