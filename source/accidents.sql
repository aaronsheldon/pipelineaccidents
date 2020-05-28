SELECT
	'Past to 1985' AS source_description,
	a0.[RPTID] AS unique_identifier,
	a0.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a0.[NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[NAME] IS NULL, '', UCase(RTrim(LTrim(a0.[NAME])))) AS operator_name,
	a0.[IDATE] + ' ' + FORMAT(IIF(a0.[ACCHH] < 24, a0.[ACCHH], 0), '00') + ':' + FORMAT(IIF(a0.[ACCMN] < 60, a0.[ACCMN], 0), '00') AS accident_timestamp,
	IIF(UCase(RTrim(LTrim(a0.[ACCST]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[ACCST] IS NULL, '', UCase(RTrim(LTrim(a0.[ACCST])))) AS accident_state,
	IIF(UCase(RTrim(LTrim(a0.[ACCNT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[ACCNT] IS NULL, '', UCase(RTrim(LTrim(a0.[ACCNT])))) AS accident_county,
	IIF(UCase(RTrim(LTrim(a0.[ACCTY]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[ACCTY] IS NULL, '', UCase(RTrim(LTrim(a0.[ACCTY])))) AS accident_city,
	IIF(UCase(RTrim(LTrim(a0.[CAUST]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[CAUST] IS NULL, '', UCase(RTrim(LTrim(a0.[CAUST])))) AS cause_description,
	IIF(UCase(RTrim(LTrim(a0.[COMM]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[COMM] IS NULL, '', UCase(RTrim(LTrim(a0.[COMM])))) AS commodity_description,
	IIF(UCase(RTrim(LTrim(a0.[CSYST]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[CSYST] IS NULL, '', UCase(RTrim(LTrim(a0.[CSYST])))) AS failure_system,
	IIF(UCase(RTrim(LTrim(a0.[ORGNT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[ORGNT] IS NULL, '', UCase(RTrim(LTrim(a0.[ORGNT])))) AS failure_part,
	IIF(UCase(RTrim(LTrim(a0.[GRNDT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a0.[GRNDT] IS NULL, '', UCase(RTrim(LTrim(a0.[GRNDT])))) AS ground_code,
	IIF(UCase(RTrim(LTrim(a0.[FIRE]))) = 'YES', 'YES', 'NO') AS ignition_result,
	IIF(UCase(RTrim(LTrim(a0.[EXP]))) = 'YES', 'YES', 'NO') AS explosion_result,
	IIF(IsNumeric(a0.[LOSS]), ABS(a0.[LOSS]), 0) AS loss_volume,
	'BARRELS' AS loss_units,
	IIF(IsNumeric(a0.[EFAT]), ABS(a0.[EFAT]), 0) +
	IIF(IsNumeric(a0.[NFAT]), ABS(a0.[NFAT]), 0) AS human_fatalities,
	IIF(IsNumeric(a0.[EINJ]), ABS(a0.[EINJ]), 0) +
	IIF(IsNumeric(a0.[NINJ]), ABS(a0.[NINJ]), 0) AS human_injuries,
	IIF(IsNumeric(a0.[CPPPT]), ABS(a0.[CPPPT]), 0) +
	IIF(IsNumeric(a0.[OPRPT]), ABS(a0.[OPRPT]), 0) AS total_cost,
	'' AS environmental_impact
FROM 
	['0000-1985$'] AS a0  
UNION ALL
SELECT
	'1985 to 2002' AS source_description,
	a1.[RPTID] AS unique_identifier,
	a1.[OPID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a1.[NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[NAME] IS NULL, '', UCase(RTrim(LTrim(a1.[NAME])))) AS operator_name,
	FORMAT(a1.[IDATE], '0000-00-00') + ' ' + FORMAT(IIF(a1.[DTHH] < 2400, a1.[DTHH], 0), '00:00') AS accident_timestamp,
	IIF(UCase(RTrim(LTrim(a1.[ACSTATE]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[ACSTATE] IS NULL, '', UCase(RTrim(LTrim(a1.[ACSTATE])))) AS accident_state,
	IIF(UCase(RTrim(LTrim(a1.[ACCOUNTY]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[ACCOUNTY] IS NULL, '', UCase(RTrim(LTrim(a1.[ACCOUNTY])))) AS accident_county,
	IIF(UCase(RTrim(LTrim(a1.[ACCITY]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[ACCITY] IS NULL, '', UCase(RTrim(LTrim(a1.[ACCITY])))) AS accident_city,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a1.[CAUS]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[CAUS] IS NULL, '', UCase(RTrim(LTrim(a1.[CAUS])))) + ' ' + 
	IIF(UCase(RTrim(LTrim(a1.[CAUSO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[CAUSO] IS NULL, '', UCase(RTrim(LTrim(a1.[CAUSO])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a1.[CAULK]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[CAULK] IS NULL, '', UCase(RTrim(LTrim(a1.[CAULK])))) + ' ' + 
	IIF(UCase(RTrim(LTrim(a1.[CAULO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[CAULO] IS NULL, '', UCase(RTrim(LTrim(a1.[CAULO]))))
	)) AS cause_description,
	IIF(UCase(RTrim(LTrim(a1.[COMM]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[COMM] IS NULL, '', UCase(RTrim(LTrim(a1.[COMM])))) AS commodity_description,
	IIF(UCase(RTrim(LTrim(a1.[CSYS]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[CSYS] IS NULL, '', UCase(RTrim(LTrim(a1.[CSYS])))) AS failure_system,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a1.[ORGLK]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[ORGLK] IS NULL, '', UCase(RTrim(LTrim(a1.[ORGLK])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a1.[ORGLO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[ORGLO] IS NULL, '', UCase(RTrim(LTrim(a1.[ORGLO]))))
	)) AS failure_part,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a1.[GRND]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a1.[GRND] IS NULL, '', UCase(RTrim(LTrim(a1.[GRND])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a1.[OFFSHORE]))) = 'YES', 'OFFSHORE', '')
	)) AS ground_code,
	IIF(UCase(RTrim(LTrim(a1.[FIRE]))) = 'YES', 'YES', 'NO') AS ignition_result,
	IIF(UCase(RTrim(LTrim(a1.[EXP]))) = 'YES', 'YES', 'NO') AS explosion_result,
	IIF(IsNumeric(a1.[LOSS]), ABS(a1.[LOSS]), 0) AS loss_volume,
	'BARRELS' AS loss_units,
	IIF(IsNumeric(a1.[EFAT]), ABS(a1.[EFAT]), 0) +
	IIF(IsNumeric(a1.[NFAT]), ABS(a1.[NFAT]), 0) AS human_fatalities,
	IIF(IsNumeric(a1.[EINJ]), ABS(a1.[EINJ]), 0) +
	IIF(IsNumeric(a1.[NINJ]), ABS(a1.[NINJ]), 0) AS human_injuries,
	IIF(IsNumeric(a1.[PRPTY]), ABS(a1.[PRPTY]), 0) AS total_cost,
	'' AS environmental_impact
FROM
	['1985-2002$'] AS a1
UNION ALL
SELECT
	'2002 to 2010' AS source_description,
	a2.[RPTID] AS unique_identifier,
	a2.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a2.[NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[NAME] IS NULL, '', UCase(RTrim(LTrim(a2.[NAME])))) AS operator_name,
	a2.[IDATE] + ' ' + FORMAT(IIF(a2.[IHOUR] < 2400, a2.[IHOUR], 0), '00:00') AS accident_timestamp,
	IIF(UCase(RTrim(LTrim(a2.[ACSTATE]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[ACSTATE] IS NULL, '', UCase(RTrim(LTrim(a2.[ACSTATE])))) AS accident_state,
	IIF(UCase(RTrim(LTrim(a2.[ACCOUNTY]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[ACCOUNTY] IS NULL, '', UCase(RTrim(LTrim(a2.[ACCOUNTY])))) AS accident_county,
	IIF(UCase(RTrim(LTrim(a2.[ACCITY]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[ACCITY] IS NULL, '', UCase(RTrim(LTrim(a2.[ACCITY])))) AS accident_city,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a2.[GEN_CAUSE_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[GEN_CAUSE_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[GEN_CAUSE_TXT])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[CAUSE_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[CAUSE_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[CAUSE_TXT]))))
	)) AS cause_description,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a2.[COMM]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[COMM] IS NULL, '', UCase(RTrim(LTrim(a2.[COMM])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[CLASS_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[CLASS_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[CLASS_TXT]))))
	)) AS commodity_description,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a2.[SYSPRT_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[SYSPRT_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[SYSPRT_TXT])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[SYSPRTO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[SYSPRTO] IS NULL, '', UCase(RTrim(LTrim(a2.[SYSPRTO]))))
	)) AS failure_system,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a2.[FAIL_OC_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[FAIL_OC_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[FAIL_OC_TXT])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[FAIL_OCO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[FAIL_OCO] IS NULL, '', UCase(RTrim(LTrim(a2.[FAIL_OCO]))))
	)) AS failure_part,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a2.[LOCLK_TXT]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[LOCLK_TXT] IS NULL, '', UCase(RTrim(LTrim(a2.[LOCLK_TXT])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[LOCLKO]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a2.[LOCLKO] IS NULL, '', UCase(RTrim(LTrim(a2.[LOCLKO])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a2.[OFFSHORE]))) = 'YES', 'OFFSHORE', '')
	)) AS ground_code,
	IIF(UCase(RTrim(LTrim(a2.[IGNITE]))) = 'YES', 'YES', 'NO') AS ignition_result,
	IIF(UCase(RTrim(LTrim(a2.[EXPLO]))) = 'YES', 'YES', 'NO') AS explosion_result,
	IIF(IsNumeric(a2.[LOSS]), ABS(a2.[LOSS]), 0) AS loss_volume,
	IIF(UCase(RTrim(LTrim(a2.[SPUNIT_TXT]))) = 'GALLONS', 'GALLONS', 'BARRELS') AS loss_units,
	IIF(IsNumeric(a2.[EFAT]), ABS(a2.[EFAT]), 0) +
	IIF(IsNumeric(a2.[NFAT]), ABS(a2.[NFAT]), 0) +
	IIF(IsNumeric(a2.[GPFAT]), ABS(a2.[GPFAT]), 0) AS human_fatalities,
	IIF(IsNumeric(a2.[EINJ]), ABS(a2.[EINJ]), 0) +
	IIF(IsNumeric(a2.[NINJ]), ABS(a2.[NINJ]), 0) +
	IIF(IsNumeric(a2.[GPINJ]), ABS(a2.[GPINJ]), 0) AS human_injuries,
	IIF(IsNumeric(a2.[PRPTY]), ABS(a2.[PRPTY]), 0) AS total_cost,
	IIF(UCase(RTrim(LTrim(a2.[FISH]))) = 'YES'
	OR UCase(RTrim(LTrim(a2.[BIRDS]))) = 'YES'
	OR UCase(RTrim(LTrim(a2.[TERRESTRIAL]))) = 'YES'
	OR UCase(RTrim(LTrim(a2.[SOIL]))) = 'YES'
	OR UCase(RTrim(LTrim(a2.[WATER]))) = 'YES',
	'YES', 'NO') AS environmental_impact
FROM
	['2002-2010$'] AS a2
UNION ALL
SELECT
	'2010 to Present' AS source_description,
	a3.[REPORT_NUMBER] AS unique_identifier,
	a3.[OPERATOR_ID] AS operator_identifier,
	IIF(UCase(RTrim(LTrim(a3.[NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[NAME] IS NULL, '', UCase(RTrim(LTrim(a3.[NAME])))) AS operator_name,
	a3.[LOCAL_DATETIME] AS accident_timestamp,
	IIF(UCase(RTrim(LTrim(a3.[ONSHORE_STATE_ABBREVIATION]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[ONSHORE_STATE_ABBREVIATION] IS NULL, 
	IIF(UCase(RTrim(LTrim(a3.[OFFSHORE_STATE_ABBREVIATION]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[OFFSHORE_STATE_ABBREVIATION] IS NULL, '',
	UCase(RTrim(LTrim(a3.[OFFSHORE_STATE_ABBREVIATION])))),
	UCase(RTrim(LTrim(a3.[ONSHORE_STATE_ABBREVIATION])))
	) AS accident_state,
	IIF(UCase(RTrim(LTrim(a3.[ONSHORE_COUNTY_NAME]))) IN ('', 'NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[ONSHORE_COUNTY_NAME] IS NULL, 
	IIF(UCase(RTrim(LTrim(a3.[OFFSHORE_COUNTY_NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[OFFSHORE_COUNTY_NAME] IS NULL, '',
	UCase(RTrim(LTrim(a3.[OFFSHORE_COUNTY_NAME])))),
	UCase(RTrim(LTrim(a3.[ONSHORE_COUNTY_NAME])))
	) AS accident_county,
	IIF(UCase(RTrim(LTrim(a3.[ONSHORE_CITY_NAME]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[ONSHORE_CITY_NAME] IS NULL, '', UCase(RTrim(LTrim(a3.[ONSHORE_CITY_NAME])))) AS accident_city,
	IIF(UCase(RTrim(LTrim(a3.[CAUSE]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[CAUSE] IS NULL, '', UCase(RTrim(LTrim(a3.[CAUSE])))) AS cause_description,
	IIF(UCase(RTrim(LTrim(a3.[COMMODITY_RELEASED_TYPE]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[COMMODITY_RELEASED_TYPE] IS NULL, '', UCase(RTrim(LTrim(a3.[COMMODITY_RELEASED_TYPE])))) AS commodity_description,
	IIF(UCase(RTrim(LTrim(a3.[SYSTEM_PART_INVOLVED]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[SYSTEM_PART_INVOLVED] IS NULL, '', UCase(RTrim(LTrim(a3.[SYSTEM_PART_INVOLVED])))) AS failure_system,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a3.[ITEM_INVOLVED]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[ITEM_INVOLVED] IS NULL, '', UCase(RTrim(LTrim(a3.[ITEM_INVOLVED])))) + ' ' +
	IIF(UCase(RTrim(LTrim(a3.[ITEM_INVOLVED_DETAILS]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[ITEM_INVOLVED_DETAILS] IS NULL, '', UCase(RTrim(LTrim(a3.[ITEM_INVOLVED_DETAILS]))))
	)) AS failure_part,
	RTrim(LTrim(
	IIF(UCase(RTrim(LTrim(a3.[INCIDENT_AREA_TYPE]))) IN ('NO DATA', 'NULL', 'XX', 'UNKNOWN', 'NONE GIVEN', 'NA', 'N/A', 'OTHER') OR a3.[INCIDENT_AREA_TYPE] IS NULL, '', UCase(RTrim(LTrim(a3.[INCIDENT_AREA_TYPE])))) + ' ' + 
	IIF(UCase(RTrim(LTrim(a3.[ON_OFF_SHORE]))) = 'OFFSHORE', 'OFFSHORE', '')
	)) AS ground_code,
	IIF(UCase(RTrim(LTrim(a3.[IGNITE_IND]))) = 'YES', 'YES', 'NO') AS ignition_result,
	IIF(UCase(RTrim(LTrim(a3.[EXPLODE_IND]))) = 'YES', 'YES', 'NO') AS explosion_result,
	IIF(IsNumeric(a3.[UNINTENTIONAL_RELEASE_BBLS]), ABS(a3.[UNINTENTIONAL_RELEASE_BBLS]), 0) +
	IIF(IsNumeric(a3.[INTENTIONAL_RELEASE_BBLS]), ABS(a3.[INTENTIONAL_RELEASE_BBLS]), 0) AS loss_volume,
	'BARRELS' AS loss_units,
	IIF(IsNumeric(a3.[NUM_EMP_FATALITIES]), ABS(a3.[NUM_EMP_FATALITIES]), 0) +
	IIF(IsNumeric(a3.[NUM_CONTR_FATALITIES]), ABS(a3.[NUM_CONTR_FATALITIES]), 0) +
	IIF(IsNumeric(a3.[NUM_ER_FATALITIES]), ABS(a3.[NUM_ER_FATALITIES]), 0) +
	IIF(IsNumeric(a3.[NUM_WORKER_FATALITIES]), ABS(a3.[NUM_WORKER_FATALITIES]), 0) +
	IIF(IsNumeric(a3.[NUM_GP_FATALITIES]), ABS(a3.[NUM_GP_FATALITIES]), 0) AS human_fatalities,
	IIF(IsNumeric(a3.[NUM_EMP_INJURIES]), ABS(a3.[NUM_EMP_INJURIES]), 0) +
	IIF(IsNumeric(a3.[NUM_CONTR_INJURIES]), ABS(a3.[NUM_CONTR_INJURIES]), 0) +
	IIF(IsNumeric(a3.[NUM_ER_INJURIES]), ABS(a3.[NUM_ER_INJURIES]), 0) +
	IIF(IsNumeric(a3.[NUM_WORKER_INJURIES]), ABS(a3.[NUM_WORKER_INJURIES]), 0) +
	IIF(IsNumeric(a3.[NUM_GP_INJURIES]), ABS(a3.[NUM_GP_INJURIES]), 0) AS human_injuries,
	IIF(IsNumeric(a3.[PRPTY]), ABS(a3.[PRPTY]), 0) AS total_cost,
	IIF(UCase(RTrim(LTrim(a3.[WILDLIFE_IMPACT_IND]))) = 'YES'
	OR UCase(RTrim(LTrim(a3.[SOIL_CONTAMINATION]))) = 'YES'
	OR UCase(RTrim(LTrim(a3.[WATER_CONTAM_IND]))) = 'YES',
	'YES', 'NO') AS environmental_impact
FROM
	['2010-9999$'] AS a3