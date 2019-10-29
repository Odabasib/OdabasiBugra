CREATE TABLE [GUSTO00003].[HesapCerceveDetay] (
  [HesapCerceveDetay_rowid] [int] IDENTITY,
  [Aciklama] [varchar](2048) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([HesapCerceveDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO