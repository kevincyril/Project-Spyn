Brick.SetColorMode(2, 2);
global key
InitKeyboard();
while key ~= 'q'
   pause(0.1);
  
   switch key
       case 'uparrow'
           disp('forward')
           Brick.MoveMotor('C', -50);
           Brick.MoveMotor('D', -50);
          
          
       case 'downarrow'
           disp('backward')
           Brick.MoveMotor('C', 50);
           Brick.MoveMotor('D', 50);
       case 's'
           disp('stop')
           Brick.StopAllMotors();
      
       case 'leftarrow'
           disp('left')
           Brick.MoveMotor('C', -15);
           Brick.MoveMotor('D', 15);
      
       case 'rightarrow'
           disp('right')
           Brick.MoveMotor('D', -15);
           Brick.MoveMotor('C', 15);
       case 'h'
           disp('HOOOOOOOOONK!!');
           Brick.playTone(100, 100, 500);
       case 'a'
           disp('self driving activated...')
           Brick.MoveMotor('C', -50);
           Brick.MoveMotor('D', -50)
           while key ~= 's'
               pause(0.1);
              
               if Brick.ColorCode(2) == 5
                   Brick.StopAllMotors;
                   pause(2);
                   Brick.MoveMotor('C', -50);
                   Brick.MoveMotor('D', -50);
               end
               pause(0.1);
               if Brick.TouchPressed(1) == 1 && Brick.UltrasonicDist(3) <= 70
                   disp(Brick.TouchPressed(1));
                   Brick.MoveMotor('C', 50);
                   Brick.MoveMotor('D', 50);
                   pause(0.2);
                   Brick.StopAllMotors();
                   Brick.MoveMotor('C', -30);
                   Brick.MoveMotor('D', 30);
                   pause(0.75);
                   Brick.MoveMotor('C', -50);
                   Brick.MoveMotor('D', -50);
               elseif Brick.TouchPressed(1) == 1
                   Brick.MoveMotor('C', 50);
                   Brick.MoveMotor('D', 50);
                   pause(0.2);
                   Brick.StopAllMotors();
                   Brick.MoveMotor('C', 30);
                   Brick.MoveMotor('D', -30);
                   pause(0.75);
                   Brick.MoveMotor('C', -50);
                   Brick.MoveMotor('D', -50);
               end
           end
           Brick.StopAllMotors;
       case 'u'
           Brick.MoveMotor('B', -20);
           pause(0.5);
           Brick.StopMotor('B', 'Brake');
       case 'j'
           Brick.MoveMotor('B', 20);
           pause(0.5);
           Brick.StopMotor('B', 'Coast');
       case 0
           continue;
   end
end
CloseKeyboard();
Brick.StopAllMotors();


