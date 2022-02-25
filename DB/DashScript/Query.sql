CREATE TABLE [dbo].[Greed_DashRanking] (
[Name] varchar(10) NOT NULL ,
[Kills] int NOT NULL DEFAULT ((0)) ,
[Death] int NOT NULL DEFAULT ((0)) ,
[Timer] int NOT NULL DEFAULT ((0)) ,
[Type] varchar(10) NOT NULL
)

GO

CREATE Procedure [dbo].[G_DashRanking] 
@Name varchar(10),
@Kills int,
@Death int,
@Timer int,
@Type varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

IF NOT EXISTS (SELECT 1 FROM Greed_DashRanking WHERE Name=@Name and [Type]=@Type)
BEGIN

	INSERT INTO Greed_DashRanking (Name,Kills,Death,Timer,[Type]) VALUES (@Name,@Kills,@Death,@Timer,@Type)

END
ELSE
BEGIN

	UPDATE Greed_DashRanking SET Kills=Kills+@Kills, Death=Death+@Death, Timer=@Timer WHERE Name=@Name and [Type]=@Type

END

SET NOCOUNT OFF
SET XACT_ABORT OFF

END