#!/usr/bin/env python
import pandas as pd
import numpy as np

N_students = 1800
prefix = 19000

weekdays = [d for d in pd.date_range(start='2018-09-01', end='2019-06-13') 
            if d.dayofweek < 5]
student_attendance_table = []
student_record_table = []
np.random.seed(52)

def get_grade(frac):
    if frac < 0.15:
        return 2001 # seniors
    if frac < 0.40:
        return 2002 # juniors
    if frac < 0.70:
        return 2003 # sophmores
    return 2004 # freshmen

def get_grade_level(year):
    return {2004: 'Freshman', 2003: 'Sophmore', 2002: 'Junior'}.get(year, 'Senior')


def get_retention_rate(year_of_birth, date):
    rate_of_sickness = 0.03
    if year_of_birth < 2003:
        rate_of_sickness += 0.01
        if date.month in [3, 4, 5, 6]:
            rate_of_sickness += 0.03
    if date.month in [11]:
        rate_of_sickness += 0.02
    return rate_of_sickness


for student_number in range(N_students):
    student_id = prefix + student_number
    year_of_birth = get_grade(student_number/N_students)
    student_records = [
        (the_date, student_id, np.random.random() > get_retention_rate(year_of_birth, the_date))
        for the_date in weekdays
    ]
    student_attendance_table.extend(student_records)
    
    grade_level = get_grade_level(year_of_birth)
    day_of_year = int(np.random.random()*365)
    date_of_birth = (pd.to_datetime(f'{year_of_birth}-01-01') + 
                    pd.to_timedelta(day_of_year, unit='d'))
    student_record = (student_id, grade_level, date_of_birth)
    student_record_table.append(student_record)


student_records = pd.DataFrame(student_record_table, columns=['student_id', 'grade_level', 'date_of_birth'])
student_attendance_records = pd.DataFrame(student_attendance_table, 
                                          columns=['date', 'student_id', 'attended']
                                         ).sort_values('date')

student_records.to_csv('student.csv', index=False)
student_attendance_records.to_csv('attendance.csv', index=False)
