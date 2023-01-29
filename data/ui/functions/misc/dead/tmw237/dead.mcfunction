# データ検出
execute store result score $amp ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Amp
execute if entity @s[tag=tmw_237_king] run scoreboard players set $amp ui_temp -1

# 死亡したならリスポーンタイムが5秒になる -tmw_237_sub_mult-
scoreboard players set @s ui_rst 100
    #誰も死んでなかったら乱数をリロール
    scoreboard players set $mod ui_calc1 23
    function ui:common/rand
    scoreboard players operation #tmw237_txt ui_rst = $rand ui_calc1
scoreboard players add $tmw237 ui_rst 1
tag @s add tmw_237_respawning

# スーパーブーストリセット
scoreboard players reset @s ui_tmw237_boost

# サブ消滅
scoreboard players set $success ui_temp 0
scoreboard players operation $id ui_temp = @s ui_id
execute as @e[tag=tmw_237_sub_mult] if score @s ui_id = $id ui_temp store success score $success ui_temp run kill @s
execute if score $success ui_temp matches 1.. run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"設置した装置が消滅しました","color":"gray"}]

# amp分岐
execute unless score $amp ui_temp matches 0 run function ui:misc/dead/tmw237/amp/master

# ss
schedule function ui:misc/dead/tmw237/ss 1t append