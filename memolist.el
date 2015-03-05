;; You need to set the vars ``memolist-file-directory''.
;; This package make markdown file in specified directory.
;; If you don't set this var, it's create new directory in your home path.
(defvar memolist-file-directory "~/Memo")

;; interactive-function
(defun memo-show-list ()
  (interactive)
  (find-file memolist-file-directory))

(defun memo-grep (expr)
  (interactive "sag: ")
  (ag-regexp expr memolist-file-directory))

;; interactive-function
(defun memo-grep-tag (tag)
  (interactive "sInput tag: ")
  (ag-regexp (concat "tags:(.*)?" tag "(.*)?") memolist-file-directory))

;; interactive-function
(defun memo-grep-category (category)
  (interactive "sInput category: ")
  (ag-regexp (concat "tags:(.*)?" category "(.*)?") memolist-file-directory))

;; interactive-function
;; new -> new file
;; edit -> reopen file
;; delete -> delete file
(defun memo-new (title tags categories)
  (interactive "sMemo title: \nsMemo tags: \nsMemo categories: ")
  (if (file-exists-p (make-file-name title))
      (overwrite-or-edit title tags categories)
      (create-new-memo title tags categories)))

(defun overwrite-or-edit (title tags categories)
  (let ((file (make-file-name title)))
    (if (y-or-n-p "The file already exists. Do you want to edit the file? ")
        (edit-memo file)
        (overwrite-memo file tags categories))))

(defun create-new-memo (title tags categories)
    (find-file (make-file-name title))
    (write-header title tags categories))

(defun overwrite-memo (title tags categories)
  (find-file (make-file-name title))
  (erase-buffer)
  (write-header title tags categories))

(defun edit-memo (file) (find-file file))

(defun write-header (title tags categories)
  (progn
    (insert (concat "title: " title "\n"))
    (insert "===================\n")
    (insert (concat "date: " (format-current-time)))
    (insert (concat "tags: [" tags "]\n"))
    (insert (concat "categories: [" categories "]\n"))
    (insert "- - - - - - - - - -\n\n")))

;; String -> String
(defun make-title (title)
  (concat (format-time-string "%Y-%m-%d-"(current-time))
          title
          ".markdown"))

;; String -> String
(defun make-file-name (title)
  (expand-file-name (make-title title) memolist-file-directory))

;; Make directory if directory doesn't exist.
(defun init-directory ()
  (unless (file-directory-p memolist-file-directory)
    (make-directory memolist-file-directory)))

(init-directory)

(defun format-current-time ()
  (format-time-string "%Y/%m/%d(%a) %H:%M:%S\n" (current-time)))
