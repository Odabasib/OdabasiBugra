CREATE TABLE [GUSTO00004].[StandartMaliyetKriteri] (
  [StandartMaliyetKriteri_rowid] [int] IDENTITY,
  [nMaliyetTuru] [int] NULL DEFAULT (0),
  [sSablonAdi] [varchar](50) NULL DEFAULT (''),
  [nSecim] [smallint] NULL DEFAULT (0),
  [ldNumber1] [decimal](22, 2) NULL DEFAULT (0),
  [ldNumber2] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih1] [smalldatetime] NULL,
  [dtTarih2] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([StandartMaliyetKriteri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sSablonAdi]
  ON [GUSTO00004].[StandartMaliyetKriteri] ([sSablonAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO