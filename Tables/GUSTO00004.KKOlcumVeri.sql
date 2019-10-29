CREATE TABLE [GUSTO00004].[KKOlcumVeri] (
  [KKOlcumVeri_rowid] [int] IDENTITY,
  [pKKOlcumVeriBaslik] [int] NULL DEFAULT (0),
  [pOlcenPersonel] [int] NULL DEFAULT (0),
  [nSiraNo] [smallint] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [tmBaslangic] [int] NULL DEFAULT (0),
  [tmBitis] [int] NULL DEFAULT (0),
  [ldOlcumOrtalama] [decimal](22, 2) NULL DEFAULT (0),
  [ldOlcumStdSapma] [decimal](22, 2) NULL DEFAULT (0),
  [ldOlcumRange] [decimal](22, 2) NULL DEFAULT (0),
  [pOlcumCihazi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKOlcumVeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OlcumVeriBaslikSiraNo]
  ON [GUSTO00004].[KKOlcumVeri] ([pKKOlcumVeriBaslik], [nSiraNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKKOlcumVeriBaslik]
  ON [GUSTO00004].[KKOlcumVeri] ([pKKOlcumVeriBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pOlcenPersonel]
  ON [GUSTO00004].[KKOlcumVeri] ([pOlcenPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO