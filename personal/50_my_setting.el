;;; misc settings mot global
;; my own stuff
;; setup
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

(setq projectile-completion-system 'grizzl)
;; (setq langtool-language-tool-jar "/usr/local/languagetool/languagetool-commandline.jar")

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

; frame actions
(key-chord-define-global "bn"     'other-window);
(key-chord-define-global "b1"     'delete-other-windows)
(key-chord-define-global "b0"     'delete-window)
(defun kill-this-buffer-if-not-modified ()
  (interactive)
  ; taken from menu-bar.el
  (if (menu-bar-non-minibuffer-window-p)
      (kill-buffer-if-not-modified (current-buffer))
    (abort-recursive-edit)))
(key-chord-define-global "kb"     'kill-this-buffer-if-not-modified)
; file actions
(key-chord-define-global "bf"     'ido-switch-buffer)
(key-chord-define-global "cf"     'ido-find-file)
(key-chord-define-global "vc"     'vc-next-action)
(key-chord-define-global "jj" 'ace-jump-word-mode)
(key-chord-define-global "jl" 'ace-jump-line-mode)
(key-chord-define-global "jk" 'ace-jump-char-mode)
(key-chord-define-global "JJ" 'prelude-switch-to-previous-buffer)
(key-chord-define-global "uu" 'undo-tree-visualize)
(key-chord-define-global "xx" 'execute-extended-command)
(key-chord-define-global "yy" 'browse-kill-ring)

;(define-key global-map (kbd "C-j") 'newline-and-indent)
;;; 50_my_setting.el ends here
