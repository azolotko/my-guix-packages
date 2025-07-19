(define-module (my-packages engrammer)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages xorg)
  #:use-module (guix build-system gnu)
  #:use-module (guix utils)
  #:use-module (guix git-download)
  #:use-module (guix licenses)
  #:use-module (guix download))

(define-public xkeyboard-config-with-engrammer
  (package
    (inherit xkeyboard-config)
    (name "xkeyboard-config-with-engrammer")
    (version "2.44+engrammer")
    (source
     (origin
       (inherit (package-source xkeyboard-config))
       (patches (search-patches "my-packages/engrammer.patch"))))
    (synopsis "X keyboard configuration database with Engrammer layout")))
