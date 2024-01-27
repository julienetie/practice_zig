const std = @import("std");

pub fn main() void {
    const PrintConfig = struct { id: *const [4:0]u8, width: u8, height: u8, zoom: f32 };

    const pc = PrintConfig{ .id = "BAX1", .width = 200, .height = 100, .zoom = 0.234 };

    std.debug.print("ID: {s}\n", .{pc.id});
    std.debug.print("Size: {d}x{d} (zoom: {d:.2})\n", .{ pc.width, pc.height, pc.zoom });

    const ActionResult = union { code_int: u8, code_float: f32 };

    const ar1 = ActionResult{ .code_int = 200 };
    const ar2 = ActionResult{ .code_float = 200.13 };

    std.debug.print("code1 = {d}\n", .{ar1.code_int}); // code1 = 200
    std.debug.print("code2 = {d:.2}\n", .{ar2.code_float}); // code2 = 200.13
    // std.debug.print("code2 = {d:.2}\n", .{ar2.code_int});  // error!
}
