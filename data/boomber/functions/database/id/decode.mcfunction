# input:
# - #bb.db.input
# output:
# - ∷ boomber:database/decode_output

#define storage boomber:database/decode_output
data remove storage boomber:database/decode_output output
data merge storage boomber:database/decode_output { output: {b0: 0b, b1: 0b, b2: 0b, b3: 0b, b4: 0b, b5: 0b, b6: 0b, b7: 0b, b8: 0b, b9: 0b, b10: 0b, b11: 0b, b12: 0b, b13: 0b, b14: 0b, b15: 0b} }

#define entity #bb.db.input
#define entity #bb.db.byte
scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result storage boomber:database/decode_output output.b0 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b1 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b2 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b3 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b4 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b5 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b6 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b7 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b8 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b9 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b10 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b11 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b12 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b13 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b14 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players operation #bb.db.byte bb.ae.calc = #bb.db.input bb.ae.var
execute store result score #bb.db.input bb.ae.var run scoreboard players operation #bb.db.byte bb.ae.calc /= #binary bb.ae.const
execute store result storage boomber:database/decode_output output.b15 byte 1 run scoreboard players operation #bb.db.byte bb.ae.calc %= #binary bb.ae.const

scoreboard players reset #bb.db.input bb.ae.var