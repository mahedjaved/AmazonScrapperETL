CREATE TABLE [Customer] (
	[CustomerID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NameStyle] nvarchar(max) NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] nvarchar(max) NOT NULL,
	[MiddleName] nvarchar(max) NULL,
	[LastName] nvarchar(max) NOT NULL,
	[Suffix] [nvarchar]	(10) NULL,
	[CompanyName] [nvarchar](128) NULL,
	[SalesPerson] [nvarchar](256) NULL,
	[EmailAddress] [nvarchar] (50) NULL,
	[Phone] nvarchar(max) NULL,
	[PasswordHash] [varchar](128) NOT NULL,
	[PasswordSalt] [varchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,

CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 

CONSTRAINT [AK_Customer_rowguid] UNIQUE NONCLUSTERED
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY] )
GO

ALTER TABLE [Customer] ADD CONSTRAINT [DF_Customer_NameStyle] DEFAULT ((0)) FOR [NameStyle]
GO