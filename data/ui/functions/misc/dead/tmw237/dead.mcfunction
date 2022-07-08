# 死亡したならリスポーンタイムが5秒になる
scoreboard players set @s ui_rst 100
    #誰も死んでなかったら乱数をリロール
    scoreboard players set $mod ui_calc1 23
    function ui:common/rand
    scoreboard players operation #tmw237_txt ui_rst = $rand ui_calc1
scoreboard players add $tmw237 ui_rst 1
tag @s add tmw_237_respawning

# ss
schedule function ui:misc/dead/tmw237/ss 1t append