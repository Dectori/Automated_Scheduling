#import connector to mysql database
import mysql.connector

sqlDB = mysql.connector.connect(
    host = "127.0.01",
    user = "root",
    password = "rootroot",
    database = "Automated_Scheduling"
)

myDB = sqlDB.cursor()

def formatData(query):
    myDB.execute(query)
    records = myDB.fetchall()
    result = []
    for row in records:
        item = {}
        i = 0
        for field in myDB.column_names:
            item[field] = row[i]
            i += 1

        result.append(item)
        
    return result


def getProfessors():
    return formatData("SELECT * FROM Professors")


def getTime(): 
    return formatData("SELECT * FROM Times")

def getClasses():
    return formatData("SELECT * FROM Classes")

def getProfessor(id):
    return formatData("SELECT * FROM Professors")