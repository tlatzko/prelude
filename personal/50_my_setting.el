;;; misc settings mot global
;; my own stuff
;; setup


(setq projectile-completion-system 'grizzl)


;; activate yasnippet global
(yas-global-mode 1)

(global-auto-complete-mode t)
(setq prelude-whitespace nil)

;; Inline auto completion and suggestions
(powerline-default-theme)

;aspell und flyspell
(setq-default ispell-program-name "aspell")
; use key chords invoke commands
(key-chord-mode 1)
; buffer actions
(key-chord-define-global "vg"     'eval-region)
(key-chord-define-global "vb"     'eval-buffer)
(key-chord-define-global "cy"     'yank-pop)
(key-chord-define-global "cg"     "\C-c\C-c")
; frame actions
(key-chord-define-global "xo"     'other-window);
(key-chord-define-global "bb"     'other-window);
(key-chord-define-global "x1"     'delete-other-windows)
(key-chord-define-global "x0"     'delete-window)
(defun kill-this-buffer-if-not-modified ()
  (interactive)
  ; taken from menu-bar.el
  (if (menu-bar-non-minibuffer-window-p)
      (kill-buffer-if-not-modified (current-buffer))
    (abort-recursive-edit)))
(key-chord-define-global "xk"     'kill-this-buffer-if-not-modified)
; file actions
(key-chord-define-global "bf"     'ido-switch-buffer)
(key-chord-define-global "cf"     'ido-find-file)
(key-chord-define-global "vc"     'vc-next-action)

;(define-key global-map (kbd "C-j") 'newline-and-indent)
;;; 50_my_setting.el ends here
