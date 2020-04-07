
rkey=: a.{~[:?255#~]

NB. [echo mode
renc=: monad define
mode=. (?2) {:: ;:'cbc ecb'
(0;(rkey 16);(rkey 16);mode) (128!:7) (rkey 5+?6),y,rkey 5+?6
)

oracle_ecb_cbc=: adverb define
(0 e. ~: _16 ]\ u (100#' ')){:: ;:'cbc ecb' [y
)

