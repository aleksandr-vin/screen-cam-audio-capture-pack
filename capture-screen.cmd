set VLC="C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"

set SCRN_OPTS=screen:// :screen-fps=10 :live-caching=300 --screen-follow-mouse -I dummy --dummy-quiet --extraintf rc:http --rc-host localhost:8189 --rc-quiet --http-host=localhost --http-port=8089 --http-password 123 --sout "#transcode{vcodec=h264,scale=auto,acodec=mpga,ab=128,channels=2,samplerate=44100}:std{access=file{overwrite},mux=mp4,dst=screen-recording.mp4}" vlc://quit

%VLC% %SCRN_OPTS%