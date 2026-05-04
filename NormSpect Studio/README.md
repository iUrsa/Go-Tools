# Normal Spectrum Studio · Flagship

A pure frontend audio spectrum visualization and video generation tool that runs directly in the browser. No installation required.


English Introduction | [中文介绍](https://github.com/iUrsa/Go-Tools/blob/main/NormSpect%20Studio/README_ZH.md)
## Features

- Import audio files and generate real-time dynamic spectrum animations
- Synthesize spectrum animations with original audio into complete videos for download
- All processing happens locally in the browser; audio is never uploaded to any server

### Spectrum Visualization

- **Bar Column**: Classic vertical bar spectrum that pulses with the music
- **Smooth Curve**: Continuous flowing waveform for an elegant look
- Spectrum intensity concentrated toward the center using a normal distribution algorithm for enhanced visual focus

Bar Column | Smooth Curve
--- | ---
![Bar Column](https://github.com/iUrsa/Go-Tools/blob/main/Assets/Bar%20Column.gif) | ![Smooth Curve](https://github.com/iUrsa/Go-Tools/blob/main/Assets/Smooth%20Curve.gif)

### Visual Customization

- **4-Color Gradient**: Freely set 4 colors with automatic smooth transitions
- **Three Fill Styles**: Solid fill / Hollow border / Border + semi-transparent
- **Adjustable Parameters**: Bar count (48–128), border width, inner opacity, background opacity
- **Effect Toggles**: Peak markers, glow effect

### Video Export

- **Format**: WEBM (with original audio)
- **Resolutions**: 1080p / 720p / 480p / Square 1080×1080 / Square 720×720
- **Audio Modes**: Silent render (no sound during generation) / Live monitor
- Progress bar displayed during generation

### Interface Features

- **Chinese/English one-click switching**: All text including dynamic prompts supports bilingual display
- **Light/Dark dual themes**: Default light mode, manually switchable
- **Playback progress bar**: Drag to seek, real-time display of current time and total duration

### Tech Stack

Technology | Purpose
--- | ---
Web Audio API | Audio decoding and real-time spectrum analysis
Canvas 2D | Custom spectrum rendering (bar and curve)
MediaRecorder API | Audio-video synthesis and recording
Normal distribution algorithm | Spectrum energy centered for enhanced visual impact

---

## Getting Started

### Step 1: Import Audio

1. Click the **Import Audio** button in the left panel
2. Select a local audio file (supports mp3, wav, ogg, and other common formats)
3. Once loaded, the file name and duration will be displayed below, and a static spectrum will appear in the preview area

### Step 2: Adjust Spectrum Style

- Spectrum Shape: Switch between "Bar Column" and "Smooth Curve"
- 4-Color Gradient: Click each color block to set the four colors from left to right
- Fill Style: Choose solid, hollow border, or border + semi-transparent
- Bar Count: Select 48, 64, 96, or 128 bars (96 recommended)
- Background Opacity: 0 for fully transparent, 100 for solid black

### Step 3: Add Effects

- Peak Line/Dot: Display peak markers at the top of the spectrum
- Glow Edge: Add a glow aura to the spectrum

### Step 4: Live Preview

1. Click the **Play** button on the right to start audio playback
2. The spectrum will animate in real-time with the music
3. Use the progress bar to drag or click to jump to any position
4. Use **Pause** and **Stop** to control playback

### Step 5: Generate and Export Video

1. Select export resolution in the left panel (720p recommended for social sharing)
2. Choose audio output mode:
   - Silent Render: No sound output during generation
   - Live Monitor: Hear audio during generation
3. Click the **Generate Full-length Video** button
4. Wait for the progress bar to complete (duration equals full audio length)
5. When finished, click **Download Video** to save the WEBM file

### Step 6: Format Conversion (Optional)

If you need to import the WEBM file into software like CapCut or Premiere Pro, convert to MP4 using ` FFmpeg ` :

```bash
ffmpeg -i input.webm -c:v libx264 -c:a aac output.mp4
```
