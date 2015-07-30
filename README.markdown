#memolist.el
memolist.el is Emacs port of [memolist.vim](https://github.com/glidenote/memolist.vim "memolist.vim")
##Dependencies
memolist.el depends on a number of other modules, that you'll need to install, either manually or by way of Emacs package manager.

+ [ag.el](https://github.com/Wilfred/ag.el "ag.el")
+ [markdown-mode.el](http://jblevins.org/projects/markdown-mode/markdown-mode.el "markdown-mode.el")

##Usage
+ M-x memo-new: Create new markdown file in `memolist-memo-directory`.
+ M-x memo-show-list: Show markdown which placed in `memolist-memo-directory`'.
+ M-x memo-grep: Search contents of markdown file by arg.
+ M-x memo-grep-tag: Search tags in markdown file by arg.
