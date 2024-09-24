# Windows Full Recovery Package

## Overview
The Windows Full Recovery Package is designed to restore your system to a fully operational state in the event of a failure. This package includes essential tools for system recovery, backup, and troubleshooting.

## Features
- **System Restore**: Roll back to a previous system state using recovery points.
- **Bootloader Repair**: Automatically fix bootloader issues to restore system boot functionality.
- **MBR Repair**: Repair the Master Boot Record (MBR) to resolve boot-related problems.
- **Partition Recovery**: Recover lost or damaged partitions and restore access to your data.
- **Backup & Restore**: Create and restore system backups.
- **Recovery Environment**: Access a suite of recovery tools and utilities.
- **File Recovery**: Recover lost or deleted files.
- **Antivirus Integration**: Scan and remove malware to ensure a clean recovery.
- **Diagnostics**: Built-in tools for system diagnostics and troubleshooting.

## System Requirements
- Windows 10/11
- At least 4 GB of RAM
- Minimum 10 GB of available disk space

## Installation Instructions
1. **Boot into Hiren's Boot CD**:
   - Insert the Hiren's Boot CD and restart your computer.
   - Select to boot from the CD/DVD or USB drive.

2. **Mount the Recovery Package Image**:
   - Once in the Hiren's Boot environment, navigate to the recovery package image file.
   - Use the built-in tools to mount the image (e.g., use a tool like Disk Image or similar).

3. **Execute Files**:
   - Open the command prompt or the appropriate execution tool in Hiren's Boot.
   - Navigate to the mounted recovery package directory.
   - Run the relevant batch files to execute the recovery tools:
     - For system restore: `Windows Recovery point manager.bat`
     - For bootloader repair: `Windows Bootloader repair utility.bat`
     - For partition recovery: `Windows partition recovery.bat`
     - For antivirus scan: `antivirus.py`

## Creating a Recovery Drive
To create a recovery drive, follow these steps:

1. **Connect a USB Drive**: Ensure it has at least 16 GB of space.
2. **Open Recovery Drive Tool**:
   - Type “Recovery Drive” in the Windows search bar and select **Create a recovery drive**.
3. **Follow Prompts**:
   - Check the box for **Back up system files to the recovery drive** and click **Next**.
   - Select your USB drive and click **Create**.

## Using the Recovery Tools
- **Access Recovery Environment**:
  - Restart your computer and press **F8** (or the relevant key for your system) during boot.
  - Select **Repair Your Computer** from the options.

- **Restore from Backup**:
  - Choose **Troubleshoot** > **Advanced Options** > **System Restore**.
  - Select a restore point and follow the prompts.

- **Repair Bootloader and MBR**:
  - From the recovery menu, select **Repair Bootloader** or **Repair MBR** and follow the instructions.

- **Partition Recovery**:
  - Use the **Partition Recovery** tool to scan for and restore lost partitions.

- **Antivirus Scan**:
  - Access the integrated antivirus tool to scan for and remove malware.

- **File Recovery**:
  - Use **File History** or **Backup and Restore** to recover lost files.

## Troubleshooting
- If you encounter issues, ensure that your recovery drive is properly created.
- Verify that your system meets the minimum requirements.
- Consult the built-in help documentation or support forums for additional assistance.


## License
This package is distributed under the [Apache Licence] License.
