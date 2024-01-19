b = arduino('/dev/cu.usbserial-0001','uno');
writePWMDutyCycle(b, 'D5', 0.33);
pause(0.2);
writeDigitalPin(b, 'D5',0);