;;  -*- lexical-binding: t; -*-
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq package-user-dir (locate-user-emacs-file (concat (file-name-as-directory "elpa") emacs-version)))

(package-initialize)

(unless (package-installed-p 'use-package) (package-refresh-contents) (package-install 'use-package))

(use-package use-package :config (setq use-package-always-ensure t))

(require 'use-package)

(use-package org-roam :ensure t :custom (org-roam-directory (file-truename "/tmp/roam2425/Roam")))

(setq inhibit-startup-screen t)
(find-file (concat org-roam-directory "/KNOWN-BAD.org") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(org-roam)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
