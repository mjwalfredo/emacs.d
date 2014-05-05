(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/Library/Application Support/Aquamacs Emacs/elpa/birds-of-paradise-plus-theme-20130419.1429")
(add-to-list 'custom-theme-load-path "~/Library/Application Support/Aquamacs Emacs/elpa/birds-of-paradise-plus-theme-20130419.1429")
(require 'birds-of-paradise-plus-theme)

;; Set window size just right
(setq default-frame-alist '(
                (width . 160)
                (height . 49) ))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(grep-find-template "find . <X> -not -iwholename '*.svn*' -type f <F> -exec grep <C> -nH -e <R> {} /dev/null \\;")
 '(gud-gdb-command-name "gdb --annotate=1")
 '(inhibit-startup-screen t)
 '(large-file-warning-threshold nil)
 '(transient-mark-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.


;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;;; turn off syntax highlighting?
(global-font-lock-mode nil)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

;;; melpa packages for Emacs coolness
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;;; Always display line numbers in left margin
(global-nlinum-mode 1)

(icy-mode 1)

