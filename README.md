# Node Audiowaveform Server
Node server for generating waveform data using Audiowaveform. changing data to fit Wavesurfer. Also 
Dockerfile for generating Docker image.

### Request parameters
**url** -  URL to the audio file that will be used for generating waveform data

### Local dev
Use `npm run dev-server` to start monitoring nodejs server. Will refresh and restart when changes are made.

### Start localy
Use `node audiowaveform-server.js` to start server localy

### Docker
**Build** - `docker build --tag node-audiowaveform-server .`  
**Run** - `docker run -d -p 8080:3000 node-audiowaveform-server:latest`  
**Test** - `curl -g http://localhost:8080/?url=https%3A%2F%2Ffile-examples-com.github.io%2Fuploads%2F2017%2F11%2Ffile_example_MP3_5MG.mp3`  
**Experience** Open `./test/index.html` in browser to see your Docker container in action.   

###Links  
**Wavesurfer** - https://wavesurfer-js.org/  
**Audiowaveform** - https://github.com/bbc/audiowaveform  
**MP3 sample files** - https://file-examples.com/index.php/sample-audio-files/sample-mp3-download/
