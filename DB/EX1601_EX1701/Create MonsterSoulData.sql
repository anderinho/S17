/****** Object:  Table [dbo].[MonsterSoulData]    Script Date: 07/02/2022 14:33:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MonsterSoulData](
	[Name] [varchar](10) NOT NULL,
	[Type] [int] NOT NULL,
	[Time] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[ObjectiveList] [varbinary](32) NOT NULL,
 CONSTRAINT [PK_MonsterSoulData] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO