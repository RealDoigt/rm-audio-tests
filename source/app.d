import raylib_misc;
import std.stdio;
import raylib;

void main()
{
    InitWindow(120, 100, "Test");
    SetTargetFPS(30);

    auto ad = AudioDevice.getInstance();
    while (!ad.isReady){}
    ad.setVolume(1);

    auto kirby1 = new MusicStream("music/01 Main Title.mp3");
    kirby1.setVolume(1);
    kirby1.play;

    writeln(kirby1.isPlaying);

    while(/*kirby1.getTimePlayed < kirby1.getTimeLength*/ !WindowShouldClose)
    {
        BeginDrawing;
        scope (exit) EndDrawing;

        white.ClearBackground;
        kirby1.updateStream;
    }

    kirby1.stop;
    ad.close;
}
