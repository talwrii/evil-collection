;;; evil-collection-woman.el --- Evil bindings for WoMan -*- lexical-binding: t -*-

;; Copyright (C) 2017 Pierre Neidhardt

;; Author: Pierre Neidhardt <ambrevar@gmail.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, woman, tools

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or (at your
;; option) any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for `woman'.

;;; Code:
(require 'evil)
(require 'evil-collection-man) ; WoMan's keymap inherits from Man.
(require 'woman)

(defun evil-collection-woman-setup ()
  "Set up `evil' bindings for `woman'."
  (evil-define-key 'motion woman-mode-map
    (kbd "]") 'WoMan-next-manpage
    (kbd "[") 'WoMan-previous-manpage

    ;; goto
    ;; "gm" 'woman

    ;; refresh
    "gr" 'woman-reformat-last-file))

(provide 'evil-collection-woman)
;;; evil-collection-woman.el ends here
