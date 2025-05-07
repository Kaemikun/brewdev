
# BrewDev

**BrewDev** is a lightweight CLI tool to set up fullstack development environments easily. It now comes with a **menu-driven GUI installer** using `dialog` to make the process even smoother.

---

## 🛠 Installation (GUI Menu)

To begin, run the following command:

```bash
curl -s https://raw.githubusercontent.com/ManikLakhanpal/brewdev/main/install.sh | bash
````

> ✅ This will launch a **dialog-based GUI main menu** with the following options:
>
> * **Install Fullstack**: Installs and sets up the complete fullstack environment.
> * **Uninstall Fullstack**: Cleanly removes the fullstack setup created by BrewDev.
> * **Exit**: Closes the installer menu.

---

## ⚙️ Fullstack Setup (Manual)

If needed, you can manually run the setup after installation using:

```bash
./brewdev.sh setup fullstack
```

This initializes the complete backend and frontend project structure in one step.

---

## 📁 Project Structure

```
brewdev/
├── brewdev.sh                 # Main CLI tool
├── install.sh                 # Launches GUI installer
├── uninstall.sh               # (Optional direct uninstall entry)
├── scripts/
│   ├── gui.sh                 # Handles dialog-based GUI logic (called inside install.sh)
│   ├── install_fullstack.sh   # Contains the fullstack installation steps
│   └── uninstall_fullstack.sh # Contains the fullstack uninstallation steps
```

---

## 🧰 Requirements

* Bash
* Git
* `dialog` (auto-installed if missing)

---

## 🔄 Uninstallation

To uninstall via the GUI menu, simply re-run:

```bash
curl -s https://raw.githubusercontent.com/ManikLakhanpal/brewdev/main/install.sh | bash
```

And select **"Uninstall Fullstack"** from the menu.

Or, manually run:

```bash
./scripts/uninstall_fullstack.sh
```

---

## 🤝 Contributing

Pull requests are welcome! Feel free to submit improvements, fixes, or feature suggestions.

---

## 📄 License

MIT License  © Ansh Kaushal  © Manik LakhanPal  © Ankit  © Ketan Sharma


