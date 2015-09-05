function myui
   hs = addcomponents;
   
   hs.fig.Visible = 'on';
   
   function hs = addcomponents
          hs.fig = figure('Visible','off',...
                  'Resize','off',...
                  'Tag','fig');
       hs.btn = uicontrol(hs.fig,'Position',[10 340 70 30],...
                  'String','Ti',... 
                  'Tag','button',...
                  'Callback',@Ti);
      
   end

   function Ti
       A=importdata('Element.txt');
      x=A.data(:,1);
      y=A.data(:,2);
      
      i=1;
      while(i<6)
      if (x(i)==Ti)
      e= y(i);
      end
      i=i+1;
      end
      disp(e)
       
   end
end