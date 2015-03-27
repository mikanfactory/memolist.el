#memolist.el
memolist.el is Emacs port of [memolist.vim](https://github.com/glidenote/memolist.vim "memolist.vim")
##Dependencies
memolist.el depends on a number of other modules, that you'll need to install, either manually or by way of Emacs package manager

+ [ag.el](https://github.com/Wilfred/ag.el "ag.el")
+ [markdown-mode.el](http://jblevins.org/projects/markdown-mode/markdown-mode.el "markdown-mode.el")

##Usage
+ M-x memo-new: Create new memo if file with the same name doesn't exist.
If it exists, you choose overwrite the file or edit it.

+ M-x memo-show-list: Show memo files.

+ M-x memo-grep: Grep by expr includes tag, category.

+ M-x memo-grep-tag: Grep by expr only tag.

+ M-x memo-grep-category: Grep by expr only category.
