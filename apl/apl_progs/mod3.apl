integer main()
{
	integer counter;
	integer pid;
	integer count;
	integer flag;
	integer status;
	counter = 1;
	count = 10;
	pid = Fork();
	while (counter <= 20) do
		
		if (pid != -2) then
			status = Wait(-2);
		endif;
		if (pid == -2) then
			while(
			print(counter);
			
			status = Wait(1);
		endif;
		counter = counter + 1;
	endwhile;

	return 0;
}
