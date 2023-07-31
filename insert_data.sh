#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
ADDED_TEAMS=()
TRUNCATE=$($PSQL "TRUNCATE teams,games")
cat games.csv | while IFS=',' read YEAR ROUND WINNER_NAME OPPONENT_NAME WINNER_GOALS OPPONENT_GOALS
do
   if [[ $YEAR != "year" ]]
   then 
      if [[  ! ${ADDED_TEAMS[*]}  =~  ${WINNER_NAME}  ]]
      then
      ADD_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER_NAME')")
      ADDED_TEAMS+=$WINNER_NAME
      fi
      if [[  ! ${ADDED_TEAMS[*]}  =~  ${OPPONENT_NAME}  ]]
      then
      ADD_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT_NAME')")
      ADDED_TEAMS+=$OPPONENT_NAME
      fi
      #Retrieve IDs
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER_NAME'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT_NAME'")
     
      # Create games
      ADD_GAME=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")

   fi

done
echo $ADDED_TEAMS