SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS DATE, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS DAY, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS WEEKNOR, 
  [EnglishMonthName] AS MONTH,
  LEFT([EnglishMonthName],3) AS MONTHSHORT,
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MONTHNOR, 
  [CalendarQuarter] AS QUARTER, 
  [CalendarYear] AS YEAR
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2019