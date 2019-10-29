CREATE TABLE [GUSTO00003].[IskontoTanimlariOranlari] (
  [IskontoTanimlariOranlari_rowid] [int] IDENTITY,
  [pIskontoTanimi] [int] NOT NULL DEFAULT (0),
  [nSira] [tinyint] NOT NULL DEFAULT (0),
  [ldIskontoOrani] [decimal](22, 2) NOT NULL DEFAULT (0),
  [cEtkiTuru] [char](1) NOT NULL DEFAULT (' '),
  [dtGecerlikBaslamaTarihi] [smalldatetime] NULL,
  [dtGecerlikBitisTarihi] [smalldatetime] NULL,
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IskontoTanimlariOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pIskontoTanimiSira]
  ON [GUSTO00003].[IskontoTanimlariOranlari] ([pIskontoTanimi], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO