       IDENTIFICATION DIVISION.
       PROGRAM-ID. raylib-test.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY RAYLIB_KEYS.CBL.
       01 width        PIC 9(3) COMP-5 VALUE 800.
       01 height       PIC 9(3) COMP-5 VALUE 450.
       01 ballX        PIC 9(3) COMP-5 VALUE 400.
       01 ballY        PIC 9(3) COMP-5 VALUE 225.
       01 window_title PIC X(30) VALUE "keyboard input".
       01 closing      PIC 9(1) COMP-5 VALUE 0.
       01 buffer    PIC 9(1) COMP-5 VALUE 0.

       PROCEDURE DIVISION.
       main.
           CALL "raylib_InitWindow" USING 
               BY VALUE width
               BY VALUE height
               BY REFERENCE window_title.

           CALL "raylib_SetTargetFPS" USING 
               BY VALUE 60.

           PERFORM UNTIL closing = 1

               CALL "raylib_IsKeyDown" USING 
                   BY VALUE RAYLIB_KEY_RIGHT
                   RETURNING buffer

               IF buffer = 1 THEN
                   ADD 2 TO ballX
               END-IF

               CALL "raylib_IsKeyDown" USING 
                   BY VALUE RAYLIB_KEY_LEFT
                   RETURNING buffer

               IF buffer = 1 THEN
                   SUBTRACT 2 FROM ballX
               END-IF

               CALL "raylib_IsKeyDown" USING 
                   BY VALUE RAYLIB_KEY_DOWN
                   RETURNING buffer

               IF buffer = 1 THEN
                   ADD 2 TO ballY
               END-IF

               CALL "raylib_IsKeyDown" USING 
                   BY VALUE RAYLIB_KEY_UP
                   RETURNING buffer

               IF buffer = 1 THEN
                   SUBTRACT 2 FROM ballY
               END-IF

               CALL "raylib_BeginDrawing"
               CALL "raylib_ClearBackground" USING 
                   BY VALUE 255
                   BY VALUE 255
                   BY VALUE 255
                   BY VALUE 255

               CALL "raylib_DrawText" USING
                   BY REFERENCE "move the ball with arrow keys"
                   BY VALUE 10
                   BY VALUE 10
                   BY VALUE 20
                   BY VALUE 80
                   BY VALUE 80
                   BY VALUE 80
                   BY VALUE 255
      
               CALL "raylib_DrawCircle" USING
                   BY VALUE ballX
                   BY VALUE ballY
                   BY VALUE 50
                   BY VALUE 190
                   BY VALUE 33
                   BY VALUE 55
                   BY VALUE 255

               CALL "raylib_EndDrawing"
               CALL "raylib_WindowShouldClose" RETURNING closing

           END-PERFORM.
           STOP RUN.
