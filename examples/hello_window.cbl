       IDENTIFICATION DIVISION.
       PROGRAM-ID. raylib-test.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 width        PIC 9(4) COMP-5 VALUE 1920.
       01 height       PIC 9(4) COMP-5 VALUE 1080.
       01 hello        PIC X(30) VALUE "Hello from COBOL".
       01 closing      PIC 9(1) COMP-5 VALUE 0.

       PROCEDURE DIVISION.
       main.
           CALL "raylib_InitWindow" 
               USING BY VALUE width
               BY VALUE height
               BY REFERENCE hello.

           PERFORM UNTIL closing = 1
               CALL "raylib_BeginDrawing"
               CALL "raylib_ClearBackground" USING 
                   BY VALUE 200
                   BY VALUE 200
                   BY VALUE 200
                   BY VALUE 255
               CALL "raylib_DrawText" USING
                   BY REFERENCE hello
                   BY VALUE 450
                   BY VALUE 500
                   BY VALUE 100
                   BY VALUE 0
                   BY VALUE 0
                   BY VALUE 0
                   BY VALUE 255

               CALL "raylib_EndDrawing"
               CALL "raylib_WindowShouldClose" returning closing
           END-PERFORM.
           STOP RUN.
