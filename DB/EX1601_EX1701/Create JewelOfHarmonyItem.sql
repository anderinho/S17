/****** Object:  Table [dbo].[JewelOfHarmonyItem]    Script Date: 07/02/2022 14:33:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[JewelOfHarmonyItem](
	[Name] [varchar](10) NOT NULL,
	[Type] [int] NOT NULL,
	[ItemSerial] [int] NOT NULL,
	[OptionIndex1] [int] NOT NULL,
	[OptionValue1] [int] NOT NULL,
	[OptionIndex2] [int] NOT NULL,
	[OptionValue2] [int] NOT NULL,
	[OptionIndex3] [int] NOT NULL,
	[OptionValue3] [int] NOT NULL,
	[OptionBonus1] [int] NOT NULL,
 CONSTRAINT [PK_JewelOfHarmonyItem] PRIMARY KEY CLUSTERED 
(
	[Name] ASC,
	[Type] ASC,
	[ItemSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO