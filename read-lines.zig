const std = @import("std");
pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    const file = try std.fs.cwd().openFile("lore-ipsum.txt", .{});
    defer file.close();

    var buffered = std.io.bufferedReader(file.reader());
    const reader = buffered.reader();

    // lines will get read into this
    var arr = std.ArrayList(u8).init(gpa.allocator());
    defer arr.deinit();

    var line_count: usize = 0;
    var byte_count: usize = 0;
    while (true) {
        reader.streamUntilDelimiter(arr.writer(), '\n', null) catch |err| switch (err) {
            error.EndOfStream => break,
            else => return err,
        };
        line_count += 1;
        byte_count += arr.items.len;
        arr.clearRetainingCapacity();
    }
    std.debug.print("{d} lines, {d} bytes", .{ line_count, byte_count });
}
