function goodNoteHit(id, direction, noteType, isSustainNote)
			if noteType == 'sing with player' then
    if direction == 0 then
        characterPlayAnim('boyfriend','singLEFT','forced' == true)
    elseif direction == 1 then
        characterPlayAnim('boyfriend','singDOWN','forced' == true)
    elseif direction == 2 then
        characterPlayAnim('boyfriend','singUP','forced' == true)
    elseif direction == 3 then
        characterPlayAnim('boyfriend','singRIGHT','forced' == true)
		end
	end
end