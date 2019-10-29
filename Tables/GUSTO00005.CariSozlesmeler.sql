CREATE TABLE [GUSTO00005].[CariSozlesmeler] (
  [CariSozlesmeler_rowid] [int] IDENTITY,
  [pCariKodu] [int] NULL DEFAULT (0),
  [cSozlesmeTuru] [char](1) NULL DEFAULT (' '),
  [sSozlesmeKodu] [varchar](49) NULL DEFAULT (''),
  [sSozlesmeAdi] [varchar](60) NULL DEFAULT (''),
  [dtSozlesmeTarihi] [smalldatetime] NULL,
  [dtBaslangicTarihi] [smalldatetime] NULL,
  [dtBitisTarihi] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [ldSozlesmeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT ('1'),
  [ldKontrolMiktari] [decimal](22, 2) NULL DEFAULT (0),
  [cTutarKontrolSekli] [char](1) NULL DEFAULT (' '),
  [cMiktarKontrolSekli] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CariSozlesmeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariSozlesme]
  ON [GUSTO00005].[CariSozlesmeler] ([pCariKodu], [dtSozlesmeTarihi], [dtBaslangicTarihi], [dtBitisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO