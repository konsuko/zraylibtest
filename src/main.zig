const rl = @cImport({
    @cInclude("raylib.h");
});

const std = @import("std");

pub fn main() !void {
    const screen_width = 640;
    const screen_height = 640;
    const screen_title = "zraylibtest";
    const fps = 120;

    rl.InitWindow(screen_width, screen_height, screen_title);
    defer rl.CloseWindow();

    rl.SetTargetFPS(fps);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        defer rl.EndDrawing();

        rl.ClearBackground(rl.RAYWHITE);

        rl.DrawFPS(screen_height - 100, screen_width - 50);
    }
}
