CREATE TABLE [GUSTO00003].[SiparisFormSatirlari] (
  [SiparisFormSatirlari_rowid] [int] IDENTITY,
  [pSiparisFormFormati] [int] NOT NULL DEFAULT (0),
  [nBaslikSatirAltlik] [smallint] NOT NULL DEFAULT (0),
  [nSiraNo] [smallint] NOT NULL DEFAULT (0),
  [nDegiskenTipi] [smallint] NULL DEFAULT (0),
  [nTur] [int] NULL DEFAULT (0),
  [sSabitMetin] [varchar](60) NULL DEFAULT (''),
  [nGenislik] [smallint] NULL DEFAULT (0),
  [nHiza] [smallint] NULL DEFAULT (0),
  [cKarakter] [char](1) NULL DEFAULT (' '),
  [pHesapAdi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisFormSatirlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BankaGrupSiraKey]
  ON [GUSTO00003].[SiparisFormSatirlari] ([pSiparisFormFormati], [nBaslikSatirAltlik], [nSiraNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO