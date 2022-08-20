# .lp
    summon slime ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["ui_motionslime","ui_unhurtable"]}
    scoreboard players remove $Knockback tds_dmg 1
    execute if score $Knockback tds_dmg matches 1.. run function ui:common/projectile/hit.kb
