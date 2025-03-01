$execute store result score $condition_checker ui_temp run data remove storage cg_custom: advanced_value[{id:"$(id)"}]

data modify storage cg_custom: advanced_value append from storage ui:temp temp.effect.value
$data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.score set value '[{"score":{"name":"@s","objective":"ui_tmw272_$(id)"}}]'
$data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.score_with_color set value '[{"score":{"name":"@s","objective":"ui_tmw272_$(id)"},"color":"$(color)"}]'
$data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.target_score_with_color set value '[{"score":{"name":"@e[tag=tmw272_visual_input,limit=1]","objective":"ui_tmw272_$(id)"},"color":"$(color)"}]'
$data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.title set value '[{"text":"【$(name)】","color":"$(color)"}]'
$execute if data storage ui:temp temp.effect.value{effect:"null"} run data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.name set value '[{"text":"$(name)","color":"$(color)","italic":true}]'
$execute unless data storage ui:temp temp.effect.value{effect:"null"} run data modify storage cg_custom: advanced_value[{id:"$(id)"}].text.name set value '[{"text":"$(name)","color":"$(color)","italic":false}]'
$scoreboard objectives add ui_tmw272_$(id) dummy
$execute as @e[tag=tmw272_active] unless score @s ui_tmw272_$(id) matches -2147483648..2147483647 run scoreboard players set @s ui_tmw272_$(id) $(initial)

$execute if score $condition_checker ui_temp matches 0 run tellraw @a[tag=ui_temp_players] [{"text":">> ","color":"gray"},{"text":"$(id)","color":"$(color)"},{"text":" -","color":"gray"},{"text":"【$(name)】","color":"$(color)"},{"text":"が作成されました 初期値:","color":"gray"},{"text":"$(initial)","color":"$(color)"}]
$execute unless score $condition_checker ui_temp matches 0 run tellraw @a[tag=ui_temp_players] [{"text":">> ","color":"gray"},{"text":"$(id)","color":"$(color)"},{"text":" -","color":"gray"},{"text":"【$(name)】","color":"$(color)"},{"text":"が再定義されました 初期値:","color":"gray"},{"text":"$(initial)","color":"$(color)"}]

$data modify storage ui:tmw272_text simple_value.$(id) set from storage cg_custom: advanced_value[{id:"$(id)"}].text