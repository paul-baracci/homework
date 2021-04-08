<?php
// 1
echo "---Exersise 1 - Hello, World!---\n";

echo 'Hello, Friend!';
echo "\n";

// 2
echo "---Exersise 2 - Variables and Types---\n";

$name = "Eren";
$age = 15;

echo "Hello $name. You are $age years old.\n"; 

$x = 100;
$y = 200;
$sum = $x + $y;
echo "The sum of $x and $y is $sum.\n";

// 3
echo "---Exersise 3 - Simple arrays---\n";

$even_numbers = [2,4,6,8,10];
$male_names = ["Rick", "Roy", "Gaff"];
$female_names = ["Rachael", "Pris", "Betty"];
$names =array_merge($male_names, $female_names);

print_r($even_numbers);
print_r($names);

// 4
echo "---Exersise 4 - Arrays and keys---\n";

$phone_numbers = [
  "Forrest" => "022 79 78 99",
  "Jenny" => "022 90 76 44",
];

$phone_numbers["Lieutenant Dan"] = "022 98 44 12";

print_r($phone_numbers);

// 5
echo "---Exersise 5 - Multidimensional arrays---\n";

$multiDimensional = [
	[1, 2, 3],
	[4, 5, 6],
	[996, 69, 3],
];

foreach ($multiDimensional as $numbers) {
	$sum = 0;
	foreach($numbers as $number) {
	$sum += $number;
	}
echo "{$sum}\n";
}

// 6
echo "---Exersise 6 - Strings---\n";

$numere = "4,7,33,44,56,23,89,10,15,45,26,46,69,12,77,90,56,23,12";
$numere_list = explode(",",$numere);
print_r($numere_list);


// 7
echo "---Exersise 7 - For loops---\n";

$odd_numbers = [1,3,5,7,9,11];
for ($i = 0; $i < count($odd_numbers); $i+=1) {
	$odd_number = $odd_numbers[$i];
	echo $odd_number . "\n";
}

// 8
echo "Exersise 8 - While loops\n";

$more_numbers = [56, 65, 26, 86, 66, 34, 78, 74, 67, 18, 34, 73, 45, 67, 75, 10, 60, 80, 74, 16, 86, 34, 12, 23, 42, 72, 36, 3, 73, 9, 92, 81, 94, 54, 97, 74, 45, 55, 70, 94, 96, 81, 86, 86, 84, 4, 32, 8, 96, 86, 87, 18, 84, 87, 59, 48, 32, 90, 17, 22, 82, 79, 66, 28, 17, 14, 80, 83, 66, 36, 21, 89, 68, 2, 51, 65, 20, 87, 48, 5, 1, 16, 60, 53, 84, 90, 16, 2, 37, 73, 57, 70, 57, 69, 68, 1, 24, 40, 72, 97];

// Print odd numbers

$i = 0;
while($i < count($more_numbers)) 
{
	$more_number = $more_numbers[$i]; ++$i;
	
	if ($more_number % 2 == 0)
	continue;

	echo "$more_number\n";
}

// 9
echo "---Exersise 9 - Functions---\n";

function squared_sum($actors)
{
	$sum = 0;
	foreach ($actors as $actor) {
		$sum += $actor * $actor;	
	}
	return $sum;
}
echo squared_sum([56, 65, 26, 86, 66, 34, 78, 74, 67, 18, 34, 73, 45, 67, 75, 10, 60, 80, 74, 16, 86, 34, 12, 23, 42, 72, 36, 3, 73, 9, 92, 81, 94, 54, 97, 74, 45, 55, 70, 94, 96, 81, 86, 86, 84, 4, 32, 8, 96, 86, 87, 18, 84, 87, 59, 48, 32, 90, 17, 22, 82, 79, 66, 28, 17, 14, 80, 83, 66, 36, 21, 89, 68, 2, 51, 65, 20, 87, 48, 5, 1, 16, 60, 53, 84, 90, 16, 2, 37, 73, 57, 70, 57, 69, 68, 1, 24, 40, 72, 97]);
echo "\n";

// 10
echo "---Exersise 10 - Objects---\n";

class Car {
	public function __construct($brand, $year) {
		$this->brand = $brand;
		$this->year = $year;
	}
	public function print_details() {
		echo "This car is a " . $this->year . " " . $this->brand . "\n";
	}
}
$cart = new Car("Lada", 1972);
$cart->print_details();

// 11
echo "---Exersize 11 - Exceptions---\n";

function throw_exception() {
  throw new Exception("Exception!");
}

try {
  throw_exception();
} catch (Exception $e) {
  echo "Exception caught!\n";
} finally {
  echo "Done!\n";
}
?>
