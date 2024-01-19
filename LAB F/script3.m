d = arduino('/dev/cu.usbserial-0001','uno');
writeDigitalPin(d,'D13',1);
pause(1.0);
writeDigitalPin(d, 'D13', 0);