local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 800;
local yy = 760;
local xx2 = 800;
local yy2 = 760;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

        makeLuaSprite('background', 'background', -20, 0);
	setScrollFactor('background', 0, 0);
	scaleObject('background', 0.68, 0.68);

        makeLuaSprite('backgroundoverlay', 'backgroundoverlay', -20, 0);
	setScrollFactor('backgroundoverlay', 0, 0);
	scaleObject('backgroundoverlay', 0.68, 0.68);
        setBlendMode('backgroundoverlay', 'add')
	setProperty('backgroundoverlay.visible',false)

        makeLuaSprite('backgrounddying', 'backgrounddying', -20, 0);
	setScrollFactor('backgrounddying', 0, 0);
	scaleObject('backgrounddying', 0.68, 0.68);
	setProperty('backgrounddying.visible',false)

        makeLuaSprite('backgrounddyingoverlay', 'backgrounddyingoverlay', -20, 0);
	setScrollFactor('backgrounddyingoverlay', 0, 0);
	scaleObject('backgrounddyingoverlay', 0.68, 0.68);
        setBlendMode('backgrounddyingoverlay', 'add')
	setProperty('backgrounddyingoverlay.visible',false)

        makeLuaSprite('front', 'front', 0, 0);
	setScrollFactor('front', 1, 1);
	scaleObject('front', 0.68, 0.68);
	setObjectCamera('front','hud')
	setProperty('front.visible',false)

        makeLuaSprite('lights', 'lights', -20, 0);
	setScrollFactor('lights', 1.1, 1.1);
	scaleObject('lights', 0.68, 0.68);
	setObjectCamera('lights','hud')
	setProperty('lights.visible',false)

        makeLuaSprite('dialoguebox', 'dialoguebox', 320, 0);
	setScrollFactor('dialoguebox', 1.1, 1.1);
	scaleObject('dialoguebox', 1.8, 1.8);
	setObjectCamera('dialoguebox','hud')

        makeLuaSprite('oppeningtext', 'oppeningtext', 320, 0);
	setScrollFactor('oppeningtext', 1.1, 1.1);
	scaleObject('oppeningtext', 1.8, 1.8);
	setObjectCamera('oppeningtext','hud')
	setProperty('oppeningtext.visible',true)

        makeLuaSprite('losingtext', 'losingtext', 320, 0);
	setScrollFactor('losingtext', 1.1, 1.1);
	scaleObject('losingtext', 1.8, 1.8);
	setObjectCamera('losingtext','hud')
	setProperty('losingtext.visible',false)

        makeLuaSprite('youlistened', 'youlistened', 320, 0);
	setScrollFactor('youlistened', 1.1, 1.1);
	scaleObject('youlistened', 1.8, 1.8);
	setObjectCamera('youlistened','hud')
	setProperty('youlistened.visible',false)

        makeLuaSprite('winningtext', 'winningtext', 320, 0);
	setScrollFactor('winningtext', 1.1, 1.1);
	scaleObject('winningtext', 1.8, 1.8);
	setObjectCamera('winningtext','hud')
	setProperty('winningtext.visible',false)

        makeLuaSprite('picotoldyou', 'picotoldyou', 320, 0);
	setScrollFactor('picotoldyou', 1.1, 1.1);
	scaleObject('picotoldyou', 1.8, 1.8);
	setObjectCamera('picotoldyou','hud')
	setProperty('picotoldyou.visible',false)

        makeLuaSprite('theonetoblame', 'theonetoblame', 80, 20);
	setScrollFactor('theonetoblame', 1.1, 1.1);
	scaleObject('theonetoblame', 1.7, 1.7);
	setObjectCamera('theonetoblame','hud')

        makeLuaSprite('orillkillTHEM', 'orillkillTHEM', 80, 20);
	setScrollFactor('orillkillTHEM', 1.1, 1.1);
	scaleObject('orillkillTHEM', 1.7, 1.7);
	setObjectCamera('orillkillTHEM','hud')
	setProperty('orillkillTHEM.visible',false)

        makeAnimatedLuaSprite('ipaidyouto', 'ipaidyouto', 80, 20)addAnimationByPrefix('ipaidyouto','idle','ipaidyouto',6,true)
	setScrollFactor('ipaidyouto', 1, 1);
	scaleObject('ipaidyouto', 1.7, 1.7);
	setObjectCamera('ipaidyouto','hud')
	setProperty('ipaidyouto.visible',false)

        makeLuaSprite('thedealsoff', 'thedealsoff', 80, 20);
	setScrollFactor('thedealsoff', 1.1, 1.1);
	scaleObject('thedealsoff', 1.7, 1.7);
	setObjectCamera('thedealsoff','hud')
	setProperty('thedealsoff.visible',false)

        makeLuaSprite('afraid', 'afraid', 80, 420);
	setScrollFactor('afraid', 1.1, 1.1);
	scaleObject('afraid', 1.7, 1.7);
	setObjectCamera('afraid','hud')
	setProperty('afraid.visible',true)

        makeLuaSprite('neutral', 'neutral', 80, 420);
	setScrollFactor('neutral', 1.1, 1.1);
	scaleObject('neutral', 1.7, 1.7);
	setObjectCamera('neutral','hud')

        makeLuaSprite('sad', 'sad', 80, 420);
	setScrollFactor('sad', 1.1, 1.1);
	scaleObject('sad', 1.7, 1.7);
	setObjectCamera('sad','hud')
	setProperty('sad.visible',false)

        makeLuaSprite('happy', 'happy', 80, 420);
	setScrollFactor('happy', 1.1, 1.1);
	scaleObject('happy', 1.7, 1.7);
	setObjectCamera('happy','hud')
	setProperty('happy.visible',false)

        makeLuaSprite('furious', 'furious', 1010, 420);
	setScrollFactor('furious', 1.1, 1.1);
	scaleObject('furious', 1.7, 1.7);
	setObjectCamera('furious','hud')

        makeLuaSprite('neutral2', 'neutral2', 1010, 420);
	setScrollFactor('neutral2', 1.1, 1.1);
	scaleObject('neutral2', 1.7, 1.7);
	setObjectCamera('neutral2','hud')

        makeLuaSprite('stressedout', 'stressedout', 1010, 420);
	setScrollFactor('stressedout', 1.1, 1.1);
	scaleObject('stressedout', 1.7, 1.7);
	setObjectCamera('stressedout','hud')
	setProperty('stressedout.visible',true)

        makeLuaSprite('enraged', 'enraged', 1010, 420);
	setScrollFactor('enraged', 1.1, 1.1);
	scaleObject('enraged', 1.7, 1.7);
	setObjectCamera('enraged','hud')
	setProperty('enraged.visible',false)

        makeLuaSprite('ecstatic', 'ecstatic', 1010, 420);
	setScrollFactor('ecstatic', 1.1, 1.1);
	scaleObject('ecstatic', 1.7, 1.7);
	setObjectCamera('ecstatic','hud')
	setProperty('ecstatic.visible',false)

        makeLuaSprite('headempty', 'headempty', 1010, 20);
	setScrollFactor('headempty', 1.1, 1.1);
	scaleObject('headempty', 1.7, 1.7);
	setObjectCamera('headempty','hud')
	setProperty('headempty.visible',false)

        makeLuaSprite('nothoughts', 'nothoughts', 1010, 20);
	setScrollFactor('nothoughts', 1.1, 1.1);
	scaleObject('nothoughts', 1.7, 1.7);
	setObjectCamera('nothoughts','hud')

        makeAnimatedLuaSprite('gfshocked', 'gfshocked', 1010, 20)addAnimationByPrefix('gfshocked','idle','gfshocked',6,true)
	setScrollFactor('gfshocked', 1, 1);
	scaleObject('gfshocked', 1.7, 1.7);
	setObjectCamera('gfshocked','hud')
	setProperty('gfshocked.visible',false)

        makeAnimatedLuaSprite('gf', 'gf', 1010, 20)addAnimationByPrefix('gf','idle','gf',6,true)
	setScrollFactor('gf', 1, 1);
	scaleObject('gf', 1.7, 1.7);
	setObjectCamera('gf','hud')

        makeAnimatedLuaSprite('omori', 'omori', 80, 420)addAnimationByPrefix('omori','idle','omori',6,true)
	setScrollFactor('omori', 1, 1);
	scaleObject('omori', 1.7, 1.7);
	setObjectCamera('omori','hud')

        makeAnimatedLuaSprite('omorided', 'omorided', 80, 420)addAnimationByPrefix('omorided','idle','omorided',6,true)
	setScrollFactor('omorided', 1, 1);
	scaleObject('omorided', 1.7, 1.7);
	setObjectCamera('omorided','hud')
	setProperty('omorided.visible',false)

        makeAnimatedLuaSprite('omoriyay', 'omoriyay', 80, 420)addAnimationByPrefix('omoriyay','idle','omoriyay',6,true)
	setScrollFactor('omoriyay', 1, 1);
	scaleObject('omoriyay', 1.7, 1.7);
	setObjectCamera('omoriyay','hud')
	setProperty('omoriyay.visible',false)

        makeAnimatedLuaSprite('omoriworry', 'omoriworry', 80, 420)addAnimationByPrefix('omoriworry','idle','omoriworry',6,true)
	setScrollFactor('omoriworry', 1, 1);
	scaleObject('omoriworry', 1.7, 1.7);
	setObjectCamera('omoriworry','hud')
	setProperty('omoriworry.visible',false)

        makeAnimatedLuaSprite('picokill', 'picokill', 1010, 420)addAnimationByPrefix('picokill','idle','picokill',6,true)
	setScrollFactor('picokill', 1, 1);
	scaleObject('picokill', 1.7, 1.7);
	setObjectCamera('picokill','hud')
	setProperty('picokill.visible',false)

        makeAnimatedLuaSprite('pico', 'pico', 1010, 420)addAnimationByPrefix('pico','idle','pico',6,true)
	setScrollFactor('pico', 1, 1);
	scaleObject('pico', 1.7, 1.7);
	setObjectCamera('pico','hud')

        makeAnimatedLuaSprite('picoded', 'picoded', 1010, 420)addAnimationByPrefix('picoded','idle','picoded',6,true)
	setScrollFactor('picoded', 1, 1);
	scaleObject('picoded', 1.7, 1.7);
	setObjectCamera('picoded','hud')
	setProperty('picoded.visible',false)

        makeAnimatedLuaSprite('picoyay', 'picoyay', 1010, 420)addAnimationByPrefix('picoyay','idle','picoyay',6,true)
	setScrollFactor('picoyay', 1, 1);
	scaleObject('picoyay', 1.7, 1.7);
	setObjectCamera('picoyay','hud')
	setProperty('picoyay.visible',false)

	addLuaSprite('background', false);
	addLuaSprite('backgroundoverlay', false);
	addLuaSprite('backgrounddying', false);
	addLuaSprite('backgrounddyingoverlay', false);
	addLuaSprite('front', true);
	addLuaSprite('lights', true);
	addLuaSprite('dialoguebox', true);
	addLuaSprite('oppeningtext', true);
	addLuaSprite('losingtext', true);
	addLuaSprite('youlistened', true);
	addLuaSprite('winningtext', true);
	addLuaSprite('picotoldyou', true);
	addLuaSprite('theonetoblame', true);
	addLuaSprite('orillkillTHEM', true);
	addLuaSprite('thedealsoff', true);
	addLuaSprite('ipaidyouto', true);
	addLuaSprite('afraid', true);
	addLuaSprite('neutral', true);
	addLuaSprite('sad', true);
	addLuaSprite('happy', true);
	addLuaSprite('stressedout', true);
	addLuaSprite('neutral2', true);
	addLuaSprite('enraged', true);
	addLuaSprite('ecstatic', true);
	addLuaSprite('headempty', true);
	addLuaSprite('nothoughts', true);
	addLuaSprite('gfshocked', true);
	addLuaSprite('gf', true);
	addLuaSprite('omori', true);
	addLuaSprite('omorided', true);
	addLuaSprite('omoriyay', true);
	addLuaSprite('omoriworry', true);
	addLuaSprite('picokill', true);
	addLuaSprite('pico', true);
	addLuaSprite('picoded', true);
	addLuaSprite('picoyay', true);
end

function onCreatePost()
    setProperty('camFollowPos.x', getGraphicMidpointX('boyfriend') - -300);
    setProperty('camFollowPos.y', getGraphicMidpointY('boyfriend') - 1000);
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if boyfriendName == 'picoisjudgingyouplayer' or boyfriendName == 'picoisoverhislimitplayer' then
        if dadName == 'bfisjudgingyou' then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            end
        else
        if boyfriendName == 'bfisjudgingyou' then
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
