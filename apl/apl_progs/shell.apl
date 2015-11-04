integer main() {
	integer status;
	string input;
	
	print("Shell:> $ ");
	read(input);

	while(input != "exit") do
		status = Fork();
		if (status == -2) then
			// this is child process
			print("before exec");
			status = Exec(input);
			print("completed exec");
			if (status == -1) then
				print("Exec error");
			endif;
		endif;

		if (status == -1) then
			print("Fork error");
		else
			status = Wait(status);
		endif;

		print("Shell:> $ ");
		read(input);

	endwhile;

	print("Shell exiting");
	return 0;
}
