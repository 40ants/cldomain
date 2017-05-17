#|
  This file is a part of sphinxcontrib.cldomain project.
|#


(in-package :cl-user)
(defpackage sphinxcontrib.cldomain-asd
  (:use :cl :asdf))
(in-package :sphinxcontrib.cldomain-asd)


(defsystem cldomain
  :version (:read-file-form "version.lisp-expr")
  :author ""
  :license ""
  :depends-on (:net.didierverna.clon :cl-json :alexandria :closer-mop
               #+sbcl :sb-introspect)
  :defsystem-depends-on (:asdf)
  :entry-point "sphinxcontrib.cldomain:main"
  :components ((:module "src"
                :components
                ((:file "sphinxcontrib.cldomain"))))
  :description "A documentation tool."
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.rst"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq)
                (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op sphinxcontrib.cldomain-test))))

