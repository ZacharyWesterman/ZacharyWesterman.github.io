---
category: Projects
path: '/project/:id'
title: 'Word search solver'
type:
layout: default
---

This is a command-line program that analyzes a grid of letters in the user specified file, and solves it according to regular word-search rules, and any stipulations the user adds. This program has only been compiled for Windows and I do not intend to compile it for other machines because the code is very messy and I can't be bothered to rewrite it. If you would like to take a look at the code and perhaps rewrite some of it, head over to its [repository] (https://github.com/ZacharyWesterman/word-search-solver "https://github.com/ZacharyWesterman/word-search-solver").


### Installation:

To start, download and open the self-extracting archive. Launch the terminal, then change the directory to where the program was installed, for example "C:\word-search-solver\". To run the program you have a few possibilities.


### Possible command formats:

Search for individual words/phrases in the word search,
```analyzewordsearch "path/file_name.extension"```

Find all words in the word search,
```analyzewordsearch "path/file_name.extension" all```

List all words containing at least X characters,
```analyzewordsearch "path/file_name.extension" all from X```

List all words containing at most Y characters,
```analyzewordsearch "path/file_name.extension" all to Y```

List all words containing between X and Y characters, inclusive.
```analyzewordsearch "path/file_name.extension" all from X to Y```


### Downloads

[Windows](https://github.com/ZacharyWesterman/word-search-solver/raw/master/bin/Debug/installer.exe "Download windows installer")