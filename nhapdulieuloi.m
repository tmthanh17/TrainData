clc;
%hann window
datab7=[];
datai7=[];
dataib7=[];
dataio7=[];
datan7=[];
datao7=[];
dataob7=[];
file = dir('*.mat');
   for i=1:12
    if i<=12
      datab7=[datab7;[load(file(i).name,'data').data]];
    end
   end
   for i=13:27
    if 12<i<=27
      datai7=[datai7;[load(file(i).name,'data').data]];
    end
   end
   for i=28:39
    if 27<i<=39
      dataib7=[dataib7;[load(file(i).name,'data').data]];
    end
   end
   for i=40:54
    if 39<i<=54
      dataio7=[dataio7;[load(file(i).name,'data').data]];
    end
   end
   for i=55:69
    if 54<i<=69
      datan7=[datan7;[load(file(i).name,'data').data]];
    end
   end
   
   for i=70:84
    if 69<i<=84
      datao7=[datao7;[load(file(i).name,'data').data]];
    end
   end
   for i=85:99
    if 84<i<=99
      dataob7=[dataob7;[load(file(i).name,'data').data]];
    end
   end

   