c = arduino('/dev/cu.usbserial-0001','uno');
writeDigitalPin(c,'D13',1);
writeDigitalPin(c, 'D13', 0);
pause(0.5);