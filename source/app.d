import raylib_misc;
import std.stdio;
import raylib;

void main()
{
    auto ad = AudioDevice.getInstance();
    while (!ad.isReady){}
    ad.setVolume(1);

    auto kirby1 = new MusicStream("music/01 Main Title.mp3");
    kirby1.setVolume(1);
    kirby1.play;

    writeln(kirby1.isPlaying);

    while(kirby1.getTimePlayed < kirby1.getTimeLength){}
    kirby1.stop;

    ad.close;
}
