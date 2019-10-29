CREATE TABLE [GUSTO00004].[UretimFormulKosullari] (
  [UretimFormulKosullari_rowid] [int] IDENTITY,
  [pUretimFormul] [int] NULL DEFAULT (0),
  [sKosul] [varchar](499) NULL DEFAULT (''),
  [sSonuc] [varchar](499) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([UretimFormulKosullari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO