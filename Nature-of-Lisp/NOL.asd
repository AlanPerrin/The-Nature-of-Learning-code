;;;; NOL.asd

(asdf:defsystem #:NOL
  :description "Describe NOL here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :depends-on (#:trivial-gamekit)
  :serial t
  :components ((:file "package")
               (:file "NOL")
	       (:file "walker")
	       ))
