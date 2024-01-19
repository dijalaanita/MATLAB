function state = minor_Project
a = arduino('/dev/cu.usbserial-0001', 'uno');


figure(1)
h = animatedline;
ax =gca;
ax.YGrid = 'on';
ax.YLim = [-0.1 5];
title('Voltage Moisture Sensor vs Time');
xlabel('Time [HH:MM:SS]');
ylabel('Voltage [volt]');
startTime = datetime('now');

stop = 0;

while ~stop
    state = readVoltage(a,'A1');
    t = datetime('now')- startTime;
    addpoints(h,datenum(t),state)
    ax.XLim = datenum([t-seconds(15) t]);
    datetick ('x', 'keeplimits')
    drawnow

    if score >= 90
        grade = "A";
        disp(grade);
        writeDigitalPin(a,'D2',1)

    elseif state > 2.5
        Soil = "Needs to be watered";
        disp(Soil);
        writeDigitalPin(a,'D2',1);

    elseif state <= 2.5
        Soil = "Fully watered";
        disp(Soil);
        writeDigitalPin(a, 'D2', 0);

    else
        Soil = "Error 404 Water System";
        disp(Soil)
        stop = 1;
    end
    stop = readDigitalPin(a,'D6');
end


Score values ranging from 90 to 100 receive an A.
Score values ranging from 80 to 89 receive a B.
Score values ranging from 70 to 79 receive a C.
Score values ranging from 60 to 69 receive a D.
Score values ranging from 0 to 59 receive an F.
end