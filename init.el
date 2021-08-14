(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package magit
  :straight t
  :commands (magit-status)
  :bind ("C-c g g" . magit-status))

(set-face-attribute 'default nil :family "JetBrains Mono" :height 120)

(use-package modus-themes
  :straight t
  :config (load-theme 'modus-operandi t))

(use-package rainbow-delimiters
 :straight t
 :hook ((emacs-lisp-mode . rainbow-delimiters-mode)))
