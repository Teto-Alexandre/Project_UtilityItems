#==========================================================================================

#電力をリンク先から引き出す
    function ui:industry/su_input

#電力スコアを減少して動作を進める
    execute unless score @s ui_i_item matches 64.. if data block ~ ~ ~ Items[{Slot:0b}] if score @s ui_i_su >= @s ui_i_suu run scoreboard players operation @s ui_tc += @s ui_i_ctp
    execute unless score @s ui_i_item matches 64.. if data block ~ ~ ~ Items[{Slot:0b}] if score @s ui_i_su >= @s ui_i_suu run scoreboard players operation @s ui_i_su -= @s ui_i_suu
    scoreboard players operation @s ui_i_su < @s ui_i_sum
    scoreboard players operation @s ui_i_su > #0 ui_num

#動作が進んだらアイテムを産出
    execute unless score @s ui_i_item matches 64.. if score @s ui_tc matches 21.. run scoreboard players add @s ui_i_item 1
    execute unless score @s ui_i_item matches 65.. if score @s ui_tc matches 21.. run scoreboard players set @s ui_tc 1

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/blaze_gen
    
#土台壊されたら破壊
    execute if entity @s[tag=ui_i_break] run particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
    execute if entity @s[tag=ui_i_break] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,display:{Name:'{"text":"熱源生成器","italic":false,"color":"dark_green"}',Lore:['[{"text":"エネルギーから熱源を生み出す","color":"gray","italic":false}]','[{"text":"電力消費：15SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：2000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_2"]}}}}
    execute if entity @s[tag=ui_i_break] run kill @s

#==========================================================================================