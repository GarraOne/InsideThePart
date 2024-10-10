if not instance_exists(target_) exit;
x = lerp(x, target_.x-width_/4, 0.1);
// - height_/4
y = lerp(y, target_.y-height_/4, 0.1);
camera_set_view_pos(view_camera[0], x-width_/4, y-height_/4);