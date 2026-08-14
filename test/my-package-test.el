;;; my-package-test.el --- Tests for my-package -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Marcel Arpogaus

;; Author: Marcel Arpogaus <znepry.necbtnhf@tznvy.pbz>
;; URL: https://github.com/MArpogaus/my-package

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

;; Run with: make test

;;; Code:

(require 'ert)
(require 'my-package)

(ert-deftest my-package-test-compose ()
  "The greeting uses the configured word."
  (should (equal (my-package--compose "World") "Hello, World!"))
  (let ((my-package-greeting "Moin"))
    (should (equal (my-package--compose "World") "Moin, World!"))))

(ert-deftest my-package-test-mode-toggles ()
  "The mode turns on and off again."
  (my-package-mode 1)
  (should my-package-mode)
  (my-package-mode -1)
  (should-not my-package-mode))

(provide 'my-package-test)
;;; my-package-test.el ends here
