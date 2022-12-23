#的のHPをリゲインしダメージを出力
execute if block ~ ~ ~ air run function ui:ui/19/dt
execute if predicate ui:percentage/1 run function ui:ui/19/dt

#コンボ中断
execute if entity @s[nbt={PortalCooldown:1}] run function ui:ui/19/pc

#近くでしゃがむと消滅
execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/19/st