local keepScroll = false
function onCreate()

setPropertyFromClass();
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', true);
	end
end

function onDestroy()
	if keepScroll == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', false);
	elseif keepScroll == true then
		keepScroll = false;
	end
end


function onCountdownStarted()
	for i = 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'x', -900);
	end

	setPropertyFromGroup('playerStrums', 0, 'x', 420);
	setPropertyFromGroup('playerStrums', 1, 'x', 530);
	setPropertyFromGroup('playerStrums', 2, 'x', 640);
	setPropertyFromGroup('playerStrums', 3, 'x', 750);
	setPropertyFromGroup('playerStrums', 0, 'y', 600);
	setPropertyFromGroup('playerStrums', 1, 'y', 600);
	setPropertyFromGroup('playerStrums', 2, 'y', 600);
	setPropertyFromGroup('playerStrums', 3, 'y', 600);
end