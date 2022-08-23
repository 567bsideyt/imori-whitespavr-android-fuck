function onCreate()
    setProperty('healthBar.alpha', tonumber(0))
    setProperty('iconP1.alpha', tonumber(0))
    setProperty('iconP2.alpha', tonumber(0))
        if boyfriendName == 'bfisjudgingyou' then
    setProperty('dad.y', 680)
end
end

function onUpdate()
        if boyfriendName == 'bfisjudgingyou' then
	if curStep < 1272 then
	if getProperty('health') < 0.45 then
	setProperty('omori.visible',false)
	setProperty('omorided.visible',true)
	setProperty('sad.visible',true)
	setProperty('ecstatic.visible',true)
	setProperty('picoyay.visible',true)
	setProperty('oppeningtext.visible',false)
	setProperty('losingtext.visible',true)
end
end
end
	if curStep < 1272 then
        if boyfriendName == 'bfisjudgingyou' then
	if getProperty('health') > 0.45 and getProperty('health') < 1.65 then
	setProperty('omori.visible',true)
	setProperty('sad.visible',false)
	setProperty('omorided.visible',false)
	setProperty('happy.visible',false)
	setProperty('omoriyay.visible',false)
	setProperty('enraged.visible',false)
	setProperty('picoded.visible',false)
	setProperty('ecstatic.visible',false)
	setProperty('picoyay.visible',false)
	setProperty('losingtext.visible',false)
	setProperty('winningtext.visible',false)
end
end
end
        if boyfriendName == 'bfisjudgingyou' then
	if curStep < 1272 then
	if getProperty('health') > 1.65 then
	setProperty('omori.visible',false)
	setProperty('omoriyay.visible',true)
	setProperty('happy.visible',true)
	setProperty('enraged.visible',true)
	setProperty('picoded.visible',true)
	setProperty('oppeningtext.visible',false)
	setProperty('winningtext.visible',true)
end
end
end
        if boyfriendName == 'bfisjudgingyou' then
	if curStep > 1264 then
	triggerEvent('Change Character', 'dad', 'picoisoverhislimit')
end
end
        if boyfriendName == 'bfisjudgingyou' then
	if curStep >= 1264 and curStep < 1272 then
	if getProperty('health') > 0.45 then
        characterPlayAnim('dad','safetyOFF','true')
else
	if getProperty('health') < 0.45 then
        characterPlayAnim('dad','spin','true')
end
end
end
end
        if boyfriendName == 'bfisjudgingyou' then
	if curStep > 1271 and curStep < 1273 or curStep > 1399 and curStep < 1401 then
	cameraFlash('game', 'ff0000', '0.8' ,'true')
        characterPlayAnim('bf','dodge','true')
	if getProperty('health') > 0.45 then
        characterPlayAnim('dad','headshot','true')
else
	if getProperty('health') < 0.45 then
        characterPlayAnim('dad','shoot','true')
end
end
end
end
        if boyfriendName == 'bfisjudgingyou' then
	if curStep >= 1272 and curStep < 1280 then
	if getProperty('health') > 0.45 then
	setProperty('backgrounddying.visible',true)
	setProperty('backgrounddyingoverlay.visible',true)
	setProperty('winningtext.visible',false)
	setProperty('picotoldyou.visible',true)
	setProperty('orillkillTHEM.visible',true)
	setProperty('ipaidyouto.visible',true)
	setProperty('neutral.visible',false)
	setProperty('happy.visible',false)
	setProperty('sad.visible',false)
	setProperty('omoriworry.visible',true)
	setProperty('omori.visible',false)
	setProperty('omoriyay.visible',false)
	setProperty('neutral2.visible',false)
	setProperty('ecstatic.visible',false)
	setProperty('enraged.visible',false)
	setProperty('pico.visible',false)
	setProperty('picoded.visible',false)
	setProperty('picokill.visible',true)
	setProperty('nothoughts.visible',false)
	setProperty('headempty.visible',true)
	setProperty('gf.visible',false)
	setProperty('gfshocked.visible',true)
else
	if getProperty('health') < 0.45 then
	setProperty('backgroundoverlay.visible',true)
	setProperty('losingtext.visible',false)
	setProperty('youlistened.visible',true)
	setProperty('thedealsoff.visible',true)
	setProperty('neutral.visible',false)
	setProperty('happy.visible',true)
	setProperty('sad.visible',false)
	setProperty('omorided.visible',false)
	setProperty('omoriyay.visible',true)
	setProperty('neutral2.visible',false)
	setProperty('ecstatic.visible',true)
	setProperty('enraged.visible',false)
end
end
end
end
end