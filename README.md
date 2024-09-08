
# Installer Wizard

**Installer Wizard** is a Batch script that allows users to easily install various programs by selecting from categories like Web Browsers, Messaging, Media, and more. It opens download links in your default browser and provides a simple, menu-driven interface for managing installations.

## Features

- **Categorized Program Installation**: Choose from categories such as Web Browsers, Messaging, Media, and more.
- **Search and Select**: Search for specific programs within categories.
- **Clear Console Transitions**: Keeps the console clean by clearing between actions.
- **Customizable**: Add new programs by modifying the text files in `assets/groups/`.
- **Persistent Welcome Message**: Displays "Welcome to the Installer Wizard" at all times on the main menu.

## How It Works

The Batch file reads from `txt` files stored in the `/assets/groups/` folder, which contain program names and download links. You select a category, choose a program, and the Installer Wizard opens the download link in your browser.

### Directory Structure

```
InstallerWizard/
├── InstallerWizard.bat
└── assets/
    └── groups/
        ├── browsers.txt
        ├── messaging.txt
        ├── media.txt
        ├── runtimes.txt
        ├── imaging.txt
        └── ...
```

## Installation

1. **Download the latest release** from the [Releases page](https://github.com/Noahscratch493/Installer-Wizard/releases).
2. Extract the ZIP file to your preferred directory.
3. Run the `InstallerWizard.bat` file to start the wizard.

## Adding or Modifying Programs

To add new programs:
1. Open the appropriate `.txt` file in `assets/groups/` (e.g., `browsers.txt`).
2. Add a new line with the program name and download URL in the format:
 
   ```
   AppName,https://example.com/download
   ```

## License

This project is released under the **Unlicense**, meaning it is in the public domain. You are free to copy, modify, distribute, and use the project without restriction. For more details, see the [LICENSE](LICENSE) file.
