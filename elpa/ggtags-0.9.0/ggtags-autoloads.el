;;; ggtags-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ggtags" "ggtags.el" (0 0 0 0))
;;; Generated autoloads from ggtags.el

(autoload 'ggtags-find-project "ggtags" nil nil nil)

(autoload 'ggtags-find-tag-dwim "ggtags" "\
Find NAME by context.
If point is at a definition tag, find references, and vice versa.
If point is at a line that matches `ggtags-include-pattern', find
the include file instead.

When called interactively with a prefix arg, always find
definition tags.

\(fn NAME &optional WHAT)" t nil)

(autoload 'ggtags-mode "ggtags" "\
Toggle Ggtags mode on or off.

If called interactively, enable Ggtags mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\\{ggtags-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ggtags-build-imenu-index "ggtags" "\
A function suitable for `imenu-create-index-function'." nil nil)

(autoload 'ggtags-try-complete-tag "ggtags" "\
A function suitable for `hippie-expand-try-functions-list'.

\(fn OLD)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ggtags" '("ggtags-")))



(add-hook 'c-mode-common-hook
              (lambda ()
                (when (derived-mode-p 'c-mode
			'c++-mode 'java-mode 'python-mode
			'shell-script-mode 'rust-mode
			)
                  (ggtags-mode 1))))




;;;***

;;;### (autoloads nil nil ("ggtags-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ggtags-autoloads.el ends here
