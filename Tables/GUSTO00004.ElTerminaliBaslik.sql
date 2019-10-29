CREATE TABLE [GUSTO00004].[ElTerminaliBaslik] (
  [ElTerminaliBaslik_rowid] [int] IDENTITY,
  [nAktarimTipi] [int] NOT NULL DEFAULT (0),
  [nAlanAyiracTipi] [int] NULL DEFAULT (0),
  [nAlanAyiracKarakteri] [int] NULL DEFAULT (0),
  [nSatirSonuAyiraci] [int] NULL DEFAULT (0),
  [nBaslikDetayBicimi] [int] NULL DEFAULT (0),
  [nDosyaSecim] [int] NULL DEFAULT (0),
  [pDosyaAdi] [int] NULL DEFAULT (0),
  [pDuzenleyenPersonel] [int] NULL DEFAULT (0),
  [sDosyaAdi] [varchar](80) NULL DEFAULT (''),
  [sDosyaYolu] [varchar](80) NULL DEFAULT (''),
  [sDosyaUzantisi] [varchar](3) NULL DEFAULT (''),
  [cBaslikImleci] [char](1) NULL DEFAULT (' '),
  [cDetayImleci] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturmaTarihi] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirmeTarihi] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ElTerminaliBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO