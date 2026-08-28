#!/bin/bash
## CWRUSH Bash Tutorial written by Evan Harnak ##
## Written with NeoVim 8_22_26 ##

TUTORIAL_DIR="$(pwd)/tutorials"

## 'cd' test ##
cd_challenge() {
  local prompt="$(whoami)@$(hostname):/$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
    eval "$user_input"
    
    if [[ "$PWD" == "$HOME" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

ls_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty

    if [[ "$user_input" = "ls" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

lsafolder_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty

    if [[ "$user_input" = "ls -a folder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}


lsla_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "ls -la" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

mkdir_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "mkdir folder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

cddir_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "cd folder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

echo_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "echo hello world" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

user_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = 'echo $USER' ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

myfile_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "echo hello > myfile.txt" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

lsmyfile_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "ls" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

cat_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "cat myfile.txt" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

cdup_challenge() {
  local prompt="$(whoami)@$(hostname):$PWD$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "cd .." ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

mkdirnew_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "mkdir newfolder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

lsnewa_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "ls -a newfolder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

lsnew_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "ls newfolder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

mv_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "mv folder/myfile.txt newfolder/" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

cp_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "cp newfolder/file.txt folder/" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

and_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "ls folder && ls newfolder" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

rename_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "mv newfolder/myfile.txt newfolder/file.txt" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

rm_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "rm folder/file.txt" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}

rmand_challenge() {
  local prompt="$(whoami)@$(hostname):~$ "

  while true; do
    read -p "$prompt" user_input < /dev/tty
 
    if [[ "$user_input" = "rm -r folder && rm -r newfolder && ls" ]]; then
      break
    else
      echo "Wrong. Try again."
    fi
  done
}


show_lesson() {
  local prompt="$(whoami)@$(hostname):/$ "
  clear
  ## Welcome Section ##
  cat "$TUTORIAL_DIR/lesson_1.txt"
  read -p "Press Enter to continue..."
  clear
  ## Introduction to Linux filesystem ##
  cat "$TUTORIAL_DIR/lesson_2.txt"
  read -p "Press Enter to continue..."
  clear
  ## Introduction to cd ##
  cat "$TUTORIAL_DIR/lesson_3.txt"
  cd_challenge
  cd
  local prompt="$(whoami)@$(hostname):~$ "
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- CD COMMAND ###"
  echo ""
  echo "Correct! You are now in: $PWD"
  echo ""
  echo "Notice how the '/' symbol is followed by 'home/' which is followed by your username."
  echo ""
  echo "The directory with your username is your home directory."
  echo ""
  read -p "Press Enter to continue..."
  clear
  ## ls challenge ##
  cat "$TUTORIAL_DIR/lesson_4.txt"
  ls_challenge
  ls
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- LS COMMAND ###"
  echo ""
  echo "$prompt ls"
  ls
  echo ""
  echo "This is the output of 'ls'. It lists all the files and directories in the current directory called '.', and we can see these dot files with the next command."
  echo ""
  echo "Try typing 'ls -la' now."
  lsla_challenge
  clear
  echo "### CWRUSH BASH TUTORIAL -- LS COMMAND ###"
  echo ""
  echo "$prompt ls -la"
  ls -la
  echo ""
  echo "This is the output of 'ls -la'. The -l puts the contents of ls in a list and the -a includes the hidden dotfiles. You can use each of these tags individually as well." 
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- MKDIR COMMAND ###"
  echo ""
  echo "Now, let's try making a new directory."
  echo ""
  echo "Type 'mkdir folder' in the terminal below and press Enter. If you've quit the tutorial before, dont be afraid if the file already exists. A successful creation has no output."
  mkdir_challenge
  mkdir folder
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- MKDIR AND CD COMMAND ###"
  echo ""
  echo "Now let's try changing directories into the folder."
  echo ""
  echo "Type 'cd folder' in the terminal and press Enter."
  cddir_challenge
  cd folder
  local prompt="$(whoami)@$(hostname):$PWD$ "
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- ECHO COMMAND ###"
  echo ""
  echo "Now we're going to show how to display simple messages and write files."
  echo ""
  echo "Type 'echo hello world' into the terminal below."
  echo_challenge
  echo hello world
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- ECHO COMMAND ###"
  echo ""
  echo "As you can see, we can output simple commands with echo. We can also echo environment variables."
  echo ""
  echo "Environment variables are classified by a '$' followed by the variable name in all caps."
  echo ""
  echo "Go ahead and type 'echo \$USER'"
  user_challenge
  echo $USER
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- ECHO AND CREATING FILES ###"
  echo ""
  echo "Let's create a simple file using echo."
  echo ""
  echo "Go ahead and type 'echo hello > myfile.txt'"
  myfile_challenge
  echo hello > myfile.txt
  echo "$prompt"
  echo ""
  echo "Now, we can verify that we've made the file. Type 'ls' into the terminal below."
  lsmyfile_challenge
  ls
  echo "$prompt"
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- CATTING FILES ###"
  echo ""
  echo "The 'echo' command outputs the message and the '>' operator outputs it to a new file."
  echo "The output of many packages can be written to a file this way."
  echo ""
  echo "Now let's cat the file to see its contents."
  echo "Type 'cat myfile.txt' into the terminal below"
  cat_challenge
  cat myfile.txt
  echo "$prompt"
  echo ""
  echo "As you can see, myfile.txt has the contents we put in earlier."
  read -p "Press Enter to continue..."
  clear 
  echo "### CWRUSH BASH TUTORIAL -- MOVING AROUND AND LISTING DIRECTORIES ###"
  echo ""
  echo "Finally, to end the first section of this tutorial, let's start jumping around the filesystem we just created."
  echo ""
  echo "Earlier, you may have noticed that every directory has a '.' and a '..' file."
  echo "The '.' is a reference to the folder itself containing '.' while '..' is the parent directory."
  echo ""
  echo "Try jumping to the parent directory by typing 'cd ..' in the terminal."
  cdup_challenge
  cd ..
  local prompt="$(whoami)@$(hostname):$PWD$ "
  echo "$prompt"
  echo ""
  echo "As you can see, we are now back in the home directory also known as '~'."
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- MOVING AND COPYING FILES ###"
  echo ""
  echo "Let's try moving a file to a different directory."
  echo ""
  echo "First, let's make a new direcrory. We'll call it newfolder."
  echo ""
  echo "Do you remember the mkdir command? (To help, it's 'mkdir newfolder')"
  mkdirnew_challenge
  mkdir newfolder
  echo "$prompt"
  echo ""
  echo "We can verify we've made the folder with 'ls -a newfolder'."
  lsnewa_challenge
  ls -a newfolder
  echo "$prompt"
  echo ""
  echo "As you can see, it has the '.' and '..' we mentioned earlier."
  echo ""
  echo "Now, we can move our myfile.txt to the newfolder directory."
  echo ""
  echo "Type 'mv folder/myfile.txt newfolder/"
  mv_challenge
  mv folder/myfile.txt newfolder/
  echo "$prompt"
  echo ""
  echo "We can verify we've successfully moved the folder with 'ls newfolder'."
  lsnew_challenge
  ls newfolder
  echo "$prompt"
  echo ""
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- MOVING AND COPYING FILES ###"
  echo ""
  echo "We can also rename the file with mv. Type 'mv newfolder/myfile.txt newfolder/file.txt'"
  rename_challenge
  mv newfolder/myfile.txt newfolder/file.txt
  echo "$prompt"
  echo ""
  echo "Let's verify we've renamed the file with 'ls newfolder'"
  lsnew_challenge
  ls newfolder
  echo "$prompt"
  echo ""
  echo "We can also copy files with the cp command. Type 'cp newfolder/file.txt folder/'"
  cp_challenge
  cp newfolder/file.txt folder/
  echo "$prompt"
  echo ""
  echo "Now with an quick 'ls' we can view both directories to see the copy."
  echo ""
  echo "We'll use the && operator to do two commands at once. Type 'ls folder && ls newfolder'"
  and_challenge
  ls folder && ls newfolder
  echo "$prompt"
  echo ""
  echo "The file has been copied successfully. You can also rename a copy by changing its name in the new path."
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- REMOVING FILES ###"
  echo ""
  echo "Finally, we'll show you how to remove files and folders. Always be careful when using this next command."
  echo ""
  read -p "Press Enter to continue..."
  clear
  echo "### CWRUSH BASH TUTORIAL -- REMOVING FILES ###"
  echo ""
  echo "The rm command lets you delete files and direcories."
  echo ""
  echo "Type the command 'rm folder/file.txt' to delete file.txt"
  rm_challenge
  rm folder/file.txt
  echo "$prompt"
  echo ""
  echo "Now let's verify we've deleted the file.txt. Type 'ls -a folder"
  lsafolder_challenge
  ls -a folder
  echo "$prompt"
  echo ""
  echo "Now that we've deleted a file, let's delete the tutorial folders. You need the -r tag for this."
  echo ""
  echo "Type 'rm -r folder && rm -r newfolder && ls' to finish this tutorial."
  rmand_challenge
  rm -r folder && rm -r newfolder && ls
  echo "$prompt"
  echo ""
  echo "We now have the same home directory we started with."
  read -p "Press Enter to continue..."
  clear
  cat "$TUTORIAL_DIR/lesson_5.txt"
  read -p "Press 'ctrl' + 'C' to quit this tutorial. You can use the 'clear' command in the new terminal to start fresh."
}

# Main function
show_lesson


