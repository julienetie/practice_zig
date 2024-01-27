const std = @import("std");

pub fn main() void {
    const vowels = [5]u8{ 'a', 'e', 'i', 'o', 'u' };
    const nums = [_]u8{ 2, 50, 6, 4 };
    var x: usize = 3;
    const slice = nums[1..x];
    const msg1 = "Zig";
    const msg2 = "lang";

    std.debug.print("{s}\n", .{vowels}); // aeiou
    std.debug.print("{d}\n", .{vowels.len}); // 5

    std.debug.print("{s}\n", .{msg1 ** 2}); // ZigZig
    std.debug.print("{s}\n", .{msg1 ++ msg2}); // Ziglang

    std.debug.print("{any}\n", .{slice}); // { 5, 6 }
    std.debug.print("{}\n", .{@TypeOf(slice)}); // []const u8
}
