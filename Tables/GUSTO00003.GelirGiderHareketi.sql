CREATE TABLE [GUSTO00003].[GelirGiderHareketi] (
  [GelirGiderHareketi_rowid] [int] IDENTITY,
  [pButceKodu] [int] NULL DEFAULT (0),
  [pGelirGiderYeriKodu] [int] NULL DEFAULT (0),
  [pGelirGiderTuruKodu] [int] NULL DEFAULT (0),
  [nModulNumarasi] [int] NULL DEFAULT (0),
  [pHareketID] [int] NULL DEFAULT (0),
  [pSatirHareketID] [int] NULL DEFAULT (0),
  [cGelirGiderSekli] [char](1) NULL DEFAULT (' '),
  [ldGelirGiderTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldGelirGiderYeriDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirGiderTuruDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [sSatirAciklama] [varchar](250) NULL DEFAULT (''),
  [dtHareketTarihi] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nMaliyetIsareti] [tinyint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelirGiderHareketi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketKey]
  ON [GUSTO00003].[GelirGiderHareketi] ([pHareketID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pButceKodu]
  ON [GUSTO00003].[GelirGiderHareketi] ([pButceKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00003].[GelirGiderHareketi] ([dtHareketTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TurTarihKey]
  ON [GUSTO00003].[GelirGiderHareketi] ([pGelirGiderTuruKodu], [dtHareketTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YerTarihKey]
  ON [GUSTO00003].[GelirGiderHareketi] ([pGelirGiderYeriKodu], [dtHareketTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO