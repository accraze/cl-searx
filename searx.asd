(asdf:defsystem #:searx
  :description "Searx meta-search client"
  :author "accraze@gmail.com"
  :license "Apache 2.0"
  :depends-on (#:drakma #:cl-json)
  :components ((:file "package")
               (:file "searx")))
