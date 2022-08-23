function onEvent(name, value1, value2)
   if name == 'bgchange' then
    makeLuaSprite(value2, value1, 80, 420);
    addLuaSprite(value2, true);
    scaleObject('value2', 1.7, 1.7);
    setObjectCamera('value2','hud')
    
    
    
    end
end