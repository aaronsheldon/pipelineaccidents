SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1910 AS start_year,
	1919 AS end_year,
	IIF(a4.[PARTIPRE20UNK] IS NULL, 0, a4.[PARTIPRE20UNK]) AS constructed_miles,	
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1920 AS start_year,
	1929 AS end_year,
	IIF(a4.[PARTI192029] IS NULL, 0, a4.[PARTI192029]) AS constructed_miles,	
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1930 AS start_year,
	1939 AS end_year,
	IIF(a4.[PARTI193039] IS NULL, 0, a4.[PARTI193039]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1940 AS start_year,
	1949 AS end_year,
	IIF(a4.[PARTI194049] IS NULL, 0, a4.[PARTI194049]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1950 AS start_year,
	1959 AS end_year,
	IIF(a4.[PARTI195059] IS NULL, 0, a4.[PARTI195059]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1960 AS start_year,
	1969 AS end_year,
	IIF(a4.[PARTI196069] IS NULL, 0, a4.[PARTI196069]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1970 AS start_year,
	1979 AS end_year,
	IIF(a4.[PARTI197079] IS NULL, 0, a4.[PARTI197079]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1980 AS start_year,
	1989 AS end_year,
	IIF(a4.[PARTI198089] IS NULL, 0, a4.[PARTI198089]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	1990 AS start_year,
	1999 AS end_year,
	IIF(a4.[PARTI199099] IS NULL, 0, a4.[PARTI199099]) AS constructued_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	2000 AS start_year,
	2009 AS end_year,
	IIF(a4.[PARTI200009] IS NULL, 0, a4.[PARTI200009]) AS constructed_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4
UNION ALL
SELECT
	'2011 Mileage by Decade' AS source_description,
	a4.[REPORT_NUMBER] AS report_identifier,
	a4.[SUPPLEMENTAL_NUMBER] AS supplemental_identifier,
	IIF(UCase(RTrim(LTrim(a4.[STATE_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[STATE_NAME])))) AS state_name,
	a4.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA2NAMEOFCOMP])))) AS operator_name,
	IIF(UCase(RTrim(LTrim(a4.[PARTA5COMMODITY]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER'), NULL, UCase(RTrim(LTrim(a4.[PARTA5COMMODITY])))) AS commodity_description,
	2010 AS start_year,
	2019 AS end_year,
	IIF(a4.[PARTI201019] IS NULL, 0, a4.[PARTI201019]) AS constructued_miles,
	a4.[DATAFILE_AS_OF] AS censor_date
FROM
	['2011-DECADE-MILEAGE$'] AS a4