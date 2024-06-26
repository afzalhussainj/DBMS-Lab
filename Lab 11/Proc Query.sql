USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[stpInsertInToRegion]    Script Date: 3/23/2024 8:41:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[stpInsertInToRegion]
	-- Add the parameters for the stored procedure here
    @RegionID int,
    @RegionDescription nchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Region (RegionID, RegionDescription)
	VALUES (@RegionID, @RegionDescription)
END
