#import connector to mysql database
import mysql.connector

#connector to the sql schema
sqlDB = mysql.connector.connect(
    host = "127.0.01",
    user = "root",
    password = "rootroot",
    database = "Automated_Scheduling"
)

myDB = sqlDB.cursor()

#function to take a query for the database
#and formats it into a list
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

#function to create an object from a query
def formatObject(query):
    myDB.execute(query)
    records = myDB.fetchall()

    item = {}
    i = 0
    for field in myDB.column_names:
        item[field] = records[0][i]
        i += 1
        
    return item

#function below are used to get/arrange the data from the sql database
def insertQuery(query, records):
    myDB.executemany(query, records)
    sqlDB.commit()

def getProfessors():
    return formatData("SELECT * FROM Professors")


def getTime(): 
    return formatData("SELECT * FROM Times")

def getClasses():
    return formatData("SELECT * FROM Classes")

def getProfessor(id):
    return formatObject("SELECT * FROM Professors WHERE id = {id}".format(id = id))

def getSchedule(id=None):
    if id is None:
        return formatData("SELECT * FROM Schedule")

    return formatData("SELECT * FROM Schedule WHERE professor_id = {id}".format(id = id))

def genSchedule(values):
    insertQuery("INSERT INTO Schedule(professor_id, course_number, class_name, day, class_room, time_start, time_end) VALUES (%s,%s,%s,%s,%s,%s,%s)", values)
    
def delSchedule():
    myDB.execute("DELETE  FROM Schedule")
    sqlDB.commit()

def numOfClasses():
    return formatObject("SELECT COUNT(*) AS `count` FROM Classes")["count"]

def numOfProf():
    return formatObject("SELECT COUNT(*) AS `count` FROM Professors")["count"]

def classList():
    return formatData("SELECT id, class_name, class_number FROM Classes")

def classRooms():
    return formatData("SELECT classroom FROM Class_Rooms")



