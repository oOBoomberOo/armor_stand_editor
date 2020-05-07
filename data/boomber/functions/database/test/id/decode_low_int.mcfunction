scoreboard players set #bb.db.input bb.ae.var 42
function boomber:database/id/decode

execute unless data storage boomber:database/decode_output {output: {b0: 0b, b1: 1b, b2: 0b, b3: 1b, b4: 0b, b5: 1b, b6: 0b, b7: 0b, b8: 0b, b9: 0b, b10: 0b, b11: 0b, b12: 0b, b13: 0b, b14: 0b, b15: 0b}} run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "Decoding '42' into binary does not yield '101010' in ", "color": "gray"}, {"text": "id/decode_low_int", "color": "green"}]