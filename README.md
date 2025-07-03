# AppStore Troller

Very simple tweak to let you purchase an app to your Apple ID that requires a newer iOS version than the one you're running on your device. Afterwards, you can install the last compatible version onto your device, if it exists.

Note: if the update option was accidentally enabled with too high of a spoofed iOS version and uninstallable updates are persisting in the App Store, remove /var/containers/Data/System/<UUID-for-com.apple.appstored>/Documents/Persistence/storeSystem.db along with the cooresponding -shm and -wal files. Afterwards, perform a userspace reboot (or alternatively kill appstored, AppStore, and installd processes).