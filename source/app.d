import raylib_misc;
import raylib;

void main()
{
    auto ad = AudioDevice.getInstance();
    while (!ad.isReady){}
    ad.setVolume(1);



    ad.close;
}
