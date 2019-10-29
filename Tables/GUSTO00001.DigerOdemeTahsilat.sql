CREATE TABLE [GUSTO00001].[DigerOdemeTahsilat] (
  [DigerOdemeTahsilat_rowid] [int] IDENTITY,
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [pHareket] [int] NULL DEFAULT (0),
  [dtOdemeTarihi] [smalldatetime] NULL,
  [nSira] [smallint] NULL DEFAULT (0),
  [cOdemeTahsilat] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKalanTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldDovizKalanTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [cKapandi] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [cOdemeTuruKodu] [char](1) NULL DEFAULT (' '),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [sRefNo] [varchar](60) NULL DEFAULT (''),
  [cKarsiHesapTuru] [char](1) NULL DEFAULT (' '),
  [pKarsiHesap] [int] NULL DEFAULT (0),
  [bKDBS] [bit] NULL DEFAULT (0),
  [bTeminatMektubu] [bit] NULL DEFAULT (0),
  [pBankaSubesi] [int] NULL DEFAULT (0),
  [sBankaHesapNo] [varchar](20) NULL DEFAULT (''),
  [sKaynakTuru] [varchar](2) NULL DEFAULT (''),
  [pKaynakOdemePlani] [int] NULL DEFAULT (0),
  [pKaynakHareket] [int] NULL DEFAULT (0),
  [sBaglantiliHareketTuru] [varchar](2) NULL DEFAULT (''),
  [pBaglantiliHareketSatiri] [int] NULL DEFAULT (0),
  [pBeklenenOdTahBaslik] [int] NULL DEFAULT (0),
  [cDurum] [char](1) NULL DEFAULT ('A'),
  [sIBAN] [varchar](50) NULL DEFAULT (''),
  [pGuncelleyenIslem] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DigerOdemeTahsilat_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariTurTarihKey]
  ON [GUSTO00001].[DigerOdemeTahsilat] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [INDX_DIGERO_001]
  ON [GUSTO00001].[DigerOdemeTahsilat] ([pKaynakOdemePlani], [sKaynakTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TurSeriNoKey]
  ON [GUSTO00001].[DigerOdemeTahsilat] ([sKaynakTuru], [sSeri], [lNo], [pKaynakOdemePlani])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TurTarihKey]
  ON [GUSTO00001].[DigerOdemeTahsilat] ([dtOdemeTarihi], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO