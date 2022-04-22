
# トーテムのパーティクルをしばらく表示する
    execute at @a[scores={tds_totem=1..}] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 3 normal
    execute as @a[scores={tds_totem=1..}] run scoreboard players remove @s tds_totem 1
    execute if entity @a[scores={tds_totem=1..}] run schedule function tds:core/totem.ss 1t append
    