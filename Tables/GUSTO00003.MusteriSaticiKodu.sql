CREATE TABLE [GUSTO00003].[MusteriSaticiKodu] (
  [MusteriSaticiKodu_rowid] [int] IDENTITY,
  [bAktif] [char](1) NULL DEFAULT ('1'),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](100) NULL DEFAULT (''),
  [sKisaAdi] [varchar](100) NULL DEFAULT (''),
  [pMusteriSaticiDetayi] [int] NULL DEFAULT (0),
  [pUstKod] [int] NULL DEFAULT (0),
  [nChildCount] [int] NULL DEFAULT (0),
  [bPasifMi] [bit] NULL DEFAULT (0),
  [pGrupKodu] [int] NULL DEFAULT (0),
  [bBayiMi] [bit] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bEFaturaCarisi] [smallint] NULL DEFAULT (0),
  [nEIrsaliyeCarisi] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MusteriSaticiKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MSAdKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MSBayiKodKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MSGrupKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([pGrupKodu], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [MSKodKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([sKod], [bAktif], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MSUstKodAdKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([pUstKod], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [MSUstKodKodKey]
  ON [GUSTO00003].[MusteriSaticiKodu] ([pUstKod], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO