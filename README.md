
![4](https://github.com/user-attachments/assets/d01b9c80-106d-47b5-93e4-99b149e21086)


Game Logic
Setting the Stage:

The script begins by defining color variables to add a splash of color and formatting to the terminal output, making it visually appealing.
It prints a welcome message to introduce the game: "ASHOURCOM RANDOM NUMBER GAME."
Input and Initialization:

The user specifies a range of numbers (min and max) within which the random number will be generated.
A random number r is generated using the $RANDOM function.
Gameplay:

The user enters a guess for the random number.
If the guess is incorrect:
The script provides a hint about whether the random number is larger or smaller, and by how much (1 or 2 digits difference).
A countdown of attempts is shown (7 attempts total).
Winning or Losing:

If the user guesses correctly within 7 attempts, a congratulatory message is displayed.
If they exhaust all attempts, a game over message appears, revealing that the random number eluded them.
