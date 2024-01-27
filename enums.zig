const std = @import("std");

pub fn main() void {
    const LogType = enum { info, err, warn };

    const ltInfo = LogType.info;
    const ltErr = LogType.err;

    std.debug.print("{}\n", .{ltInfo});
    std.debug.print("{}\n", .{ltErr});
}
