# Windows Post-Install Automation Suite

This script is a comprehensive automation tool designed to transform a fresh Windows installation into a fully-configured workstation. It bridges the gap between a "clean" OS and a production-ready environment in a single execution.

## 🛠️ What This Script Does
*   **Package Management:** Bootstraps **Chocolatey** and uses it to silently install over 40 essential applications across Development, Media, and Gaming categories.
*   **System Debloating:** Invokes the **Chris Titus Tech** Windows Utility to remove telemetry, disable unnecessary services, and optimize system performance.
*   **Registry Customization:** 
    *   Restores the **Classic Windows 10 Context Menu** (disabling the Windows 11 "Show More Options" layer).
    *   Eliminates **Bing Search** from the Start Menu.
    *   Reduces Taskbar hover delay for a snappier UI.
*   **Virtualization & Dev Setup:** Enables **WSL (Windows Subsystem for Linux)** and **Windows Sandbox** for secure testing and development.
*   **Visual Styling:** Forces System-Wide **Dark Mode**, enables file extensions by default, and sets custom title bar colors.
*   **Multilingual Support:** Handles the sequential installation of **Hebrew and Arabic Office packages** to ensure proper localization from the start.
*   **Enhanced Media:** Installs a custom **SpotX** patch for an improved Spotify experience and sets up local media management tools like **Jellyfin**.

## ⚠️ Critical Setup Note: Local Assets
This repository does **not** include the installers for proprietary software such as Microsoft Office or Adobe Creative Cloud. The script is designed with the following assumptions:

*   **Local Directory Requirement:** The script searches for a folder named `.\apps\` in the same directory where the script is executed.
*   **Proprietary Installers:** Large or licensed installers (Office, Adobe Acrobat, Photoshop, etc.) must be manually placed in this folder before running.
*   **Path Dependency:** The automated installation for these specific apps will fail if the folder structure or `.exe` names do not match the script’s internal paths (e.g., `.\apps\office\office.exe`).
*   **Licensing:** You are responsible for ensuring all local installers are legitimately sourced and licensed.

## 🚀 Quick Start (One-Liner)

To run the full suite, open **PowerShell as Administrator**, navigate to your script folder, and paste the following:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup.ps1
