#各パーティクルに個別実行
#ID,Teamを利用するパーティクル

# 時間経過
    scoreboard players add @s ui_is 1

# 情報共有
    scoreboard players operation $type ui_temp = @s ui_gpc
    scoreboard players operation $is ui_temp = @s ui_is

# コンパス2
execute if score $type ui_temp matches -1 at @s run function ui:common/particle/ss/downer/1/core
# LiDAR
execute if score $type ui_temp matches -2 at @s run function ui:common/particle/ss/downer/2/core
# パーティクル雷
execute if score $type ui_temp matches -10001 at @s run function ui:common/particle/ss/downer/10001/core
# パーティクル雷2
execute if score $type ui_temp matches -10002 at @s run function ui:common/particle/ss/downer/10002/core
# パーティクル雷3
execute if score $type ui_temp matches -10003 at @s run function ui:common/particle/ss/downer/10003/core
# 炎十字
execute if score $type ui_temp matches -10004 at @s run function ui:common/particle/ss/downer/10004/core
# 火魔法陣
execute if score $type ui_temp matches -10005 at @s run function ui:common/particle/ss/downer/10005/core
# 召喚魔法陣
execute if score $type ui_temp matches -10006 at @s run function ui:common/particle/ss/downer/10006/core
# 氷魔法陣
execute if score $type ui_temp matches -10007 at @s run function ui:common/particle/ss/downer/10007/core
# 大氷魔法陣
execute if score $type ui_temp matches -10008 at @s run function ui:common/particle/ss/downer/10008/core
# 大氷魔法陣の魔法陣
execute if score $type ui_temp matches -10009 at @s run function ui:common/particle/ss/downer/10009/core
# 猛烈な衝撃
execute if score $type ui_temp matches -10010 at @s run function ui:common/particle/ss/downer/10010/core
# 猛烈な衝撃 - 親
execute if score $type ui_temp matches -10011 at @s run function ui:common/particle/ss/downer/10011/core
# 静寂の残響
execute if score $type ui_temp matches -10012 at @s run function ui:common/particle/ss/downer/10012/core
# 連続爆発
execute if score $type ui_temp matches -10013 at @s run function ui:common/particle/ss/downer/10013/core
# サンダーストーム付属
execute if score $type ui_temp matches -10014 at @s run function ui:common/particle/ss/downer/10014/core
# 微風
execute if score $type ui_temp matches -10015 at @s run function ui:common/particle/ss/downer/10015/core
# 風塵
execute if score $type ui_temp matches -10016 at @s run function ui:common/particle/ss/downer/10016/core
# 断空
execute if score $type ui_temp matches -10017 at @s run function ui:common/particle/ss/downer/10017/core
# カスタムモデル落とし
execute if score $type ui_temp matches -10018 at @s run function ui:common/particle/ss/downer/10018/core
# 銃テスト
execute if score $type ui_temp matches -10019 at @s run function ui:common/particle/ss/downer/10019/core
# 斬撃2
execute if score $type ui_temp matches -10020 at @s run function ui:common/particle/ss/downer/10020/core
# 斬撃マルチ
execute if score $type ui_temp matches -10021 at @s run function ui:common/particle/ss/downer/10021/core
# 回転魔法陣
execute if score $type ui_temp matches -10022 at @s run function ui:common/particle/ss/downer/10022/core
# レーザービット
execute if score $type ui_temp matches -10023 at @s run function ui:common/particle/ss/downer/10023/core
# 追尾する目
execute if score $type ui_temp matches -10024 at @s run function ui:common/particle/ss/downer/10024/core
# 追尾する目2
execute if score $type ui_temp matches -10025 at @s run function ui:common/particle/ss/downer/10025/core
# 黄色い波動と線
execute if score $type ui_temp matches -10026 at @s run function ui:common/particle/ss/downer/10026/core
# 黄色い波動と線2
execute if score $type ui_temp matches -10027 at @s run function ui:common/particle/ss/downer/10027/core
# 黄色い波動と線3
execute if score $type ui_temp matches -10028 at @s run function ui:common/particle/ss/downer/10028/core
# 黄色い波動と線4
execute if score $type ui_temp matches -10029 at @s run function ui:common/particle/ss/downer/10029/core
# 黄色い波動と線5 - 子
execute if score $type ui_temp matches -10030 at @s run function ui:common/particle/ss/downer/10030/core
# 黄色い波動と線5
execute if score $type ui_temp matches -10031 at @s run function ui:common/particle/ss/downer/10031/core
# ミミックの斬撃
execute if score $type ui_temp matches -10032 at @s run function ui:common/particle/ss/downer/10032/core
# 失楽園
execute if score $type ui_temp matches -10033 at @s run function ui:common/particle/ss/downer/10033/core

# 横切り
execute if score $type ui_temp matches -11001 at @s run function ui:common/particle/ss/downer/11001/core
