(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(inhibit-startup-screen t)
 '(package-selected-packages
))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


; meow wolfram evil hydra ace-window ivy
(straight-use-package 'use-package)
(straight-use-package 'diff-hl)
(straight-use-package 'expand-region)
(straight-use-package 'move-text)
(straight-use-package 'avy)
(straight-use-package 'undo-tree)
(straight-use-package 'swiper)
(straight-use-package 'selectrum-prescient)
(straight-use-package 'god-mode)
(straight-use-package 'xelb)
(straight-use-package 'exwm)
(straight-use-package 'exwm-x)
(straight-use-package 'lsp-mode)
(straight-use-package 'kakoune)
(straight-use-package 'rust-mode)
(straight-use-package 'auctex)
(straight-use-package 'lean-mode)
(straight-use-package 'company-lean)
;; (use-package lean4-mode
;;   :straight (lean4-mode :type git :host github :repo "leanprover/lean4-mode")
;;   ;; to defer loading the package until required
;;   :commands (lean4-mode))


;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default) ;Prevents files from opening properly if enabled


(undo-tree-mode 1)
(selectrum-mode 1)
(selectrum-prescient-mode)
(xterm-mouse-mode)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(god-mode)
(show-paren-mode 1)


(add-to-list 'exec-path "~/.local/bin")
(setq mouse-autoselect-window t)
(setq x-select-enable-clipboard t)
(setq warning-minimum-level :error) ;For silencing exwm warnings on startup
;(setq lsp-tex-server 'digestif)


(global-set-key (kbd "C-s") 'swiper-all)
(global-set-key [M-down] 'move-text-down)
(global-set-key [M-up] 'move-text-up)
(global-set-key (kbd "S-SPC") #'god-local-mode)
(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-:") 'keyboard-quit)
