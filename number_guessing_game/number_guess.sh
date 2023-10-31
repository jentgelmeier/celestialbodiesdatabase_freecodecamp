#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GUESS_LOOP() {
read GUESS
let NUMBER_OF_GUESSES++
# if not a number
if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
  echo That is not an integer, guess again:
  GUESS_LOOP
#if greater
elif (( $GUESS > $SECRET_NUMBER ))
then
  echo "It's lower than that, guess again:"
  GUESS_LOOP
# if lower
elif (( $GUESS < $SECRET_NUMBER ))
then 
  echo "It's higher than that, guess again:"
  GUESS_LOOP
else
  # input number of guesses into games table
  INPUT_NUMBER_OF_GUESSES=$($PSQL "INSERT INTO games(number_of_guesses, username) VALUES($NUMBER_OF_GUESSES, '$USERNAME')")
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
fi
}

echo Enter your username:
read USERNAME

#check if username exist
MATCH_USERNAME=$($PSQL "SELECT username FROM games WHERE username = '$USERNAME'")
# if no username found
if [[ -z $MATCH_USERNAME ]]
then
  # enter username
  INPUT_USERNAME=$($PSQL "INSERT INTO games(username) VALUES('$USERNAME')")
  #welcome
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  #get games played and best game
  GAMES_PLAYED=$($PSQL "SELECT COUNT(number_of_guesses) FROM games WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE username='$USERNAME'")
  #welcome
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo Guess the secret number between 1 and 1000:
GUESS_LOOP


