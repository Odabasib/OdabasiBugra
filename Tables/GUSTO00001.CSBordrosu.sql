CREATE TABLE [GUSTO00001].[CSBordrosu] (
  [CSBordrosu_rowid] [int] IDENTITY,
  [cBordroTuru] [char](1) NULL DEFAULT (' '),
  [cGirisCikis] [char](1) NULL DEFAULT (' '),
  [dtTarih] [smalldatetime] NULL,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lSeriNo] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  [cKarsiModul] [char](1) NULL DEFAULT (' '),
  [pKarsiKod] [int] NULL DEFAULT (0),
  [sHareketKodu] [varchar](3) NULL DEFAULT (''),
  [pSCKasaKodu] [int] NULL DEFAULT (0),
  [pSorumluPersonel] [int] NULL DEFAULT (0),
  [sKarsiHesapSorumluKisi] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CSBordrosu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KarsiHesapTarihKey]
  ON [GUSTO00001].[CSBordrosu] ([pKarsiKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaTarihKey]
  ON [GUSTO00001].[CSBordrosu] ([pSCKasaKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihSeriKey]
  ON [GUSTO00001].[CSBordrosu] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TurSeriKey]
  ON [GUSTO00001].[CSBordrosu] ([lSeriNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO