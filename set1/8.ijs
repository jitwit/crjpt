require'convert/misc/base64'

decode_hex=: 16 1 +/ .*~ _2 ]\ '0123456789abcdef'&i.
phrases=: ([:<[:~._16]\decode_hex);._2(1!:1)<'8.txt'
ecb_s=: I. 10 > > (#@~.) &.> phrases