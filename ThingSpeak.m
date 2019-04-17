clc;
clear all;
close all;
for i = 0:2:20
    thingSpeakWrite(749351,i,'WriteKey','E2LE96UTTDIMT8R3')
    pause(20)
end
thingSpeakRead(749351,'Fields',1,'OutputFormat','TimeTable')

%% Using two channels simultaneously:
clc;
clear all;
close all;
for i = 0:2:20
    thingSpeakWrite(749351,[i,randi(100)],'WriteKey','E2LE96UTTDIMT8R3')
    pause(20)
end
thingSpeakRead(749351,'Fields',1,'OutputFormat','TimeTable')
%% updating status on twitter when temperature exceeds 30:
clc;
clear all;
close all;
for i = 0:2:20
    thingSpeakWrite(749351,i,'WriteKey','E2LE96UTTDIMT8R3')
    pause(20)
    if (i>10)
        HTTP POST https://api.thingspeak.com/apps/thingtweet/1/statuses/update
        api_key = TG7H5K3SVDN2P1MX;
        status= 'Posted'
    end
end
thingSpeakRead(749351,'Fields',1,'OutputFormat','TimeTable') 