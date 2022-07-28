CREATE TABLE [dbo].[Students] (
  [Id] [int] IDENTITY,
  [Name] [nvarchar](max) NOT NULL,
  CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO