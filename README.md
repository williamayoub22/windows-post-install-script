# Windows Post-Install Automation Suite

This script is a comprehensive automation tool designed to configure a fresh Windows installation. It handles everything from package management and system debloating to registry optimizations and developer environment setup.

## ⚠️ Critical Setup Note: Local Apps
**Important:** This repository does **not** include the installers for Microsoft Office, Adobe Creative Cloud, or other proprietary software. These are expected to be present in a local `.\apps\` directory relative to the script. 

Ensure your folder structure looks like this before running:
*   `setup.ps1` (This script)
*   `apps\`
    *   `office\` (Office installers + Hebrew/Arabic packs)
    *   `acrobat\` (Adobe Acrobat installer)
    *   `photoshop\` (Adobe Photoshop installer)
    *   `mega-ultimate\` (Mega Ultimate installer)

## 🚀 Quick Start (One-Liner)

To run the full suite, open **PowerShell as Administrator**, navigate to your script folder, and paste the following:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; .\setup.ps1
