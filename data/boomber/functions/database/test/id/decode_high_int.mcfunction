scoreboard players set #bb.db.input bb.ae.var 65000
function boomber:database/id/decode

execute unless data storage boomber:database/decode_output {output: {b0: 0b, b1: 0b, b2: 0b, b3: 1b, b4: 0b, b5: 1b, b6: 1b, b7: 1b, b8: 1b, b9: 0b, b10: 1b, b11: 1b, b12: 1b, b13: 1b, b14: 1b, b15: 1b}} run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "Decoding '65000' into binary does not yield '11111101 11101000' in ", "color": "gray"}, {"text": "id/decode_high_int", "color": "green"}]