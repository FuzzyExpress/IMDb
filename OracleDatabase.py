from dotenv import load_dotenv
import paramiko
import time
import os

load_dotenv()

# This is for moving sql files to my Windows VM
hostname = "127.0.0.1"
port = 3022
username = "evand"
password = os.getenv("PASSWORD")


def upload_and_execute_sql():
    # Initialize the SSH client
    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    try:
        # Connect to the server
        client.connect(hostname, port=port, username=username, password=password)
        
        # Open SFTP session and upload the SQL file
        sftp = client.open_sftp()
        sftp.put(local_sql_file, remote_sql_file)
        sftp.close()
        print("SQL file uploaded successfully.")
    finally:
        client.close()


# Define the paths
# local_sql_file = "/home/evans/Downloads/DML_example(1)(2).sql"
local_sql_file = "/home/evans/IMDb/imdb3.sql"
remote_sql_file = "C:\\sql\\imdb.sql"  # Path on the Windows machine

# Run the function
upload_and_execute_sql()


# Define the paths
local_sql_file = "/home/evans/IMDb/imdb_data.sql"
remote_sql_file = "C:\\sql\\imdb_d.sql"  # Path on the Windows machine

# Run the function
upload_and_execute_sql()