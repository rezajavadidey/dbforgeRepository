CREATE TABLE [dbo].[StudentAddresses] (
  [StudentAddressId] [int] IDENTITY,
  [Address] [nvarchar](max) NOT NULL,
  [City] [nvarchar](max) NOT NULL,
  [State] [nvarchar](max) NOT NULL,
  [Country] [nvarchar](max) NOT NULL,
  [AddressOfStudentId] [int] NOT NULL,
  CONSTRAINT [PK_StudentAddresses] PRIMARY KEY CLUSTERED ([StudentAddressId])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_StudentAddresses_AddressOfStudentId]
  ON [dbo].[StudentAddresses] ([AddressOfStudentId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[StudentAddresses]
  ADD CONSTRAINT [FK_StudentAddresses_Students_AddressOfStudentId] FOREIGN KEY ([AddressOfStudentId]) REFERENCES [dbo].[Students] ([Id]) ON DELETE CASCADE
GO