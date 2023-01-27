#

#
data modify entity @s Item.tag.display.Lore append value '{"text":"EN","color":"yellow"}'
data modify entity @s Item.tag.display.Lore append value '{"text":":","color":"gray"}'

#
execute if score $ilv ui_temp matches 2..5 run scoreboard players operation $en_temp ui_temp = $en ui_temp
execute if score $ilv ui_temp matches 2..5 run scoreboard players operation $en_temp ui_temp *= #10 ui_num
execute if score $ilv ui_temp matches 2..5 run scoreboard players operation $en_temp ui_temp /= $en_max ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $en_temp ui_temp = $en ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $en_temp ui_temp *= #100 ui_num
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $en_temp ui_temp /= $en_max ui_temp

#
execute if score $ilv ui_temp matches ..1 run data modify entity @s Item.tag.display.Lore append value '{"text":"N_S","color":"white"}'
execute if score $ilv ui_temp matches 2 if score $en_temp ui_temp matches ..4 run data modify entity @s Item.tag.display.Lore append value '{"text":"LOW","color":"red"}'
execute if score $ilv ui_temp matches 2 if score $en_temp ui_temp matches 5..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"HIGH","color":"green"}'
execute if score $ilv ui_temp matches 2 if score $en_temp ui_temp matches 9..10 run data modify entity @s Item.tag.display.Lore append value '{"text":"MAX","color":"aqua"}'
execute if score $ilv ui_temp matches 3 if score $en_temp ui_temp matches ..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"LOW","color":"red"}'
execute if score $ilv ui_temp matches 3 if score $en_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"MED","color":"yellow"}'
execute if score $ilv ui_temp matches 3 if score $en_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"HIGH","color":"green"}'
execute if score $ilv ui_temp matches 3 if score $en_temp ui_temp matches 9..10 run data modify entity @s Item.tag.display.Lore append value '{"text":"MAX","color":"aqua"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches ..2 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches ..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"red"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"gold"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"yellow"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"green"}'
execute if score $ilv ui_temp matches 4..5 if score $en_temp ui_temp matches 10 run data modify entity @s Item.tag.display.Lore append value '{"text":"100%","color":"aqua"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches ..29 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches ..29 run data modify entity @s Item.tag.display.Lore append value '{"text":"%","color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 30..59 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 30..59 run data modify entity @s Item.tag.display.Lore append value '{"text":"%","color":"gold"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 60..89 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 60..89 run data modify entity @s Item.tag.display.Lore append value '{"text":"%","color":"yellow"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 90..99 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$en_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 90..99 run data modify entity @s Item.tag.display.Lore append value '{"text":"%","color":"green"}'
execute if score $ilv ui_temp matches 6.. if score $en_temp ui_temp matches 100 run data modify entity @s Item.tag.display.Lore append value '{"text":"100%","color":"aqua"}'

#
data modify entity @s Item.tag.display.Lore append value '{"text":"             ","color":"white"}'

#
data modify entity @s Item.tag.display.Lore append value '{"text":"ES","color":"blue"}'
data modify entity @s Item.tag.display.Lore append value '{"text":":","color":"gray"}'

#
execute if score $ilv ui_temp matches 2..4 run scoreboard players operation $s1 ui_temp += $s2 ui_temp
execute if score $ilv ui_temp matches 2..4 run scoreboard players operation $s1_max ui_temp += $s2_max ui_temp
execute if score $ilv ui_temp matches 2..4 run scoreboard players operation $s1_temp ui_temp = $s1 ui_temp
execute if score $ilv ui_temp matches 2..4 run scoreboard players operation $s1_temp ui_temp *= #10 ui_num
execute if score $ilv ui_temp matches 2..4 run scoreboard players operation $s1_temp ui_temp /= $s1_max ui_temp
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s1_temp ui_temp = $s1 ui_temp
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s1_temp ui_temp *= #10 ui_num
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s1_temp ui_temp /= $s1_max ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s1_temp ui_temp = $s1 ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s1_temp ui_temp *= #100 ui_num
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s1_temp ui_temp /= $s1_max ui_temp
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s2_temp ui_temp = $s2 ui_temp
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s2_temp ui_temp *= #10 ui_num
execute if score $ilv ui_temp matches 5 run scoreboard players operation $s2_temp ui_temp /= $s2_max ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s2_temp ui_temp = $s2 ui_temp
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s2_temp ui_temp *= #100 ui_num
execute if score $ilv ui_temp matches 6.. run scoreboard players operation $s2_temp ui_temp /= $s2_max ui_temp

#
execute if score $ilv ui_temp matches ..1 run data modify entity @s Item.tag.display.Lore append value '{"text":"N_S","color":"white"}'
execute if score $ilv ui_temp matches 2 if score $s1_temp ui_temp matches ..4 run data modify entity @s Item.tag.display.Lore append value '{"text":"LOW","color":"red"}'
execute if score $ilv ui_temp matches 2 if score $s1_temp ui_temp matches 5..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"HIGH","color":"green"}'
execute if score $ilv ui_temp matches 2 if score $s1_temp ui_temp matches 9..10 run data modify entity @s Item.tag.display.Lore append value '{"text":"MAX","color":"aqua"}'
execute if score $ilv ui_temp matches 3 if score $s1_temp ui_temp matches ..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"LOW","color":"red"}'
execute if score $ilv ui_temp matches 3 if score $s1_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"MED","color":"yellow"}'
execute if score $ilv ui_temp matches 3 if score $s1_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"HIGH","color":"green"}'
execute if score $ilv ui_temp matches 3 if score $s1_temp ui_temp matches 9..10 run data modify entity @s Item.tag.display.Lore append value '{"text":"MAX","color":"aqua"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches ..-1 run data modify entity @s Item.tag.display.Lore append value '{"text":"00%","color":"red"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"red"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"gold"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"yellow"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"text":"0%","color":"green"}'
execute if score $ilv ui_temp matches 4 if score $s1_temp ui_temp matches 10 run data modify entity @s Item.tag.display.Lore append value '{"text":"100%","color":"aqua"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches ..-1 run data modify entity @s Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"gold"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"yellow"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"green"}'
execute if score $ilv ui_temp matches 5 if score $s2_temp ui_temp matches 10 run data modify entity @s Item.tag.display.Lore append value '{"text":"100","color":"aqua"}'
execute if score $ilv ui_temp matches 5 run data modify entity @s Item.tag.display.Lore append value '{"text":":","color":"gray"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches ..-1 run data modify entity @s Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 0..2 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"red"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 3..5 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"gold"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 6..8 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"yellow"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 9 run data modify entity @s Item.tag.display.Lore append value '{"text":"0","color":"green"}'
execute if score $ilv ui_temp matches 5 if score $s1_temp ui_temp matches 10 run data modify entity @s Item.tag.display.Lore append value '{"text":"100","color":"aqua"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches ..-1 run data modify entity @s Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches 0..29 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches 30..59 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches 60..89 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches 90..99 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s2_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 6.. if score $s2_temp ui_temp matches 100 run data modify entity @s Item.tag.display.Lore append value '{"text":"100","color":"aqua"}'
execute if score $ilv ui_temp matches 6.. run data modify entity @s Item.tag.display.Lore append value '{"text":":","color":"gray"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches ..-1 run data modify entity @s Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches 0..29 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"red"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches 30..59 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"gold"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches 60..89 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches 90..99 run data modify entity @s Item.tag.display.Lore append value '{"score":{"name":"$s1_temp","objective":"ui_temp"},"color":"green"}'
execute if score $ilv ui_temp matches 6.. if score $s1_temp ui_temp matches 100 run data modify entity @s Item.tag.display.Lore append value '{"text":"100","color":"aqua"}'
