integer main()
{
	integer counter;
	integer pid;
	counter = 1;
	pid = Fork();
	if (pid != -2) then
		while(counter <= 50) do
			print(counter);
			counter = counter + 2;
		endwhile;
	endif;
	counter = 2;
	if (pid == -2) then
		while(counter <= 50) do
			print(counter);
			counter = counter + 2;
		endwhile;
	endif;
	return 0;
}
