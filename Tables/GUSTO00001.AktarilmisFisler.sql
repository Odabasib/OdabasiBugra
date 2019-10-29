CREATE TABLE [GUSTO00001].[AktarilmisFisler] (
  [AktarilmisFisler_rowid] [int] IDENTITY,
  [pHangiFirmadan] [int] NOT NULL DEFAULT (0),
  [pHangiFirmaya] [int] NOT NULL DEFAULT (0),
  [pFisNo] [int] NOT NULL DEFAULT (0),
  [pYeniFisNo] [int] NOT NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([AktarilmisFisler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO