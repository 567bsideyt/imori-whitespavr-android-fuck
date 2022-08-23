function goodNoteHit(id, direction, noteType, isSustainNote)
			if noteType == 'sing with gf' then
    if direction == 0 then
        characterPlayAnim('gf','singLEFT','forced' == true)
    elseif direction == 1 then
        characterPlayAnim('gf','singDOWN','forced' == true)
    elseif direction == 2 then
        characterPlayAnim('gf','singUP','forced' == true)
    elseif direction == 3 then
        characterPlayAnim('gf','singRIGHT','forced' == true)
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
			if noteType == 'sing with gf' then
    if direction == 0 then
        characterPlayAnim('gf','singLEFT','forced' == true)
    elseif direction == 1 then
        characterPlayAnim('gf','singDOWN','forced' == true)
    elseif direction == 2 then
        characterPlayAnim('gf','singUP','forced' == true)
    elseif direction == 3 then
        characterPlayAnim('gf','singRIGHT','forced' == true)
		end
	end
end