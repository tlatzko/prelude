;;; start package handling
;; packages
;; el-get installation
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")


(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; automatic package installation if something goes wrong
(defun package-require (package)
  "Install a PACKAGE unless it is already installed
  or a feature with the same name is already active.
  Usage: (package-require 'package)"
                                        ; try to activate the package with at least version 0.
  (package-activate package '(0))
                                        ; try to just require the package. Maybe the user has it in his local config
  (condition-case nil
      (require package)
                                        ; if we cannot require it, it does not exist, yet. So install it.
    (error (el-get-install package))))


; (package-require 'textlint)
(prelude-require-package 'grizzl)
(prelude-require-package 'auto-complete)
(prelude-require-package 'yasnippet)
(prelude-require-package 'key-chord)
(prelude-require-package 'zencoding-mode)
(prelude-require-package 'powerline)
(prelude-require-package 'flymake-cursor)
(prelude-require-package 'jedi)
(prelude-require-package 'python-cell)
(prelude-require-package 'tuareg)
;; (prelude-require-package 'cython-mode)
(package-require 'powerline)
;; (package-require 'emmet-mode)
;; (package-require 'o-blog)
;; (package-require 'python-mode)
;;(prelude-require-package 'langtool)
;; (require 'langtool)
;; (require 'ein)
(require 'python)
(require 'tuareg)
;; (require 'cython-mode)
(require 'python-cell)
(require 'grizzl)
(require 'auto-complete)
(require 'yasnippet)
(require 'key-chord)
;; not required emmet(require 'zencoding-mode)
;; (require 'o-blog)
(require 'powerline)
(require 'jedi)
(require 'flymake-cursor)

;;; end
