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
- [常见问题](#常见问题)
- [联系支持](#联系支持)

## ✨ 项目特色

- 🎯 **规范严格**: 完全符合哈尔滨工程大学论文格式规范
- 🎓 **专注本科**: 专门针对本科生毕业论文格式要求优化
- 🖥️ **Windows 优化**: 针对 Windows 系统优化，提供便捷的批处理脚本
- 📖 **文档完善**: 详细的使用说明和示例代码
- 🔧 **编译便捷**: 一键编译脚本，自动处理复杂流程

## 🚀 快速安装

### 环境要求

**必需软件**：
- **TeX Live** (推荐 2021 及以上版本)
  - Windows: [下载地址](https://www.tug.org/texlive/)

- **WPS Office** (推荐哈尔滨工程大学专属版本)
  - 详见下方 [WPS 365 专属旗舰版安装说明](#wps-365专属旗舰版安装说明)

### WPS 365 专属旗舰版安装说明

哈尔滨工程大学为在校学生提供了 WPS 365 专属旗舰版，推荐用于编辑 `spine.docx` 书脊文件。

#### 📱 PC端安装

1. **客户端下载**
   
   **方式一：学校正版软件平台**
   - 访问：[哈尔滨工程大学正版软件管理与服务平台](https://zbrj.hrbeu.edu.cn/)
   
   **方式二：WPS官网教育版**
   - 访问：[WPS 教育版](https://365.wps.cn/edu/home)
   - 选择 Windows 版本下载

2. **安装步骤**
   - 下载完成后，点击【立即安装】
   - 安装完成后启动 WPS

3. **账号激活**
   - 选择【SSO】登录方式
   - 企业代码输入：`哈尔滨工程大学` 或 `HEU`
   - 点击【验证】跳转到学校统一身份认证页面
   - 输入统一身份账号密码完成登录
   - 选择绑定方式（推荐微信绑定）
   - 微信扫描二维码完成绑定

> 💡 **提示**：使用学校专属版本可享受完整功能，无需额外付费，推荐用于论文撰写和格式调整。

### 快速开始

1. **克隆项目**
   ```bash
   git clone https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
   cd HEU-Bachelor-Latex-Opt
   ```

2. **配置个人信息**
   编辑 `front/cover.tex` 文件，填写您的个人信息

3. **编译论文**
   双击运行 `build.bat`

4. **查看结果**
   生成的 PDF 文件位于项目根目录

### 项目结构

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
└── build.bat             # Windows 编译脚本
```

## 📖 使用教程

### 1. 配置文档类选项 (main.tex)

```latex
\documentclass[type=bachelor,fontset=windows]{heuthesisbook}
```

**文档类型**：
- 本项目已固定为 `type=bachelor`，专门用于本科生毕业论文

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

### 4. 编译论文

**使用批处理脚本 (Windows)**：
```batch
build.bat
```

**注意**：脚本会提示您手动处理 `spine.docx` 文件，请按照提示操作。

### 5. 书脊制作

#### 使用 Word 模板（推荐）

1. **编辑 spine.docx**
   - 打开 `spine.docx` 文件
   - 修改论文标题、作者姓名等信息
   - 调整字体和布局符合要求

2. **转换为 PDF**
   - 使用 Microsoft Word 手动另存为 PDF
   - 或使用 LibreOffice 命令：`libreoffice --headless --convert-to pdf spine.docx`

### 6. 生成最终论文

编译完成后会生成以下 PDF 文件：
- `main.pdf` - 论文主体
- `spine.pdf` - 书脊（需要从 spine.docx 转换）
- `thesis.pdf` - 完整论文（含书脊，需要 spine.pdf 存在）

## ❓ 常见问题

| 问题 | 解决方案 |
|------|----------|
| 编译报错 "Font not found" | 安装相应字体或更换 `fontset` 选项 |
| 参考文献不显示 | 确保执行了 BibTeX 编译步骤 |
| 交叉引用显示为问号 | 多编译一次 XeLaTeX |
| 页眉显示不正确 | 检查 `ctitle` 是否设置正确 |

## 📞 联系支持

- **维护者**: eagle-a
- **邮箱**: sunzhaoshun@hrbeu.edu.cn
- **项目地址**: https://github.com/eagle-a/HEU-Bachelor-Latex-Opt.git
- **问题反馈**: [GitHub Issues](https://github.com/eagle-a/HEU-Bachelor-Latex-Opt/issues)

---

<div align="center">

**大工至善，大学至臻**

**哈尔滨工程大学**

</div>
