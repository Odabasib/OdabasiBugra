CREATE TABLE [Gusto].[MuhAciklamaSablon] (
  [MuhAciklamaSablon_rowid] [int] IDENTITY,
  [pFirma] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [nSatirTipi] [smallint] NOT NULL DEFAULT (0),
  [nSiraNo] [tinyint] NOT NULL DEFAULT (0),
  [bSabitMi] [bit] NOT NULL DEFAULT (0),
  [sSabitMetin] [varchar](60) NULL DEFAULT (''),
  [nDegiskenTipi] [tinyint] NOT NULL DEFAULT (0),
  [nMaxUzunluk] [tinyint] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MuhAciklamaSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TurKey]
  ON [Gusto].[MuhAciklamaSablon] ([pFirma], [nSiraNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO