if(!global.pause){
    if (_health <= 0) {
        _isDead = true;
    }
    
    if(_isDead){
        _mother._spawnCount--;
        global.kills++;
        score += experience;
        scr_Loot(x, y);
        instance_create(x, y, obj_Blood);
        instance_destroy();
    }
    
    _hSpeed = _side * _velocity;
    _vSpeed += _gravity;
    
    //Horizontal Collision
    if (place_meeting(x+_hSpeed,y,obj_AbstractWall)){
        while(!place_meeting(x+sign(_hSpeed),y,obj_AbstractWall)){
            x += sign(_hSpeed);
        }
        _hSpeed = 0;
        
        _side *= -1;
    }
    if(collision_rectangle(x-562, y+402, x+562, y-402, obj_Player, true, true)){
        x += _hSpeed;
    }
    
    //Vertical Collision
    if (place_meeting(x,y+_vSpeed,obj_AbstractWall)){
        while(!place_meeting(x,y+sign(_vSpeed),obj_AbstractWall)){
            y += sign(_vSpeed);
        }
        
        _vSpeed = 0;
        
        if(_fearOfHeight){
            if(!position_meeting(x+(sprite_width/2)*_side, y+(sprite_height/2)+8, obj_AbstractWall)){
                _side *= -1;
            }
        }
    }
    if(collision_rectangle(x-562, y+402, x+562, y-402, obj_Player, true, true)){
        y += _vSpeed;
    }
}
