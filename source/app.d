import raylib_misc;
import std.stdio;
import raylib;

void main()
{
    // auto ad = AudioDevice.getInstance();
    // while (!ad.isReady){}
    // ad.setVolume(1);
    // 
    // auto kirby1 = new MusicStream("music/01 Main Title.mp3");
    // kirby1.setVolume(1);
    // kirby1.play;
    // 
    // writeln(kirby1.isPlaying);
    // 
    // while(kirby1.getTimePlayed < kirby1.getTimeLength){}
    // kirby1.stop;
    // 
    // ad.close;
    
    InitAudioDevice(); // Initialize audio device

    Music kirby1 = LoadMusicStream("music/01 Main Title.mp3"); // Load music
    SetMusicVolume(kirby1, 1); // Set volume
    PlayMusicStream(kirby1); // Play music

    // Print whether music is playing
    while (!IsMusicStreamPlaying(kirby1)) {
        // Wait for music to start playing
    }

    // Wait until music finishes playing
    while (GetMusicTimePlayed(kirby1) < GetMusicTimeLength(kirby1)) {
        // Keep waiting
    }

    StopMusicStream(kirby1); // Stop music

    CloseAudioDevice(); // Close audio device
}
