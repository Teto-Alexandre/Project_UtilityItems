# 即席キング
    tag @r[scores={ui_team=1}] add tmw_256_king
    tag @r[scores={ui_team=2}] add tmw_256_king

# 放送
    playsound block.note_block.hat player @a[scores={ui_team=1..2}] ~ ~ ~ 1 1 1
    tellraw @a [{"selector":"@a[tag=tmw_256_king,scores={ui_team=1}]"},{"text":"が","color":"gray"},{"text":"青チーム","color":"aqua"},{"text":"のキングです","color":"gray"}]
    tellraw @a [{"selector":"@a[tag=tmw_256_king,scores={ui_team=2}]"},{"text":"が","color":"gray"},{"text":"赤チーム","color":"light_purple"},{"text":"のキングです","color":"gray"}]