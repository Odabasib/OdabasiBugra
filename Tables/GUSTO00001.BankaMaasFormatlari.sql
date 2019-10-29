CREATE TABLE [GUSTO00001].[BankaMaasFormatlari] (
  [BankaMaasFormatlari_rowid] [int] IDENTITY,
  [sKod] [varchar](10) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](255) NULL DEFAULT (''),
  [nAlanAyirmaSekli] [smallint] NULL DEFAULT (0),
  [cAlanAyiracKarakteri] [char](1) NULL DEFAULT (' '),
  [nSatirSonuAyiraci] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaMaasFormatlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BS_cTur_sKodKey]
  ON [GUSTO00001].[BankaMaasFormatlari] ([cTur], [sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO