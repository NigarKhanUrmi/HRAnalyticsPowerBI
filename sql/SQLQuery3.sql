---- Join the tables
select * from Absenteeism_at_work a
left join compensation c
on a.ID = c.ID
left join Reasons r
on a.Reason_for_absence = r.Number;

---- Find the heathiest employees for the bonus
select * from Absenteeism_at_work
where Social_drinker= 0 and Social_smoker=0 and 
Body_mass_index<25 and 
Absenteeism_time_in_hours < (select AVG(Absenteeism_time_in_hours) from Absenteeism_at_work)

---- Compensation increase for non smoker/ budget $983221/ $1433 for each employee each year
select count(*) from Absenteeism_at_work 
where  Social_smoker=0;

----Optimized data for Visualization

select 
a.ID,
Age, 
r.Reason,
Month_of_absence,
Body_mass_index,
CASE WHEN Body_mass_index < 18 THEN 'Underweight'
     WHEN Body_mass_index between 18 AND 25 THEN 'Healthy'
     WHEN Body_mass_index between 25 AND 30 THEN 'Overweight'
     WHEN Body_mass_index > 30 THEN 'Obese'
     ELSE 'Unknown' END as BMI_catagory,

CASE WHEN Month_of_absence IN (12,1,2) THEN 'Winter'
     WHEN Month_of_absence IN (3,4,5) THEN 'Spring'
     WHEN Month_of_absence IN (6,7,8) THEN 'Summer'
     WHEN Month_of_absence IN (9,10,11) THEN 'Fall'
ELSE 'Unknown' END as Season_names,
Day_of_the_week, 
Distance_from_Residence_to_Work,
Son,
Pet,
Social_drinker,
Social_smoker,
Education,
Disciplinary_failure,
Transportation_expense,
Service_time,
Work_load_Average_day,
Absenteeism_time_in_hours

from Absenteeism_at_work a
left join compensation c
on a.ID = c.ID
left join Reasons r
on a.Reason_for_absence = r.Number;

