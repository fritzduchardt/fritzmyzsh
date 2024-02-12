#!/usr/bin/env bash

# To find files by case-insensitive extension (ex: .jpg, .JPG, .jpG):
alias findjpg='find . -iname "*.jpg"'

# To find directories:
alias finddirs='find . -type d'

# To find files:
alias findfiles='find . -type f'

# To find files by octal permission:
alias findperm777='find . -type f -perm 777'

# To find files with setuid bit set:
alias findsetuid='find . -xdev \( -perm -4000 \) -type f -print0 | xargs -0 ls -l'

# To find files with extension '.txt' and remove them:
alias findtxtdelete='find ./path/ -name "*.txt" -exec rm {} \;'

# To find files with extension '.txt' and look for a string into them:
alias findtxtstring='find ./path/ -name "*.txt" | xargs grep "string"'

# To find files with size bigger than 5 Mebibyte and sort them by size:
alias findbigsizes='find . -size +5M -type f -print0 | xargs -0 ls -Ssh | sort -z'

# To find symlinks owned by a user and list file information:
alias findsymlinks='find . -type l -user <username-or-userid> -ls'

# To search for and delete empty directories:
alias deleteemptydirs='find . -type d -empty -exec rmdir {} \;'

# To search for directories named build at a max depth of 2 directories:
alias findbuild='find . -maxdepth 2 -name build -type d'

# To search all files who are not in .git directory:
alias findnotingit='find . ! -iwholename "*.git*" -type f'

# To find all files that have the same node (hard link) as MY_FILE_HERE:
alias findsamefile='find . -type f -samefile MY_FILE_HERE 2>/dev/null'

# To find all files in the current directory and modify their permissions:
alias modifypermissions='find . -type f -exec chmod 644 {} \;'

# by regex
alias findyaml='find . -regex ".*\.\(yml\|yaml\)$"'

# created in last 20 minutes
alias createdlast20mins='find . -cmin -20'

# created during last two days
alias createdlast2days='find . -ctime +1'

# find with multiple directories
alias findmultiplepaths='find [path-a] [path-b] -type f'

# find and remove
alias findandremovepyc='find . -name "*.pyc" -exec rm -rf {} \;'
