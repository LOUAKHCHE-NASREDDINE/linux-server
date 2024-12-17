# Install MySQL server:
sudo apt install mysql-server


# Secure the MySQL installation:
sudo mysql_secure_installation

sudo systemctl enable mysql
sudo systemctl start mysql

// "you will need to switch its authentication method from auth_socket to one that makes use of a password, if 
you haven't already done so. To do this, open up the MySQL prompt from your terminal: "//

sudo mysql 

# Next, check which authentication method each of your MySQL user accounts use with the following command:

SELECT user,authentication_string,plugin,host FROM mysql.user;

// "This example output indicates that the root user does in fact authenticate using the auth_socket plugin. To configure the root account to authenticate with a password, run the following ALTER USER command. 
Be sure to change password to a strong password of your choosing: "//


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'nasser1809';

FLUSH PRIVILEGES;
# This command reloads the grant tables in MySQL, applying any changes made to the user permissions.




