BUILD_DIR=../Build

all: Installer.pkg Uninstaller.app

Installer.pkg::
	productbuild --distribution Distribution.xml --package-path $(BUILD_DIR) $(BUILD_DIR)/$@

Uninstaller.app::
	osacompile -o $(BUILD_DIR)/$@ Uninstaller.applescript

clean::
	rm -rf $(BUILD_DIR)/Installer.pkg $(BUILD_DIR)/Uninstaller.app
