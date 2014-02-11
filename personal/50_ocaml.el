;;; start
(defun ac-ocaml-candidates (prefix)
  "Candidates for OCaml auto-completion"
  (let ((candidates)
	(module-name
         (when (string-match "\\([A-Za-z_][A-Za-z0-9_']*\\)[.]" prefix)
           (match-string 1 prefix))))
    (if module-name
        (iter '(lambda (sym) (push (concat module-name "." sym) candidates))
              (ocaml-module-symbols (assoc module-name (ocaml-module-alist))))
      (iter
       '(lambda (mod)
	  (iter '(lambda (sym) (push sym candidates))
		(ocaml-module-symbols mod)))
       (ocaml-visible-modules))
      (iter '(lambda (mod) (push (car mod) candidates)) (ocaml-module-alist)))
    candidates))

(ac-define-source ocaml
  '((available . (require 'caml-help nil t))
    (candidates . (ac-ocaml-candidates ac-prefix))
    (prefix . "\\(?:[^A-Za-z0-9_.']\\|\\`\\)\\(\\(?:[A-Za-z_][A-Za-z0-9_']*[.]\\)?[A-Za-z0-9_']*\\)")
    (symbol . "s")))
