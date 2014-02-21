;; orgmode
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)
(setq org-clock-continuously t)
; http://orgmode.org/guide/Activation.html#Activation
(defun my-org-confirm-babel-evaluate (lang body)
            (not (string= lang "python")))  ; don't ask for python
          (setq org-confirm-babel-evaluate 'my-org-confirm-babel-evaluate)

; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))


;; setup the latex export packages
(setq org-export-latex-default-packages-alist
      (quote
       (("AUTO" "inputenc" t)
        ("" "fixltx2e" nil)
        ("" "url")
        ("" "graphicx" t)
        ("" "minted" t)
        ("" "color" t)
        ("" "longtable" nil)
        ("" "float" nil)
        ("" "wrapfig" nil)
        ("" "soul" t)
        ("" "textcomp" t)
        ("" "amsmath" t)
        ("" "marvosym" t)
        ("" "wasysym" t)
        ("" "latexsym" t)
        ("" "amssymb" t)
        ("linktocpage,
          pdfstartview=FitH,
          colorlinks,
          linkcolor=blue,
          anchorcolor=blue,
          citecolor=blue,
          filecolor=blue,
          menucolor=blue,
           urlcolor=blue" "hyperref" t)
        ("" "attachfile" t)
        "\\tolerance=1000")))

; And add babel inline code execution
; babel, for executing code in org-mode.
(org-babel-do-load-languages
 'org-babel-load-languages
 ; load all language marked with (lang . t).
 '((C . t)
   (R)
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

(setq org-export-babel-evaluate nil) ; do not evaluate on export
(setq org-src-window-setup 'current-window)
;; code for syntax highlighting
(setq org-latex-listings 'minted)
(setq org-latex-minted-options
           '(("frame" "lines")
             ("fontsize" "\\scriptsize")
             ("linenos" "")))

(setq org-latex-to-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "bibtex %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq-default TeX-master t)
(setq reftex-default-bibliography
      (quote
       ("/home/latzko/phd/othesis/bib/literatur_phd.bib")))

(defun na-org-mode-reftex-setup ()
  (interactive)
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all)))

(add-hook 'org-mode-hook 'na-org-mode-reftex-setup)
;; (add-hook 'org-mode-hook 'reftex-mode)

(setq org-babel-python-command "ipython --no-banner --no-confirm-exit")
