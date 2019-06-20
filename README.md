# Latex Templates
Personalised set of latex files and utility scripts.

## Directory Contents
- An updated set of IEEE bibliography string definitions.
- IEEE journal / conference style class
- PowerPoint/Beamer presentation style class (ngni)
- Imperial College letter style class
- Resume / CV / Name card class functions
- Latex preambles for pre-set formatting of papers, presentations, and other
- TrueType Fonts used here
- Illustrations, Figures, and Style related data

## How to use these template files
- This repository provides a pre-formatted set of latex files for daily use and allows organises the template/style files in a centralised location. To get started, simply include this project directory to your path. This allows the main.tex source files to be organised in a different folder and we can link any scripts common to several projects. In the root document include the following lines:
``` latex
\makeatletter
\def\input@path{{/home/user_name/MyLatexTemplates/}{../MyLatexTemplates/}}
\makeatother
```
- Any personal / author details can be edited in the 'personal_details.cls' file which will automatically be sourced by these tex files.
- The 'default_symbols.cls' file is a aggregation of preferred latex commands and can be committed/changed depending on your preferences.
- So far these files provide a bemer class ngnitheme, a letter class impletter, a letter class leene-resume, and a article class ieeetran.

Example code will be provided soon...
