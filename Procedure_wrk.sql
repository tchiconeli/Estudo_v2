USE [Udemy_DS_Training]
GO
/****** Object:  StoredProcedure [dbo].[SP_WRK_TRASACOES]    Script Date: 6/11/2019 10:27:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[SP_WRK_TRASACOES]

AS 
BEGIN
	

/**
--	APAGA A TABELA CASO EXISTA E A RECRIA.
**/

	DROP TABLE IF EXISTS WRK_TRANSACOES;

	CREATE TABLE WRK_TRANSACOES
	(
		ROWNUMBER		INT IDENTITY (1,1)
		,[Order_ID]		INT 
		,[Order_Date]	DATE
		,[Customer_ID]	varchar(100)
		,[Region]		SMALLINT
		,[Rep]			varchar(50)
		,[Item]			varchar(50)
		,[Units]		INT
		,[Unit_Price]	FLOAT
	)

/**
--	INSERCAO DOS DADOS NA TABELA WRK_TRANSACOES
**/


INSERT INTO [dbo].[WRK_TRANSACOES]
	(	[Order_ID]
        ,[Order_Date]
        ,[Customer_ID]
        ,[Region]
        ,[Rep]
        ,[Item]
        ,[Units]
        ,[Unit_Price]
	)
SELECT

		[Order ID]
      ,[Order Date]
      ,RIGHT('0000000'+[Customer ID],7) Customer_ID
      ,[Region]
      ,[Rep]
      ,[Item]
      ,[Units]
      ,[Unit Price]
FROM [dbo].[RAW_Transacoes_20190609]

END