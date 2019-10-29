CREATE TABLE [GUSTO00004].[StandartMaliyetBaslik] (
  [StandartMaliyetBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](50) NULL DEFAULT (''),
  [lNo] [smallint] NULL DEFAULT (0),
  [dtHesaplamaTarihi] [smalldatetime] NULL,
  [dtBasTarih] [smalldatetime] NULL,
  [dtBitTarih] [smalldatetime] NULL,
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldKurDegeri] [decimal](22, 2) NULL DEFAULT (0),
  [pDonem] [int] NULL DEFAULT (0),
  [lGruplamaTuru] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StandartMaliyetBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [StandartMaliyetKey]
  ON [GUSTO00004].[StandartMaliyetBaslik] ([lNo], [dtHesaplamaTarihi], [dtBasTarih], [dtBitTarih], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO