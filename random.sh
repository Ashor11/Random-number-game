#!/bin/bash

# define colors
RED=$'\033[31m'
GREEN=$'\033[32m'
RESET=$'\033[0m'
BLUE=$'\033[34m'
BOLD=$'\033[1m'
CYAN=$'\033[36m'
YELLOW=$'\033[33m'

# Welcome message
echo -e "${YELLOW}${BOLD}-----------------------------------------${RESET}"
echo -e "${YELLOW}${BOLD}🎮 WELCOME TO ASHOURCOM RANDOM NUMBER GAME 🎮${RESET}"
echo -e "${YELLOW}${BOLD}-----------------------------------------${RESET}\n"

# Read range
read -p "${CYAN}${BOLD}Enter the min-max range for the random number : ${RESET}" min max
r=$(( RANDOM % (max - min + 1) + min ))
# read the gussed game 
read -p "${BOLD}Enter your guess 👾: ${RESET}" value
count=1

# Main game loop
while [[ $value -ne $r ]]; do
    if [[ $count -le 7 ]]; then
        if [[ $r -gt $value ]]; then
            nump=$((r - value))
            if [[ $nump -gt 9 ]]; then
                echo -e "${RED}The guessed number is wrong.${RESET}"
                echo -e "${YELLOW}Hint >><< The random number is greater by 2 digits.${RESET}"
            else
                echo -e "${RED}The guessed number is wrong.${RESET}"
                echo -e "${YELLOW}Hint >><< The random number is greater by 1 digit.${RESET}"
            fi
        else
            nump=$((value - r))
            if [[ $nump -gt 9 ]]; then
                echo -e "${RED}The guessed number is wrong.${RESET}"
                echo -e "${YELLOW}Hint >><< The random number is smaller by 2 digits.${RESET}"
            else
                echo -e "${RED}The guessed number is wrong.${RESET}"
                echo -e "${YELLOW}Hint >><< The random number is smaller by 1 digit.${RESET}"
            fi
        fi
        echo -e "${CYAN}NOTE: Remaining attempts ${BOLD}$((7 - count))${RESET} out of 7.${RESET}"
        read -p "${BOLD}Enter your guess 👾: ${RESET}" value
        count=$((count + 1))
    else
        echo -e "${RED}${BOLD}YOU'RE OUT OF ATTEMPTS!${RESET}"
        echo -e "${RED}${BOLD}GAME OVER! 💀${RESET}"
        break
    fi
done

# Win message
if [[ $value -eq $r ]]; then

    echo -e "${YELLOW}${BOLD}Your value $value matches the random number $r.${RESET}"   
    echo -e "${GREEN}${BOLD}-----------------------------------------${RESET}"
    echo -e "${GREEN}${BOLD}🎉 CONGRATULATIONS, YOU WIN! 🎉${RESET}"
    echo -e "${GREEN}${BOLD}-----------------------------------------${RESET}"
fi