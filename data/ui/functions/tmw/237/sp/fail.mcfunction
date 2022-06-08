# sp足りてないよ！

#
scoreboard players operation $temp ui_temp = @s ui_paint
tellraw @s [{"text":"sp> あなたの塗りPは","color":"red"},{"score":{"name":"$temp","objective":"ui_temp"}},{"text":"/","color":"red"},{"score":{"name":"$spneed","objective":"ui_temp"}},{"text":"です","color":"red"}]