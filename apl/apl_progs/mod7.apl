integer main() {
	
	integer status;
	integer p1;
	integer p2;
	integer counter1;
	integer counter2;
	
	status = Fork();

	if(status == -2) then
		counter1 = 2;
		while(counter1 <= 30) do
			print(counter1);
			counter1 = counter1 + 2;
			if (counter1 % 10 == 0) then
				print("counter1 limit");
				p1 = Signal();
				print("SignalSend");
				p2 = Wait(1);
			endif;
		endwhile;
	endif;
	
	if(status == 1) then
		counter2 = 1;
		while(counter2 <= 30) do
			if (counter2 % 10 == 1) then
				p2 = Wait(-2);
				print("Waiting -2");
			endif;
			print("stopWait-2");
			print(counter2);
			counter2 = counter2 + 2;
			if (counter2 % 10 == 1) then
				print("counter2 limit");
				p1 = Signal();
			endif;			
		endwhile;
	endif;

	return 0;
}
