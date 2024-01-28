; inherits: cpp

(preproc_ifdef
  name: (identifier) @preproc.ifdef.var
  (#set! "priority" 126))

(preproc_def
  name: (identifier) @preproc.define.var
  (#set! "priority" 126))

