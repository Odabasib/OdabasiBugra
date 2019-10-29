CREATE TABLE [GUSTO00004].[BankaSozlesmeler] (
  [BankaSozlesmeler_rowid] [int] IDENTITY,
  [pBankaHesabi] [int] NOT NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [cKrediTipi] [char](1) NOT NULL DEFAULT ('K'),
  [ldLimit] [decimal](22, 2) NULL DEFAULT (0),
  [dtSozlesme] [smalldatetime] NULL,
  [dtGecerlilikBitisi] [smalldatetime] NULL,
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldPesinKomisyonOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldKomisyon] [decimal](22, 6) NULL DEFAULT (0),
  [ldKomisyonTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaizOrani] [decimal](22, 6) NULL DEFAULT (0),
  [sFaizPeriyodu] [char](1) NULL DEFAULT (' '),
  [nFaizOzelDonem] [smallint] NULL DEFAULT (0),
  [ldDamgaVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBSMV] [decimal](22, 6) NULL DEFAULT (0),
  [ldKKDF] [decimal](22, 6) NULL DEFAULT (0),
  [ldGVK] [decimal](22, 6) NULL DEFAULT (0),
  [ldSSDF] [decimal](22, 6) NULL DEFAULT (0),
  [nYildakiGunSayisi] [smallint] NULL DEFAULT (0),
  [cFaizNetBrut] [char](1) NOT NULL DEFAULT (' '),
  [ldOzelIslemVergisi] [decimal](22, 2) NULL DEFAULT (0),
  [pCalismaTakvimi] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaSozlesmeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBankaHesabi]
  ON [GUSTO00004].[BankaSozlesmeler] ([pBankaHesabi], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO