#!/bin/bash
echo "==========================================="
echo "INSTALLATION COMPLETE - BroadCast Archipelago"
echo "==========================================="
echo ""

# Check for Python 3
if ! command -v python3 &> /dev/null
then
    echo "[ERROR] Python 3 is not installed!"
    exit
fi

# Check for Node.js
if ! command -v node &> /dev/null
then
    echo "[ERROR] Node.js is not installed!"
    exit
fi

# Check for pip
if ! python3 -m pip --version &> /dev/null
then
    echo "[ERROR] python3-pip is not installed!"
    echo "Please install it with: sudo apt install python3-pip"
    exit
fi

echo "STEP 1: Installing Python dependencies (websockets, psutil, screeninfo)..."
python3 -m pip install websockets psutil screeninfo --break-system-packages

echo ""
echo "STEP 2: Installing Node.js dependencies for the visual interface..."
cd broadcast-app
npm install

echo ""
echo "==========================================="
echo "ALL INSTALLATIONS COMPLETED!"
echo "==========================================="
echo "You can now launch the app with: python3 BroadCast-Archipelago.py"
