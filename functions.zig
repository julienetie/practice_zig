const std = @import("std");

fn add(a: i8, b: i8) i8 {
    return a + b;
}

// Inefficient fib
fn fibonacci(n: u32) u32 {
    if (n == 0 or n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

pub fn main() void {
    const a: i8 = 10;
    const b: i8 = -2;
    const c = add(a, b);

    std.debug.print("{d} + {d} = {d}\n", .{ a, b, c });

    std.debug.print("{d}\n", .{fibonacci(2)}); // 1
    std.debug.print("{d}\n", .{fibonacci(12)}); // 144

}
