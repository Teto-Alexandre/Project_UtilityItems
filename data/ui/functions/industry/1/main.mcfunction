#=======================================================================================================

#時間経過カウント
    #scoreboard players add @s ui_tc 1

#電力をリンク先から引き出す
    function ui:industry/su_input

#電力スコア増加
    scoreboard players operation @s ui_i_su += @s ui_i_sug
    scoreboard players operation @s ui_i_su < @s ui_i_sum

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#土台壊されたら破壊
    execute if entity @s[tag=ui_i_break] run particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
    execute if entity @s[tag=ui_i_break] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130001,display:{Name:'{"text":"恒星反応発電機","italic":false,"color":"dark_green"}',Lore:['[{"text":"自動的にエネルギーを生み出す","color":"gray","italic":false}]','[{"text":"発電量：1SU/t","color":"gray","italic":false}]','[{"text":"送電速度：5SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：600SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_1"]}}}}
    execute if entity @s[tag=ui_i_break] run kill @s

#=======================================================================================================