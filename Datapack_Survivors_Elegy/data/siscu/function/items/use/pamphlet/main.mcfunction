
# uh-oh, this is't working because it's an in-progress concept!
execute unless entity @s[name=Siscu] run return fail
return run tellraw @s [{text:"Welcome, Operator"}]

# whatever nonsense comes with it
dialog show @s siscu:about
dialog show @s {type:"multi_action","title":"Pamphlet","actions":[{label:"Survivor's Elegy AAAAAH"}]}
