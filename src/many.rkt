#lang racket


(with-output-to-file "somefile.txt"
  (lambda() (printf "Hello, World!"))
  [#:mode 'text])
(define in (open-input-file "somefile.txt"))
(read-string 11 in)
(close-input-port in)

(with-output-to-file "somefile2.txt"
  (lambda()(printf "hello,world! text in a file")))
(call-with-input-file "somefile2.txt"
  (lambda(in) (read-string 15 in)))