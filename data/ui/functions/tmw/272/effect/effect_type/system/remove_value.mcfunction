$execute store result score $condition_checker ui_temp run data remove storage cg_custom: advanced_value[{id:"$(id)"}]
$execute unless score $condition_checker ui_temp matches 0 run data remove storage ui:tmw272_text simple_value.$(id)
$execute unless score $condition_checker ui_temp matches 0 run scoreboard objectives remove ui_tmw272_$(id) dummy

$execute if score $condition_checker ui_temp matches 0 run tellraw @a[tag=ui_temp_players] [{"text":">> ","color":"gray"},{"text":"$(id)","color":"white"},{"text":" は存在しないか、削除できません","color":"gray"}]
$execute unless score $condition_checker ui_temp matches 0 run tellraw @a[tag=ui_temp_players] [{"text":">> ","color":"gray"},{"text":"$(id)","color":"white"},{"text":" が削除されました","color":"gray"}]