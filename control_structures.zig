const std = @import("std");

pub fn main() void {
    var score: u8 = 100;

    if (score >= 90) {
        std.debug.print("Congrats!\n", .{});
        std.debug.print("{s}\n", .{"*" ** 10});
    } else if (score >= 50) {
        std.debug.print("Congrats!\n", .{});
    } else {
        std.debug.print("Try again...\n", .{});
    }

    score = 88;

    switch (score) {
        90...100 => {
            std.debug.print("Congrats!\n", .{});
            std.debug.print("{s}\n", .{"*" ** 10});
        },
        50...89 => {
            std.debug.print("Congrats!\n", .{});
        },
        else => {
            std.debug.print("Try again...\n", .{});
        },
    }

    var x: u8 = 0;
    while (x < 11) {
        std.debug.print("{}\n", .{x});
        x += 1;
    }

    const A = [_]u8{ 2, 4, 6, 8 };

    for (A) |n| {
        std.debug.print("{d}\n", .{n});
    }
}
