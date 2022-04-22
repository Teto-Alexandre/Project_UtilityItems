#=======================================================================================================

execute at @s[tag=ui_i_1] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 恒星反応発電機","color":"gray"}]
execute at @s[tag=ui_i_2] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 熱源生成器","color":"gray"}]
execute at @s[tag=ui_i_3] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 簡易蓄電器","color":"gray"}]
execute at @s[tag=ui_i_4] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 電気かまど","color":"gray"}]
execute at @s[tag=ui_i_5] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 高速電気かまど","color":"gray"}]
execute at @s[tag=ui_i_6] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 圧縮機","color":"gray"}]
execute at @s[tag=ui_i_7] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 粉砕機","color":"gray"}]
execute at @s[tag=ui_i_8] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 注入機","color":"gray"}]
execute at @s[tag=ui_i_9] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 組立機","color":"gray"}]
execute at @s[tag=ui_i_10] run tellraw @p[scores={ui_tmw_id=301}] [{"text":"チェーンリンクメーカー","color":"aqua"},{"text":"> 選択対象: 金属加工機","color":"gray"}]

tag @s remove ui_i_seld

#=======================================================================================================