if(placed)
{
    target = instance_nearest(x, y, enemy_super);
    //Check if target is still in range
    if(distance_to_object(target) < Range)
    {
        if (fire_time%Fire_Rate == 0)
        {
            //Code to fire a bullet
            bullet_id = instance_create(x, y, Slowing_Bullet);
            bullet_id.direction = point_direction(x, y, target.x, target.y);
            bullet_id.speed = bullet_speed;
        }
        //Decrement fire_time
        fire_time--;
        //Wrap around back to start for fire_time
        if(fire_time == 0)
        {
            fire_time = Fire_Rate;
        }   
    }
}
