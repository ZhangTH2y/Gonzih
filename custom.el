(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm-eww markdown-preview-eww cmake-mode yasnippet-snippets yaml-mode window-numbering which-key web-mode vue-mode use-package solarized-theme rust-mode restclient reformatter rainbow-delimiters projectile paredit magit lsp-ui json-mode hungry-delete go-mode gnu-elpa-keyring-update ggtags format-all exec-path-from-shell drag-stuff diminish delight dap-mode crux company beacon)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Disable files backup function
(setq make-backup-files nil)


;; Config Tab
;;;; This will force Tab to be just oneTab.
(global-set-key (kbd "TAB")'self-insert-command)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-whitespace-mode t)

(setq indent-line-function 'insert-tab)
(setq default-tab-width 4)
(setq backward-delete-char-untabify-method nil)
(defun my-c-mode-hook ()
 (setq c-basic-offset 4
       
       c-indent-level 4
       c-default-style "bsd"))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)
