set VLC="C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"

set CAM_OPTS=dshow:// :config :live-caching=300 -I dummy --dummy-quiet --extraintf rc:http --rc-host localhost:8188 --rc-quiet --http-host=localhost --http-port=8088 --http-password 123 --sout "#transcode{vcodec=h264,scale=auto,acodec=mpga,ab=128,channels=2,samplerate=44100}:std{access=file{overwrite},mux=mp4,dst=cam+audio-recording.mp4}" vlc://quit

%VLC% %CAM_OPTS%
