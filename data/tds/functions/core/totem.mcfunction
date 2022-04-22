
# HPを1に設定しトーテムを一個消費する
# 同時に再生Ⅱ45s、火炎耐性40s、衝撃吸収Ⅱ5sを得る
    scoreboard players set $Health tds_dmg 100
    scoreboard players set @s ui_uset 1
    scoreboard players set $temp tds_dmg 0
    execute store success score $temp tds_dmg run item replace entity @s[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] weapon.mainhand with air
    execute if score $temp tds_dmg matches 0 run item replace entity @s weapon.offhand with air
    advancement grant @s only minecraft:adventure/totem_of_undying
    effect give @s regeneration 45 1 false
    effect give @s fire_resistance 40 0 false
    effect give @s absorption 5 1 false
    playsound item.totem.use player @a ~ ~ ~ 1 1 0
    scoreboard players set @s tds_totem 30
    schedule function tds:core/totem.ss 1t append