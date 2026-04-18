#!/bin/bash
# Setup Android icons for the app

ANDROID_DIR="android/app/src/main/res"

if [ ! -d "$ANDROID_DIR" ]; then
    echo "Creating Android resource directories..."
    mkdir -p "$ANDROID_DIR/mipmap-hdpi"
    mkdir -p "$ANDROID_DIR/mipmap-mdpi"
    mkdir -p "$ANDROID_DIR/mipmap-xhdpi"
    mkdir -p "$ANDROID_DIR/mipmap-xxhdpi"
    mkdir -p "$ANDROID_DIR/mipmap-xxxhdpi"
fi

echo "Copying icons..."
cp icons/icon-192.png "$ANDROID_DIR/mipmap-hdpi/ic_launcher.png" 2>/dev/null || true
cp icons/icon-192.png "$ANDROID_DIR/mipmap-mdpi/ic_launcher.png" 2>/dev/null || true
cp icons/icon-512.png "$ANDROID_DIR/mipmap-xhdpi/ic_launcher.png" 2>/dev/null || true
cp icons/icon-512.png "$ANDROID_DIR/mipmap-xxhdpi/ic_launcher.png" 2>/dev/null || true
cp icons/icon-512.png "$ANDROID_DIR/mipmap-xxxhdpi/ic_launcher.png" 2>/dev/null || true

echo "Done!"