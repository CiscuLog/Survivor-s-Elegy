
execute as @e[type=item_display,tag=siscu.lectern_book] if function siscu:blocks/lectern_books/update/maintain run schedule function siscu:blocks/lectern_books/update/schedule 1s
