b = arduino('/dev/cu.usbserial-0001','uno');
writeDigitalPin(b,'D13',1);
pause(0.5);
writeDigitalPin(b, 'D13', 0);
pause(0.5);
writeDigitalPin(b, 'D13', 1);
pause(1.0);
writeDigitalPin(b, 'D13', 0);