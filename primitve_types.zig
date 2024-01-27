const std = @import("std");

pub fn main() void {
    var x: i8 = -100;
    var y: u8 = 120;
    var z: f32 = 100.324;

    std.debug.print("x={}\n", .{x});
    std.debug.print("y={}\n", .{y});
    std.debug.print("z={d:3.2}\n", .{z});
}
