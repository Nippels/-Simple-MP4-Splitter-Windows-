# 🎬 Simple MP4 Splitter (Windows)

A lightweight Windows batch script that splits large MP4 files into smaller time-based segments using FFmpeg.

Designed for professional production workflows and fully compatible with Sony XAVC footage.

---

## 🚀 Features

- Splits MP4 files by custom minute duration
- Automatically detects the first MP4 in the folder
- Lossless video copy (no re-encoding)
- Converts audio to AAC for maximum compatibility
- Keeps audio in all segments
- No absolute paths required (works in relative folder)
- Windows-only (.bat file)

---

## 📦 Requirements

- Windows 10 / 11
- FFmpeg installed and added to PATH (enter this in cmd: winget install -e --id Gyan.FFmpeg)


---

## ▶️ Usage

1. Place the `.bat` file in the same folder as your MP4 file.
2. Double-click the batch file.
3. Enter split duration in minutes.
4. Done.

The script will generate:

filename_part000.mp4
filename_part001.mp4
filename_part002.mp4
...


---

## 🎥 Compatibility

Tested with:

- Sony XAVC (4K)
- H.264 MP4
- PCM Audio
- AAC Audio

---

## ⚠️ Notes

- Only the first `.MP4` file in the folder will be processed.
- Audio is re-encoded to AAC (320kbps) for universal compatibility.
- Video stream is copied without quality loss.

---

## 🛠 Why This Tool?

Large camera files (2–4+ hours) are difficult to handle in some NLEs or cloud workflows.  
This tool allows fast, reliable splitting without re-encoding the video stream.

Perfect for:

- Long event recordings
- Podcast recordings
- Multi-hour conference captures
- Studio session backups

---

## 📜 License

MIT License
