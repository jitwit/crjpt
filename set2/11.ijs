
rkey=: a.{~[:?255#~]
renc=: monad define
select. ?2
case. 0 do. mode=. 'cbc'
case. 1 do. mode=. 'ecb'
end. (0;(rkey 16);(rkey 16);mode) (128!:7) (rkey 5+?6),y,rkey 5+?6 NB. [echo mode
)

oracle_ecb_cbc=: adverb define
y if. 0 e. ~: _16 ]\ u (100#' ') do. 'ecb' else. 'cbc' end.
)

