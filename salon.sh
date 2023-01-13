#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

SERVICES=$($PSQL "SELECT * FROM services")

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
  echo -e "\nWhich service would you like?"
  echo "$SERVICES" | while read SERVICE_ID BAR NAME BAR
    do
      echo "$SERVICE_ID) $NAME" 
    done
  # ask for service
  read SERVICE_ID_SELECTED
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-3]$ ]]
  then
    MAIN_MENU "Please enter a valid option."
  else
  SERVICE_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  # ask for phone
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  # find customer by phone
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  # if no customer id
  if [[ -z $CUSTOMER_ID ]]
  then
    # ask for name
    echo -e "\nWhat's your name?"
    read CUSTOMER_NAME
    #enter name and phone
    INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
  fi
  #get customer name and id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  # ask for appointment time
  echo -e "\nWhat time do you want to schedule your appointment for?"
  read SERVICE_TIME
  #enter appointment
  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo -e "I have put you down for a $(echo $SERVICE_SELECTED | sed -E 's/ *$|^ *//g') at $(echo $SERVICE_TIME | sed -E 's/ *$|^ *//g'), $(echo $CUSTOMER_NAME | sed -E 's/ *$|^ *//g')."
  fi
}

MAIN_MENU

