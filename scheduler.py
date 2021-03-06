import db

times = db.getTime()
totalSessions = len(times)

#arrange and return the Automated Schedule
def getSchedule():
    remainingTimes = {}
    for classData in  db.classRooms():
        timeList = []
        for time in times:
            timeList.append(time)

        remainingTimes[classData["classroom"]] = timeList

    schedule = []
    i = 0
    courseList = list(db.getClasses())
    professors = db.getProfessors()
    professorList = list(professors)

    while i < totalSessions - 1:
        for classroom in remainingTimes:
            time = remainingTimes[classroom].pop(0) 
            professorId = professorList.pop(0)["id"]
            course = courseList.pop(0)
            schedule.append((professorId, course["class_number"], course["class_name"], time["day"], classroom, time["start_time"], time["end_time"]))
            if len(professorList) == 0:
              professorList = list(professors)

            if len(courseList) == 0:
              i += totalSessions
              break
        i += 1

    return schedule
