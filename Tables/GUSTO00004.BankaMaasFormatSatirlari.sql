CREATE TABLE [GUSTO00004].[BankaMaasFormatSatirlari] (
  [BankaMaasFormatSatirlari_rowid] [int] IDENTITY,
  [pBankaMaasFormati] [int] NOT NULL DEFAULT (0),
  [nBaslikSatirAltlik] [smallint] NOT NULL DEFAULT (0),
  [nSiraNo] [smallint] NOT NULL DEFAULT (0),
  [nDegiskenTipi] [smallint] NULL DEFAULT (0),
  [bSabitMi] [bit] NULL DEFAULT (0),
  [sSabitMetin] [varchar](60) NULL DEFAULT (''),
  [nGenislik] [smallint] NULL DEFAULT (0),
  [nHiza] [smallint] NULL DEFAULT (0),
  [cKarakter] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaMaasFormatSatirlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BankaGrupSiraKey]
  ON [GUSTO00004].[BankaMaasFormatSatirlari] ([pBankaMaasFormati], [nBaslikSatirAltlik], [nSiraNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO