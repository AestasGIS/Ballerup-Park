#!/usr/bin/python3

import sys
import os 
import shutil
import json
import paramiko
from .ogr2ogr import main
import zipfile


def main() -> int:

    # Get the setup JSON file from the command line
    # The JSON file contain all necessary parameter for the script

    # Is the json filename an argument on the command line ? 
    if len(sys.argv) >= 2:
        fname_json = os.path.abspath(sys.argv[1])

    # No, create default name
    else:
        fname_json = os.path.join(os.path.dirname(os.path.realpath(__file__)),__name__,'.json')

    # Read the json file with setup-parameters and convert it to a Python dict

    # File exists ??
    if os.path.isfile(fname_json):

        dict_setup = {}

        # Open and convert to dict
        with open(fname_json) as json_file:
            dict_setup = json.load(json_file)

            # create ssh client 
            ssh_client = paramiko.SSHClient()
            
            # Open a connection to SFTP server using parameters "sftp" -> "hostname", "username", "password", "port" from dict_setup 

            # remote server credentials
            hostname = dict_setup["sftp"]["hostname"]
            username = dict_setup["sftp"]["username"]
            password = dict_setup["sftp"]["password"]
            port     = dict_setup["sftp"]["port"]
            
            ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

            # Open ssh connection 
            ssh_client.connect(hostname=hostname,port=port,username=username,password=password)

            # Open sftp connection 
            ftp = ssh_client.open_sftp()
            
            # Scan for files in the specific directory using parameter "sftp" -> "export_dir" from dict_setup
            export_dir = dict_setup["sftp"]["export_dir"]
            files = ftp.listdir(export_dir)
           
            import_dir = dict_setup["database"]["import_dir"]
            work_dir = dict_setup["database"]["work_dir"]

            # Clean/ remove work dir
            if os.path.exists(work_dir): shutil.rmtree(work_dir)

            # For each zipfile on sftp server:
            for f in files:
            
                # Copy file to database server directory using parameter "database" -> "import_directory" from dict_setup
                remote_file_path = os.path.join(export_dir,f)
                local_file_path = os.path.join(import_dir,f)

                res = ftp.get(remote_file_path,local_file_path)                

                # Delete file on SFTP server
                if os.path.isfile(local_file_path):
                    res = ftp.remove("remote_file_path")                
                    with zipfile.ZipFile(local_file_path, mode="r") as archive: archive.extractall(work_dir)
                    for z in os.listdir(work_dir) if os.path.isfile(z):

                        # Upload file to database, add timestamp, print to log using parameters "database" -> "db_address", "db_username", "db_password", "db_database", "db_schema", db_table, "db_timestamp", "log" -> "log_file"  from dict_setup 
                
                        # If error during upload: print error to log (maybe move file to error directory)

                    # Clean/ remove work dir
                    if os.path.exists(work_dir): shutil.rmtree(work_dir)

                # Remove zip file
                os.remove(local_file_path)

            # Close connection to SFTP server
            ftp.close()
            ssh_client.close()

    return 0


