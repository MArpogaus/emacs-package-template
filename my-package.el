;;; my-package.el --- One line that says what this does -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Marcel Arpogaus

;; Author: Marcel Arpogaus <znepry.necbtnhf@tznvy.pbz>
;; Assisted-by: Claude:claude-opus-5
;; Version: 0.2
;; Package-Requires: ((emacs "29.1"))
;; Keywords: convenience
;; URL: https://github.com/MArpogaus/emacs-package-template

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Describe here what the package is for, and how to start using it.
;; This text is what `M-x describe-package' shows, so write it for
;; somebody who just found the package and wonders whether it helps.

;;; Code:

(defgroup my-package nil
  "One line that says what this does."
  :group 'convenience
  :prefix "my-package-")

;;;; Customization

(defcustom my-package-greeting "Hello"
  "Word the greeting starts with."
  :type 'string)

;;;; Internal functions

(defun my-package--compose (name)
  "Return the greeting for NAME."
  (format "%s, %s!" my-package-greeting name))

;;;; Commands

;;;###autoload
(defun my-package-greet (name)
  "Greet NAME in the echo area."
  (interactive (list (read-string "Name: " user-full-name)))
  (message "%s" (my-package--compose name)))

;;;; Minor mode

;;;###autoload
(define-minor-mode my-package-mode
  "Toggle the feature this package provides."
  :global t
  :group 'my-package
  (if my-package-mode
      (message "my-package enabled")
    (message "my-package disabled")))

(provide 'my-package)
;;; my-package.el ends here
