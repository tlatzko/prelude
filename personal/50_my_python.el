;;; setting up python mode
;;; code:
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;(when (load "flymake" t)
;  (defun flymake-pylint-init ()
;    (let* ((temp-file (flymake-init-create-temp-buffer-copy
;                       'flymake-create-temp-inplace))
;           (local-file (file-relative-name
;                        temp-file
;                        (file-name-directory buffer-file-name))))
;      (list "epylint" (list local-file))))

;(add-to-list 'flymake-allowed-file-name-masks
;              '("\\.py\\'" flymake-pylint-init)))

;(defun pytidy-whole-buffer ()
;  (interactive)
;  (let ((a (point)))
;    (shell-command-on-region (point-min) (point-max) "<Name_Of_Executable_Script>" t)
;    (goto-char a)))

;;enable jedi autocompletion in python

(autoload 'jedi:setup "jedi" nil t)
; (setq jedi:setup-keys t)
(add-hook 'python-mode-hook
          (lambda()
            (auto-complete-mode 1)
            (jedi:setup)
            (jedi:ac-setup)
            (python-cell-mode 1)
            (guru-mode -1)
            (linum-mode 1)))

;(add-hook 'python-mode-hook 'auto-complete-mode)
;(add-hook 'python-mode-hook 'jedi:ac-setup)
;(add-hook 'python-mode-hook 'python-cell-mode)
;(add-hook 'python-mode-hook
;          (lambda ()
;            (auto-complete-mode 1)
;            (jedi:ac-setup 1)
;            (set (make-local-variable 'ac-find-function) 'ac-python-find)
;            (set (make-local-variable 'ac-candidate-function) 'ac-python-candidate)
;            (set (make-local-variable 'ac-auto-start) nil)))
