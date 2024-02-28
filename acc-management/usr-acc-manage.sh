    ##########################
    ## Account Management
    ##########################
     
    ## IMPORTANT FILES
    # /etc/passwd # => users and info: username:x:uid:gid:comment:home_directory:login_shell
    # /etc/shadow # => users' passwords
    # /etc/group # => groups
     
    # creating a user account
    useradd [OPTIONS] username
    # OPTIONS:
    # -m => create home directory
    # -d directory => specify another home directory
    # -c "comment"
    # -s shell
    # -G => specify the secondary groups (must exist)
    # -g => specify the primary group (must exist)
     
    Exemple:
    useradd -m -d /home/john -c "C++ Developer" -s /bin/bash -G sudo,adm,mail john
     
    # changing a user account
    usermod [OPTIONS] username # => uses the same options as useradd
    Example:
    usermod -aG developers,managers john # => adding the user to two secondary groups
     
    # deleting a user account
    userdel -r username # => -r removes user's home directory as well
     
    # creating a group
    groupadd group_name
     
    # deleting a group
    groupdel group_name
     
    # displaying all groups
    cat /etc/groups
     
    # displaying the groups a user belongs to
    groups
     
    # creating admin users
    # add the user to sudo group in Ubuntu and wheel group in CentOS
    usermod -aG sudo john
     
     
    ## Monitoring Users ##
    who -H # => displays logged in users
    id # => displays the current user and its groups
    whoami # => displays EUID
     
    # listing who’s logged in and what’s their current process.
    w
    uptime
     
    # printing information about the logins and logouts of the users
    last
    last -u username

