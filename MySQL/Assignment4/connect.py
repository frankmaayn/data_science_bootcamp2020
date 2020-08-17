import mysql.connector

cnx = mysql.connector.connect(
            user='root',
            password='LOLihatethis2017!',
            host='localhost',
            database='assignment3',
            use_pure=True
        )

cursor = cnx.cursor(buffered=True)

query = (
       "SELECT * FROM EMPLOYEE;"
        )
        
cursor.execute(query)

for item in cursor:
    print(item)

cursor.close()
cnx.close()