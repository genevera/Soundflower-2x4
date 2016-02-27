PACKAGE_ID_NAME="Developer ID Installer: Yosirou Sawayanagi"
APPLICATION_ID_NAME="Developer ID Application: Yosirou Sawayanagi"
BUILD_DIR=../Build

all: Installer.pkg Uninstaller.app

Installer.pkg::
	productbuild --distribution Distribution.xml --package-path $(BUILD_DIR) --sign $(PACKAGE_ID_NAME) $(BUILD_DIR)/$@

Uninstaller.app::
	rm -rf $(BUILD_DIR)/$@
	osacompile -o $(BUILD_DIR)/$@ Uninstaller.applescript
	codesign --sign $(APPLICATION_ID_NAME) $(BUILD_DIR)/$@

clean::
	rm -rf $(BUILD_DIR)/Installer.pkg $(BUILD_DIR)/Uninstaller.app
