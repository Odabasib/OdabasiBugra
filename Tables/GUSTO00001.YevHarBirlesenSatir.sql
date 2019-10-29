CREATE TABLE [GUSTO00001].[YevHarBirlesenSatir] (
  [YevHarBirlesenSatir_rowid] [int] IDENTITY,
  [pYevmiyeHareketi] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pKaynakHareketSatir] [int] NULL DEFAULT (0),
  [cBelgeTuru] [char](1) NULL DEFAULT (' '),
  [nHesapTipi] [smallint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YevHarBirlesenSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [YevHar_IslemID]
  ON [GUSTO00001].[YevHarBirlesenSatir] ([pYevmiyeHareketi], [pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO