# サブタイトル
execute if score $sp.temp ui_temp matches 100 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■■■■■■","color":"aqua"}]
execute if score $sp.temp ui_temp matches 90..99 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■■■■■□","color":"green"}]
execute if score $sp.temp ui_temp matches 80..89 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■■■■□□","color":"green"}]
execute if score $sp.temp ui_temp matches 70..79 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■■■□□□","color":"green"}]
execute if score $sp.temp ui_temp matches 60..69 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■■□□□□","color":"green"}]
execute if score $sp.temp ui_temp matches 50..59 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■■□□□□□","color":"yellow"}]
execute if score $sp.temp ui_temp matches 40..49 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■■□□□□□□","color":"yellow"}]
execute if score $sp.temp ui_temp matches 30..39 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■■□□□□□□□","color":"yellow"}]
execute if score $sp.temp ui_temp matches 20..29 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■■□□□□□□□□","color":"red"}]
execute if score $sp.temp ui_temp matches 10..19 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"■□□□□□□□□□","color":"red"}]
execute if score $sp.temp ui_temp matches 0..9 run title @s subtitle ["",{"text":"■■■■■■■■■□","color":"green"},{"text":"                        ","color":"white"},{"text":"□□□□□□□□□□","color":"red"}]

# タイトル
execute if score $sp.temp ui_temp matches 100 run title @s title ["",{"text":"0","color":"green"},{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"},{"text":"               ","color":"white"},{"score":{"name":"$sp.temp","objective":"ui_temp"},"color":"aqua"}]
execute if score $sp.temp ui_temp matches 60..99 run title @s title ["",{"text":"0","color":"green"},{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"},{"text":"               ","color":"white"},{"text":"0","color":"green"},{"score":{"name":"$sp.temp","objective":"ui_temp"},"color":"green"}]
execute if score $sp.temp ui_temp matches 30..59 run title @s title ["",{"text":"0","color":"green"},{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"},{"text":"               ","color":"white"},{"text":"0","color":"yellow"},{"score":{"name":"$sp.temp","objective":"ui_temp"},"color":"yellow"}]
execute if score $sp.temp ui_temp matches 10..29 run title @s title ["",{"text":"0","color":"green"},{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"},{"text":"               ","color":"white"},{"text":"0","color":"red"},{"score":{"name":"$sp.temp","objective":"ui_temp"},"color":"red"}]
execute if score $sp.temp ui_temp matches 0..9 run title @s title ["",{"text":"0","color":"green"},{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"},{"text":"               ","color":"white"},{"text":"00","color":"red"},{"score":{"name":"$sp.temp","objective":"ui_temp"},"color":"red"}]
