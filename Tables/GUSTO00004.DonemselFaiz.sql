CREATE TABLE [GUSTO00004].[DonemselFaiz] (
  [DonemselFaiz_rowid] [int] IDENTITY,
  [pBanka] [int] NULL DEFAULT (0),
  [dtBaslangicTarihi] [smalldatetime] NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [ldOran] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DonemselFaiz_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO