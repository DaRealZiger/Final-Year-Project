# Main Issue
need printer to test with accordingly
need to see how current POS system print to printer (can record video)

# Info
Printer Model: Jk-5802h Thermal Printer
Assume: This is the printer --> https://youtu.be/oXGYjw2_s5U , https://youtu.be/5CggU_ViuNg?t=76
Then: It supports ESC/POS commands (protocol)

# Issue
Need to figure out for website client to connect Bluetooth
Send via Bluetooth through ESC/POS protocol
 
# Approaches
## Cleanest
### Requirement
Thermal Printer need to support Bluetooth Low Energy Mode (BLE)
need "escpos-web-print" Javascript Library
### Implementation
1. Include the library in page via CDN (or local API/CDN)
2. call requestBluetoothPrinter() function from a button, need user interaction (dunno only for setup or each time)
3. Render content in a specific <canvas> element
4. Pass the printer object from requestBluetoothPrinter() and <canvas> element to library and it handles it

## Workaround, not so clean code
### Requirement
Most thermal printers only support Classic Bluetooth (SPP)
So need a bridge app (RawBTW, "Web to Bluetooth Print", JSPrintManager.js)
### Implementation
1. Webpage opens a link through <a href> with intent:// or custom URL scheme (auto-open app)
2. The app handles the bridge app yourself
### Issue
Third-party app (hopefully open source)
