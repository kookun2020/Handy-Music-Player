#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
##クラフト時の動作
advancement revoke @s only musicplayer:crafted_credit_reco
give @s enchanted_book{display:{Name:'{"text":"レコード","color":"aqua","italic":false}',Lore:['{"text":"C418 - alpha","color":"gray","italic":false}']},CustomModelData:2001,specialdisc:1} 1
clear @s structure_void 1
recipe take @a musicplayer:credits_recipe
scoreboard players set @s kkun_killitem 2