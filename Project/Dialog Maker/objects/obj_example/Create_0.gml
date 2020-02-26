/// @description  Load, modify and save a .csv
my_csv = csv_load("demo"); // Load the demo csv into the "my_csv" array
my_csv[2, 2] = "AWESOME"; // Edit the array
csv_save("testing", my_csv); // Save the modified array to "testing.csv" (Script auto adds extension)

