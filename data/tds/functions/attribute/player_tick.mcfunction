#===========================================================================
#
#   Copyright © 2020 赤石愛
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#===========================================================================
#
#   テトのレポート：About this system
#   〇スコアボードで設定した数値に体力も設定するシステムです
#
#   動作手順
#       １・attributeを二分探索で使用して体力最大値を変更します
#       ２・instant_healthで回復して、体力を指定値にします
#       ３・次tickに体力最大値を元に戻します
#
#   最終追記済み
#       ・バグ結構あったのでごっそり削り取りました
#       ・1.17でマイクロソフトに死に歩きバグが修正されました（私の努力が...）
#
#===========================================================================

#HP変更したらちゃんと減少した最大値を戻さないとね
#回復はtickの最後に起こるからこれをmodifyの後ろに持っていったらダメだよ
execute if entity @s[tag=tds_hps_mod] run function tds:attribute/restore

#スコアがあるならHP調整機構を動かす
execute if score @s tds_hps matches -2147483648.. run function tds:attribute/modify

#繰り返し使うからちゃんと実行元の進捗をリセットする
advancement revoke @s only tds:player_tick