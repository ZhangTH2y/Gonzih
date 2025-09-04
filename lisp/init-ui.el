;;; init-ui.el --- Summary
;;; Commentary:
;;; Code:


;; Initialize the GUI size & fonts
;; Settings for GUI mode
(when *is-mac*
  (progn
    ;; Font settings
    (set-face-attribute 'default nil :font "Source Code Pro for Powerline 11")
    ;; Settings for UI theme
    (use-package spacemacs-theme
      :init (load-theme 'spacemacs-dark t))))

(when *is-windows*
  (progn
    ;; Font settings
    (set-face-attribute 'default nil :font "Microsoft Yahei Mono 9")
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset (font-spec :family "Microsoft Yahei Mono" :size 9)))))

(when (display-graphic-p)
  ;; Init GUI size as maximized mode
  (set-frame-parameter nil 'fullscreen 'maximized)
    ;;; If you don't want maximized window, you can use the next line to define a customized size
  ;; (setq default-frame-alist '((width . 150) (height . 35)))
  (use-package smart-mode-line-powerline-theme)
  (use-package smart-mode-line
    :init
    (setq sml/no-confirm-load-theme t)
    (setq sml/theme 'powerline)
    (sml/setup))
  )

(use-package emacs
  :config
  (display-time-mode 1))

(provide 'init-ui)
;;; init-ui.el ends here
