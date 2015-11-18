integer main() {
	
	integer status;
	integer p1;
	integer p2;
	integer counter1;
	integer counter2;
	
	status = Fork();

	if(status == -2) then
		print(1);
		p1 = Wait(1);
		print(3);
		p1 = Wait(1);
		print(5);
	endif;
	
	if(status == 1) then
		print(2);
		p2 = Signal();
		print(4);
		p2 = Signal();
		print(6);
	endif;

	return 0;
}
