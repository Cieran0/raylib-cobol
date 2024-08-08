#include "raylib.h"

#define rgba unsigned char r, unsigned char g, unsigned char b, unsigned char a
#define color_struct (Color){ r, g, b, a}

void raylib_InitWindow(int width, int height, const char *title) {
    InitWindow(width, height, title);
}

int raylib_WindowShouldClose() {
    return WindowShouldClose();
}

void raylib_BeginDrawing() {
    BeginDrawing();
}

void raylib_EndDrawing() {
    EndDrawing();
}

void raylib_ClearBackground(rgba){
    ClearBackground(color_struct);
}

void raylib_DrawText(const char* text, int posX, int posY, int fontSize, rgba){
    DrawText(text, posX, posY, fontSize, color_struct);
}

int raylib_IsKeyDown(int key) {
    return IsKeyDown(key);
}

void raylib_DrawCircle(int centerX, int centerY, int radius, rgba) {
    DrawCircle(centerX, centerY, (float)radius, color_struct);
}

void raylib_SetTargetFPS(int fps) {
    SetTargetFPS(fps);
}