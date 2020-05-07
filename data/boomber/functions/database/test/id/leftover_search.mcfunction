scoreboard players set #bb.db.input bb.ae.var 0
function boomber:database/id/decode
data modify storage boomber:database/index_input id set from storage boomber:database/decode_output output
data remove storage boomber:database/list database
data merge storage boomber:database/list {database: [{"id":{"b0":0b,"b1":0b,"b2":0b,"b3":0b,"b4":0b,"b5":0b,"b6":0b,"b7":0b,"b8":0b,"b9":0b,"b10":0b,"b11":0b,"b12":0b,"b13":0b,"b14":0b,"b15":0b},"mock_data":0b},{"id":{"b0":1b,"b1":0b,"b2":0b,"b3":0b,"b4":0b,"b5":0b,"b6":0b,"b7":0b,"b8":0b,"b9":0b,"b10":0b,"b11":0b,"b12":0b,"b13":0b,"b14":0b,"b15":0b},"mock_data":1b},{"id":{"b0":0b,"b1":1b,"b2":0b,"b3":0b,"b4":0b,"b5":0b,"b6":0b,"b7":0b,"b8":0b,"b9":0b,"b10":0b,"b11":0b,"b12":0b,"b13":0b,"b14":0b,"b15":0b},"mock_data":2}]}

function boomber:database/id/index

execute if data storage boomber:database/index_output leftover[{mock_data: 1}] if data storage boomber:database/index_output leftover[{mock_data: 2}] run tellraw @a [{"text": "Assertion Error: ", "color": "red"}, {"text": "Expecting ", "color": "gray"}, {"text": "[{mock_data: 1}, {mock_data: 2}]", "color": "aqua"}, {"text": " but found ", "color": "gray"}, {"nbt": "leftover", "storage": "boomber:database/index_output", "color": "light_purple"}, {"text": " in ", "color": "gray"}, {"text": "id/leftover_search", "color": "green"}]