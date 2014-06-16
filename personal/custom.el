(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes (quote ("e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" default)))
 '(org-agenda-files (quote ("~/phd/memo/plan.org")))
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
 '(org-latex-to-pdf-process (quote ("pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "bibtex $(basename %b)" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f" "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f")) t)
 '(org-remember-templates (quote (("todo" 116 "?: %? ~/.emacs.d/private/org/emacs-plan.org" nil nil) ("Note" 110 "%?" nil nil nil))))
 '(org-time-stamp-custom-formats (quote ("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M>")))
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(whitespace-line-column 1000000))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :height 99 :width normal)))))
