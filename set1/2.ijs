load '~/code/crjpt/crjpt.ijs'

input=: decode_hex '1c0111001f010100061a024b53535009181c'
key=: decode_hex '686974207468652062756c6c277320657965'

key { a.
(input xor key) { a.