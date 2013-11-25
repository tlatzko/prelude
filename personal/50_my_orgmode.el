;; orgmode
(add-hook 'org-mode-hook 'flyspell-mode)


; http://orgmode.org/guide/Activation.html#Activation
(defun my-org-confirm-babel-evaluate (lang body)
            (not (string= lang "python")))  ; don't ask for python
          (setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
; And add babel inline code execution
; babel, for executing code in org-mode.
(org-babel-do-load-languages
 'org-babel-load-languages
 ; load all language marked with (lang . t).
 '((C . t)
   (R . t)
   (asymptote)
   (awk)
   (calc)
   (clojure)
   (comint)
   (css)
   (ditaa . t)
   (dot . t)
   (emacs-lisp . t)
   (fortran)
   (gnuplot . t)
   (haskell)
   (io)
   (java)
   (js)
   (latex)
   (ledger)
   (lilypond)
   (lisp . t)
   (matlab)
   (maxima)
   (mscgen)
   (ocaml . t)
   (octave)
   (org . t)
   (perl)
   (picolisp)
   (plantuml)
   (python . t)
   (ref)
   (ruby)
   (sass)
   (scala)
   (scheme)
   (screen)
   (sh . t)
   (shen)
   (sql)
   (sqlite)))

