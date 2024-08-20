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

void raylib_DrawRectangle(int x, int y, int width, int height, rgba) {
    DrawRectangle(x,y,width,height,color_struct);
}

bool raylib_CheckCollisionRecs(int x_1, int y_1, int width_1, int height_1, int x_2, int y_2, int width_2, int height_2) {
    return CheckCollisionRecs((Rectangle){x_1, y_1, width_1, height_1}, (Rectangle){x_2, y_2, width_2, height_2} );
}

int raylib_GetRandomValue(int min, int max) {
    return GetRandomValue(min,max);
}

void int_to_string(int i, char* string_buffer) {
    const char* as_string = TextFormat("%i", i);
    int index = 0;
    while (as_string[index] != 0)
    {
        string_buffer[index] = as_string[index];
        index++;
    }
    string_buffer[index] = 0;
}