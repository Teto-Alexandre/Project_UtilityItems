# 初期状態にする
    scoreboard players set $temp3 ui_temp 0
    scoreboard players operation $level.old ui_temp = @s ui_lvl_dig_lvl

# 内部レベルアップループ
    function ui:level/dig/exp.lp

# レベルアップ報酬係数算出
    #各レベルアップ
        scoreboard players operation $temp1 ui_temp = $level ui_temp
        scoreboard players operation $temp1 ui_temp -= $level.old ui_temp

# レベルアップメッセージを送る
    tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold","bold":true}
    tellraw @s [{"text":"  LEVEL UP! ","color":"aqua","bold":true},{"text":":","color":"gray"},{"text":" DIGGING ","color":"yellow"},{"score":{"name":"$level.old","objective":"ui_temp"},"color":"gray"},{"text":" → ","color":"yellow","bold":true},{"score":{"name":"$level","objective":"ui_temp"},"color":"yellow"}]
    tellraw @s {"text":" "}
    tellraw @s [{"text":"  BONUSES ","color":"aqua","bold":true},{"text":":","color":"gray"}]
    execute unless score $temp3 ui_temp matches 0 run tellraw @s [{"text":"    文明のレシピ x","color":"yellow","bold":true},{"score":{"name":"$temp3","objective":"ui_temp"},"color":"yellow"}]
    tellraw @s [{"text":"    経験値 +","color":"yellow","bold":true},{"score":{"name":"$temp1","objective":"ui_temp"},"color":"yellow"},{"text":"0"}]
    tellraw @s [{"text":"    Digging Fortune +","color":"yellow","bold":true},{"score":{"name":"$temp1","objective":"ui_temp"},"color":"yellow"}]
    execute if score $level ui_temp matches 10.. if score $level.old ui_temp matches ..9 run tellraw @s [{"text":"    [解禁]小さな黒穹の断片","color":"yellow","bold":true}]
    execute if score $level ui_temp matches 25.. if score $level.old ui_temp matches ..24 run tellraw @s [{"text":"    [解禁]グロウストーンダスト","color":"yellow","bold":true}]
    execute if score $level ui_temp matches 50.. if score $level.old ui_temp matches ..49 run tellraw @s [{"text":"    [解禁]火薬","color":"yellow","bold":true}]
    execute if score $level ui_temp matches 100.. if score $level.old ui_temp matches ..99 run tellraw @s [{"text":"    [解禁]ダイヤモンド","color":"yellow","bold":true}]
    tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold","bold":true}

# ブロードキャスト
    execute if score $level ui_temp matches 100.. if score $level.old ui_temp matches ..99 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 100 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 200.. if score $level.old ui_temp matches ..199 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 200 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 300.. if score $level.old ui_temp matches ..299 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 300 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 400.. if score $level.old ui_temp matches ..399 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 400 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 500.. if score $level.old ui_temp matches ..499 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 500 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 600.. if score $level.old ui_temp matches ..599 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 600 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 700.. if score $level.old ui_temp matches ..699 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 700 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 800.. if score $level.old ui_temp matches ..799 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 800 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 900.. if score $level.old ui_temp matches ..899 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 900 ","color":"green"},{"text":"になりました","color":"gray"}]
    execute if score $level ui_temp matches 1000.. if score $level.old ui_temp matches ..999 run tellraw @a [{"text":"Achievement","color":"white"},{"text":"> ","color":"green"},{"selector":"@s"},{"text":" の DIGGING レベルが","color":"gray"},{"text":" 1000 ","color":"green"},{"text":"になりました","color":"gray"}]

# レベルアップ報酬を渡す
    #文明のレシピ
        data merge storage ui:temp {give:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:131006,display:{Name:'{"italic":false,"color":"gold","text":"文明のレシピ"}',Lore:['[{"italic":false,"color":"gray","text":"<内容物>"}]','[{"italic":false,"color":"gray","text":" ・謎のレシピ"}]','[{"italic":false,"color":"gray","text":" ・不思議なレシピ"}]','[{"italic":false,"color":"gray","text":" ・未知のレシピ"}]','[{"italic":false,"color":"gray","text":" ・神秘のレシピ"}]','[{"italic":false,"color":"gray","text":" ・伝説のレシピ"}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_t","ui_egg_t_5"]}}}}
        scoreboard players operation $c.give.num ui_temp = $temp3 ui_temp
        execute at @s run function ui:common/give
    #経験値
        scoreboard players set $c.exp.num ui_temp 10
        scoreboard players operation $c.exp.num ui_temp *= $temp1 ui_temp
        execute at @s run function ui:common/exp
    #採掘幸運
        scoreboard players operation @s ui_dig_f += $temp1 ui_temp

# レベルアップサウンド
    execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5 0
