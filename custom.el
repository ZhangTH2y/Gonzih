(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(smart-tabs-mode markdown-preview-eww cmake-mode yasnippet-snippets yaml-mode window-numbering which-key web-mode vue-mode use-package solarized-theme rust-mode restclient reformatter rainbow-delimiters projectile paredit magit lsp-ui json-mode hungry-delete go-mode gnu-elpa-keyring-update ggtags format-all exec-path-from-shell drag-stuff diminish delight dap-mode crux company beacon)))


(customize-set-variable	'tab-width 4)
(customize-set-variable	'default-tab-width 4)

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



(setq backward-delete-char-untabify-method nil)
(defun my-c-mode-hook ()
	(setq c-basic-offset 4
		C-indent-level 4
		c-default-style "bsd"))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)


(defun my-custom-settings-fn ()
	(setq indent-tabs-mode t)
	(setq tab-stop-list (number-sequence 4 200 4))
	(setq tab-width 4)
	(setq indent-line-function 'insert-tab))

(add-hook 'text-mode-hook 'my-custom-settings-fn)


(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python
											'ruby 'nxml)



;; C
(add-hook 'c-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice c-indent-line c-basic-offset)
(smart-tabs-advice c-indent-region c-basic-offset)

;; JavaScript
(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice js2-indent-line js2-basic-offset)

;; Perl (cperl-mode)
(add-hook 'cperl-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice cperl-indent-line cperl-indent-level)

;; Python
(add-hook 'python-mode-hook 'smart-tabs-mode-enable)
(smart-tabs-advice python-indent-line-1 python-indent)


(smart-tabs-add-language-support c++ c++-mode-hook
	((c-indent-line . c-basic-offset)
	 
	 (c-indent-region . c-basic-offset)))

;; ggtags
(add-hook 'c-mode-common-hook
              (lambda ()
                (when (derived-mode-p 'c-mode
			'c++-mode 'java-mode 'python-mode
			'shell-script-mode 'rust-mode
			)
                  (ggtags-mode 1))))
