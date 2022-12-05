#

#
scoreboard players operation $mod ui_calc1 = #100 ui_num
function ui:common/rand
scoreboard players operation $bonus ui_temp -= $repeat ui_temp

#
#execute if score $rand ui_calc1 matches 0..49 run give @s minecraft:stray_spawn_egg{CustomModelData:131002,display:{Name:'{"italic":false,"color":"white","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・通常資源"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_17"]}} 1
#execute if score $rand ui_calc1 matches 50..59 run give @s minecraft:stray_spawn_egg{CustomModelData:131005,display:{Name:'{"italic":false,"color":"green","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・圧縮資源"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_18"]}} 1
#execute if score $rand ui_calc1 matches 60..89 run give @s minecraft:stray_spawn_egg{CustomModelData:131006,display:{Name:'{"italic":false,"color":"gold","text":"文明のレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・謎のレシピ"}]','[{"italic":false,"color":"gray","text":" ・不思議なレシピ"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]','[{"italic":false,"color":"gray","text":" ・神秘のレシピ"}]','[{"italic":false,"color":"gray","text":" ・伝説のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_5"]}} 1
#execute if score $rand ui_calc1 matches 90..99 run give @s minecraft:stray_spawn_egg{CustomModelData:131003,display:{Name:'{"italic":false,"color":"aqua","text":"アイテムギフト"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・ダンジョンの宝物"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_12"]}} 1

#
scoreboard players add $repeat ui_temp 2
execute if score $bonus ui_temp matches 1.. run function ui:common/mine_square/system/bonus.resources