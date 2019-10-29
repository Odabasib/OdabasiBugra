CREATE TABLE [GUSTO00003].[SoruBankasi] (
  [SoruBankasi_rowid] [int] IDENTITY,
  [sSoruKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sSoruAciklamasi] [varchar](1000) NULL DEFAULT (''),
  [bDigerCevapVerebilirMi] [bit] NULL DEFAULT (0),
  [bBirdenCokSecenek] [bit] NULL DEFAULT (0),
  [cAnketTuru] [char](1) NOT NULL DEFAULT ('P'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SoruBankasi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sSoruKodu]
  ON [GUSTO00003].[SoruBankasi] ([sSoruKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO