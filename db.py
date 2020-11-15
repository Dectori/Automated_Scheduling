#import connector to mysql database
import mysql.connector

sqlDB = mysql.connector.connect(
    host = "127.0.01",
    user = "root",
    password = "rootroot",
    database = "Automated_Scheduling"
)

myDB = sqlDB.cursor()

def getProfessors():
    myDB.execute("SELECT * FROM professors")
    myresult = myDB.fetchall()
    return myresult

def getTime():
    myDB.execute("SELECT * FROM Times")
    myresult = myDB.fetchall()
    return myresult

def getClasses():
    myDB.execute("SELECT * FROM Classes")
    myresult = myDB.fetchall()
    return myresult


