#memolist.el
memolist.el is Emacs port of [memolist.vim](https://github.com/glidenote/memolist.vim "memolist.vim"). Org-mode is
very useful and multifunction, but it is also hard to approach and coufuse with markdown. memolist.el offer you simple interface for writing and searching.

##Dependencies
memolist.el depends on a number of other modules, that you'll need to install, either manually or by way of Emacs package manager.

+ [ag.el](https://github.com/Wilfred/ag.el "ag.el")
+ [markdown-mode.el](http://jblevins.org/projects/markdown-mode/markdown-mode.el "markdown-mode.el")

##Usage
+ M-x memolist-memo-new: Create new markdown file in `memolist-memo-directory`.
+ M-x memolist-show-list: Show markdown which placed in `memolist-memo-directory`'.
+ M-x memolist-memo-grep: Search contents of markdown file by arg.
+ M-x memolist-memo-grep-tag: Search tags in markdown file by arg.

##Option
This program make markdown file in your `memolist-memo-directory` or
search markdown file there. By default, `memolist-memo-directory` is
set to "~/Memo" directory. If you would like to change it,
use custom-set-valiables function like this.
 
`(custom-set-variables '(memolist-memo-directory "/path/to/your/memo/directory"))`
 
