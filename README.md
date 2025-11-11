# Automatic Wi-Fi Restart (Windows Batch Script)

This script automatically checks your internet connection and restarts the Wi-Fi adapter if it's disconnected.

## 🔧 How It Works

1. Every 10 seconds, the script **pings** `google.com` to verify internet connectivity.  
2. If the connection **fails**, the Wi-Fi adapter is automatically:
   - disabled (`netsh interface set interface "Wi-Fi" admin=disable`),
   - paused for 5 seconds,
   - then re-enabled (`netsh interface set interface "Wi-Fi" admin=enable`).
3. The cycle repeats continuously until you close the script.

## ⚙️ Usage

1. Download or copy the [`wifi_auto_restart.bat`](scripts/wifi_auto_restart.bat) file.  
2. **Run it as Administrator** (right-click → *Run as administrator*).  
3. Keep the command window open — the script will automatically maintain your Wi-Fi connection.

## 🧠 Notes

- The adapter name in the script (`"Wi-Fi"`) must match the actual adapter name on your system.  
  You can check it with the command:
  ```cmd
  netsh interface show interface
