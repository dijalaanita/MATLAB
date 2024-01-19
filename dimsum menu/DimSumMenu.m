answer = questdlg('What would you like for dim sum?', ...
    'Dim Sum Menu', ...
   "Four treasure chicken","Taro cake","Pheonix claws","Pheonix claws");
 if (answer == "Four treasure chicken")
     disp(" With green tea?")
elseif (answer == "Taro cake")
disp(" more tea?")

 else
     disp("tea with that?")
 end