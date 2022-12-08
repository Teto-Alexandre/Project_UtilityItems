#見た目
    fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire replace #ui:nocol

#燃やす
    execute positioned ~ ~-1 ~ run scoreboard players add @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..1.5] tds_fire 10