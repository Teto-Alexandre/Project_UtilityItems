tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"gold","text":"Project-UtilityItems"},{"color":"white","text":" が起動しました"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"white","translate":"Recommend to use resourcepack"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"white","text":"各アイテムのレシピは "},{"color":"gold","keybind":"key.advancements"},{"color":"white","text":" キー(進捗)で確認できます"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"text":"  - Made by teto","color":"gold"}]

give @s minecraft:stray_spawn_egg{CustomModelData:131002,display:{Name:'{"italic":false,"color":"white","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・ボーナスチェスト"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_11"]}} 1

advancement grant @s only ui:main/root

advancement grant @s only ui:main/magic_sword/magic_sword
advancement grant @s only ui:main/magic_sword/air_node
advancement grant @s only ui:main/magic_sword/air_node2

advancement grant @s only ui:main/charm/charm
advancement grant @s only ui:main/charm/air_node
advancement grant @s only ui:main/charm/air_node2

advancement grant @s only ui:main/arrow/arrow
advancement grant @s only ui:main/arrow/air_node
advancement grant @s only ui:main/arrow/air_node2

advancement grant @s only ui:main/industry/industry
advancement grant @s only ui:main/industry/air_node
advancement grant @s only ui:main/industry/air_node2

scoreboard players set @s ui_st 0
scoreboard players set @s ui_gct -1
scoreboard players set @s ui_bc -1
scoreboard players set @s ui_skilltree_v 1
scoreboard players set @s ui_d_mult 10
scoreboard players set @s ui_lvl_craft_lvl 0
scoreboard players set @s ui_lvl_craft_exp -10000
scoreboard players set @s ui_lvl_mine_lvl 0
scoreboard players set @s ui_lvl_mine_exp -10000
scoreboard players set @s ui_lvl_cut_lvl 0
scoreboard players set @s ui_lvl_cut_exp -10000
scoreboard players set @s ui_lvl_dig_lvl 0
scoreboard players set @s ui_lvl_dig_exp -10000
scoreboard players set @s ui_lvl_harv_lvl 0
scoreboard players set @s ui_lvl_harv_exp -10000
scoreboard players set @s ui_mine_f 0

#プレイヤーidを振る
execute as @s unless entity @s[scores={ui_id=1..}] run function ui:misc/act/make_id