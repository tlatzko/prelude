(defun my-cpp-mode-hook ()
  (setq tab-width 4)
  (semantic-mode 1)
  (auto-complete-mode 1)
  (guru-mode -1)
  (setq flycheck-clang-language-standard "c++11"))

(add-hook 'c++-mode-hook 'my-cpp-mode-hook)

;; (define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
