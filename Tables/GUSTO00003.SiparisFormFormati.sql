CREATE TABLE [GUSTO00003].[SiparisFormFormati] (
  [SiparisFormFormati_rowid] [int] IDENTITY,
  [sKod] [varchar](10) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sDosyaAdi] [varchar](255) NULL DEFAULT (''),
  [nAlanAyirmaSekli] [smallint] NULL DEFAULT (0),
  [cAlanAyiracKarakteri] [char](1) NULL DEFAULT (' '),
  [nSatirSonuAyiraci] [smallint] NULL DEFAULT (0),
  [nFormTuru] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisFormFormati_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKod]
  ON [GUSTO00003].[SiparisFormFormati] ([sKod], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO