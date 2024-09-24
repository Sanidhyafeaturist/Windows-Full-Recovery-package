import os
import shutil
import threading
from tkinter import Tk
from tkinter.filedialog import askopenfilename
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

# List of virus signatures (replace with real patterns)
virus_signatures = [
    rb"X50!P%@AP[4\PZX54(P^)7CC)7}$SANIDHYA-FUCKER-FILE!$H+H*",
    rb"pattern1_signature",
    rb"pattern2_signature",
    # Add real virus patterns here
]

class FileHandler(FileSystemEventHandler):
    def on_created(self, event):
        if not event.is_directory:
            self.scan_file(event.src_path)

    def scan_file(self, file_path):
        with open(file_path, "rb") as f:
            file_content = f.read()

        # Check for virus signatures
        for signature in virus_signatures:
            if signature in file_content:
                print(f"Virus found in file: {file_path}")
                quarantine_file(file_path)
                return

        # Heuristic check
        if heuristic_check(file_content):
            print(f"Potential threat detected in file: {file_path}")
            quarantine_file(file_path)
        else:
            print(f"No virus found in file: {file_path}")

def heuristic_check(file_content):
    if len(file_content) > 10 * 1024 * 1024:  # File larger than 10 MB
        return True
    if b"malicious_string" in file_content:  # Check for suspicious strings
        return True
    return False

def quarantine_file(file_path):
    quarantine_folder = "quarantine"
    if not os.path.exists(quarantine_folder):
        os.makedirs(quarantine_folder)

    file_name = os.path.basename(file_path)
    quarantine_path = os.path.join(quarantine_folder, file_name)

    shutil.move(file_path, quarantine_path)
    print(f"File quarantined: {quarantine_path}")

def start_monitoring(directory):
    event_handler = FileHandler()
    observer = Observer()
    observer.schedule(event_handler, directory, recursive=True)
    observer.start()
    try:
        while True:
            pass  # Keep the thread alive
    except KeyboardInterrupt:
        observer.stop()
    observer.join()

if __name__ == "__main__":
    directory_to_monitor = input("Enter the directory to monitor: ")
    print(f"Monitoring {directory_to_monitor} for new files...")
    
    # Start the monitoring in a separate thread
    monitor_thread = threading.Thread(target=start_monitoring, args=(directory_to_monitor,))
    monitor_thread.start()
