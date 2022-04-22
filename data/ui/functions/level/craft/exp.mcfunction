# 初期状態にする
    scoreboard players set $temp ui_temp 0
    scoreboard players set $temp3 ui_temp 0
    scoreboard players operation $level.old ui_temp = @s ui_lvl_craft_lvl

# 内部レベルアップループ
    function ui:level/craft/exp.lp

# レベルアップ報酬係数算出
    #各レベルアップ
        scoreboard players operation $temp1 ui_temp = $level ui_temp
        scoreboard players operation $temp1 ui_temp -= $level.old ui_temp

# レベルアップメッセージを送る
    execute if score $temp ui_temp matches 1 run tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold","bold":true}
    execute if score $temp ui_temp matches 1 run tellraw @s [{"text":"  LEVEL UP! ","color":"aqua","bold":true},{"text":":","color":"gray"},{"text":" CRAFTING ","color":"yellow"},{"score":{"name":"$level.old","objective":"ui_temp"},"color":"gray"},{"text":" → ","color":"yellow","bold":true},{"score":{"name":"$level","objective":"ui_temp"},"color":"yellow"}]
    execute if score $temp ui_temp matches 1 run tellraw @s {"text":" "}
    execute if score $temp ui_temp matches 1 run tellraw @s [{"text":"  BONUSES ","color":"aqua","bold":true},{"text":":","color":"gray"}]
    execute if score $temp ui_temp matches 1 unless score $temp3 ui_temp matches 0 run tellraw @s [{"text":"    文明のレシピ x","color":"yellow","bold":true},{"score":{"name":"$temp3","objective":"ui_temp"},"color":"yellow"}]
    execute if score $temp ui_temp matches 1 run tellraw @s [{"text":"    経験値 +","color":"yellow","bold":true},{"score":{"name":"$temp1","objective":"ui_temp"},"color":"yellow"},{"text":"00"}]
    execute if score $temp ui_temp matches 1 run tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold","bold":true}

# レベルアップ報酬を渡す
    #文明のレシピ
        data merge storage ui:temp {give:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:131006,display:{Name:'{"italic":false,"color":"gold","text":"文明のレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・謎のレシピ"}]','[{"italic":false,"color":"gray","text":" ・不思議なレシピ"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]','[{"italic":false,"color":"gray","text":" ・神秘のレシピ"}]','[{"italic":false,"color":"gray","text":" ・伝説のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_5"]}}}}
        scoreboard players operation $c.give.num ui_temp = $temp3 ui_temp
        execute at @s run function ui:common/give
    #経験値
        scoreboard players set $c.exp.num ui_temp 100
        scoreboard players operation $c.exp.num ui_temp *= $temp1 ui_temp
        execute at @s run function ui:common/exp

# レベルアップサウンド
    execute if score $temp ui_temp matches 1 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5 0
