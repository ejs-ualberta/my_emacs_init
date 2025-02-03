(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(misterioso))
 '(inhibit-startup-screen t)
 '(package-selected-packages)
)
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


; wolfram hydra ace-window ivy
(straight-use-package 'savehist)
(straight-use-package 'diff-hl)
(straight-use-package 'expand-region)
(straight-use-package 'move-text)
(straight-use-package 'undo-tree)
(straight-use-package 'avy)
(straight-use-package 'ctrlf)
(straight-use-package 'vertico)
(straight-use-package 'vertico-prescient)
(straight-use-package 'god-mode)
(straight-use-package 'meow)
(straight-use-package 'xelb)
(straight-use-package 'exwm)
;(straight-use-package 'exwm-x)
(straight-use-package 'magit)
(straight-use-package 'lsp-mode)
(straight-use-package 'rust-mode)
(straight-use-package 'auctex)
(straight-use-package 'use-package)
(use-package lean4-mode
  :commands lean4-mode
  :straight (lean4-mode :type git :host github
                        :repo "leanprover-community/lean4-mode"
                        :files ("*.el" "data")))


(when (string= (getenv "GDMSESSION") "exwm")
  (require 'exwm)
  (require 'exwm-config)
  (require 'exwm-randr)
  (exwm-config-default) ;Prevents files from opening properly within other WMs
  (exwm-randr-enable)
  (shell-command ; Generated with arandr
   "xrandr --output LVDS-1 --primary --mode 1366x768 --pos 0x1152 --rotate normal --output VGA-1 --off --output HDMI-1 --mode 1920x1080 --pos 1366x0 --rotate left --output DP-1 --off --output HDMI-2 --off --output HDMI-3 --off --output DP-2 --off --output DP-3 --off")
  (setq exwm-randr-workspace-monitor-plist '(2 "HDMI-1" 3 "HDMI-1")) ; 0, 1 on lvds and 2, 3 on hdmi
)


(setq frame-title-format "%b")
(setq mouse-autoselect-window t)
(setq x-select-enable-clipboard t)
(setq enable-recursive-minibuffers t)


(xterm-mouse-mode 1)
(menu-bar-mode 1)
(show-paren-mode 1)
(ctrlf-mode 1)
(vertico-mode 1)
(vertico-prescient-mode 1)
(god-mode)

(tool-bar-mode -1)
(scroll-bar-mode -1)


(global-set-key (kbd "M-<down>") 'move-text-down)
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "<escape> f") 'god-local-mode)
(global-set-key (kbd "<escape> g") 'keyboard-escape-quit)
(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-.") 'repeat)

(global-unset-key (kbd "C-z"))

