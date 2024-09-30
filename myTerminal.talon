app: terminal
-

search actions:
    key(ctrl-r)

# Command to run database migrations using Docker
migrate db:
    insert("docker compose run backend python3 manage.py migrate")
    key(enter)

# Command to create new database migrations using Docker
make db migrations:
    insert("docker compose run backend python3 manage.py makemigrations")
    key(enter)
# Command to run backend debug using Docker Compose
run backend debug:
    insert("docker-compose -f ../docker-compose-debug.yml down backend && docker-compose -f ../docker-compose-debug.yml up backend")
    key(enter)

# Command to go up to parent directory
jump up:
    insert("cd ..")
    key(enter)

# Command to go up multiple directory levels
jump up <number>:
    insert("cd ")
    repeat(number):
        insert("../")
    key(enter)

# Command to list directories with numbers
list folders:
    insert("ls -d */ | nl -w2 -s') '")
    key(enter)

# Command to change to a numbered directory
jump <number>:
    insert("cd $(ls -d */ | sed -n {number}p)")
    key(enter)

# Command to list files with numbers in current directory
list files:
    insert("ls -p | grep -v / | nl -w2 -s') '")
    key(enter)

# Command to push a numbered file to the storage directory
push file <number>:
    insert("file=$(ls -p | grep -v / | sed -n {number}p) && [ -f \"$file\" ] && mv \"$file\" ~/storage/ || echo 'File not found or error occurred'")
    key(enter)
# Command to copy a numbered file to the storage directory
copy file <number>:
    insert("file=$(ls -p | grep -v / | sed -n {number}p) && [ -f \"$file\" ] && cp \"$file\" ~/storage/ && echo 'File copied to storage successfully' || echo 'File not found or error occurred'")
    key(enter)

# Command to list files in the storage directory
list storage:
    insert("ls -p ~/storage | grep -v / | nl -w2 -s') '")
    key(enter)

# Command to pull a numbered file from storage to current directory
pull file <number>:
    insert("file=$(ls -p ~/storage | grep -v / | sed -n {number}p) && [ -f ~/storage/\"$file\" ] && mv ~/storage/\"$file\" . || echo 'File not found or error occurred'")
    key(enter)
    
# Command to delete a numbered file in the current directory
delete file <number>:
    insert("file=$(ls -p | grep -v / | sed -n {number}p) && [ -f \"$file\" ] && rm \"$file\" && echo 'File deleted successfully' || echo 'File not found or error occurred'")
    key(enter)
    
# Command to delete a numbered file in the storage directory
delete storage file <number>:
    insert("file=$(ls -p ~/storage | grep -v / | sed -n {number}p) && [ -f ~/storage/\"$file\" ] && rm ~/storage/\"$file\" && echo 'File deleted successfully from storage' || echo 'File not found in storage or error occurred'")
    key(enter)

# Command to clear all files from the storage directory
clear storage:
    insert("rm ~/storage/*")
    key(enter)

# Command to show and copy the full path of the current directory
show path:
    insert("pwd | tr -d '\n' | pbcopy && pwd")
    key(enter)

# Command to go directly to the Downloads folder
go downloads:
    insert("cd /Users/peoples/Downloads")
    key(enter)

# command to go directly to the vividly directory
go vividly:
    insert("cd /Users/peoples/CresicorNext")
    key(enter)

# command to go directly home
go home:
    insert("cd ~")
    key(enter)

    # command to go directly to the talon home
go talon:
    insert("cd /Users/peoples/.talon/user")
    key(enter)


# command to make a new directory
make directory:
    insert("mkdir ")
    

