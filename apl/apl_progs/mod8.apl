integer main() {
	
	integer status;
	integer p1;
	integer p2;
	integer counter1;
	integer counter2;
	
	status = Fork();

	if(status != -2) then
		counter1 = 2;
		while(counter1 <= 50) do
			if(counter1 % 10 == 0) then
				p1 = Signal();
				p1 = Wait(status);
			endif;
			print(counter1);
			counter1 = counter1 + 2;
		endwhile;
	endif;

	if(status == -2) then
		counter2 = 1;
		while(counter2 <= 50) do
			if(counter2 % 10 == 1) then
				p2 = Signal();
				p2 = Wait(0);
			endif;
			print(counter2);
			counter2 = counter2 + 2;
		endwhile;
	endif;
	return 0;
}
