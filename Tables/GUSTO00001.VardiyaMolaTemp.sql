CREATE TABLE [GUSTO00001].[VardiyaMolaTemp] (
  [VardiyaMolaTemp_rowid] [int] IDENTITY,
  [pVardiya] [int] NOT NULL,
  [dtBaslangic] [datetime] NOT NULL,
  [dtBitis] [datetime] NOT NULL,
  CONSTRAINT [PK_VardiyaMolaTemp] PRIMARY KEY CLUSTERED ([VardiyaMolaTemp_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO