SELECT TradeName, GenericMark FROM medicine
WHERE TradeName LIKE '%2.5$%' ESCAPE'$';