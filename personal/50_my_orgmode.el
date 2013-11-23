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

; Add proper word wrapping
; (global-visual-line-mode t)

'(org-agenda-files '("~/phd/memo"))
'(org-agenda-include-all-todo t)
'(org-agenda-include-diary t)
'(org-agenda-skip-deadline-if-done t)
'(org-agenda-skip-scheduled-if-done t)
'(org-agenda-start-on-weekday nil)
'(org-agenda-start-with-clockreport-mode nil)
'(org-enforce-todo-dependencies t)
'(org-export-latex-classes (quote (("article" "\\documentclass[11pt]{scrartcl}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[11pt]{scrreprt}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("book" "\\documentclass[11pt]{scrbook}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))))
'(org-extend-today-until 4)
'(org-latex-classes (quote (("beamer" "\\documentclass[presentation]{beamer}
 [DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("article" "\\documentclass[11pt]{scrartcl}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[11pt]{scrreprt}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[11pt]{book}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
'(org-latex-default-packages-alist (quote (("AUTO" "inputenc" t) ("T1" "fontenc" t) ("" "fixltx2e" nil) ("" "graphicx" t) ("" "longtable" nil) ("" "float" nil) ("" "wrapfig" nil) ("" "soul" t) ("" "textcomp" t) ("" "marvosym" t) ("" "wasysym" t) ("" "latexsym" t) ("" "amssymb" t) ("" "amstext" nil) ("" "hyperref" nil) "\\tolerance=1000")))
'(org-latex-packages-alist (quote (("" "color" t) ("" "minted" t) ("" "parskip" t))))
'(org-latex-pdf-process (quote ("pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "bibtex $(basename %b)" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f")))
'(org-latex-to-pdf-process (quote ("pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "bibtex $(basename %b)" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f")))
'(org-remember-templates (quote (("todo" 116 "?: %?
" "~/.emacs.d/private/org/emacs-plan.org" nil nil) ("Note" 110 "%?
" nil nil nil))))
'(org-time-stamp-custom-formats (quote ("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M>")))
