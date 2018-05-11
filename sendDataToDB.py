import MySQLdb as sql

def executeScriptsFromFile(filename):
    cnx = sql.connect('localhost','root','s3rv3RIECOM','antenas')
    c = cnx.cursor()
    
    #Open and read the file as a single buffer
    fd = open(filename, 'r')
    sqlFile = fd.read()
    fd.close()
    
    # all SQL commands (split on \n)
    sqlCommands = sqlFile.splitlines()
    
    # Execute every command from the input file
    for command in sqlCommands:
        command = command.replace("''",'0');
        print(command)
        c.execute(command)
        cnx.commit()
    
    cnx.close()
