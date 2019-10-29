CREATE TABLE [GUSTO00004].[FormulTanimlari] (
  [FormulTanimlari_rowid] [int] IDENTITY,
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [cFormulTuru] [char](1) NOT NULL DEFAULT (' '),
  [sFormulAdi] [varchar](50) NULL DEFAULT (''),
  [nSatirSira] [tinyint] NOT NULL DEFAULT (0),
  [nSatirTuru] [tinyint] NOT NULL DEFAULT (0),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [pDegisken] [int] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 6) NULL DEFAULT (0),
  [sFonksiyon] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FormulTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FormulTurKodAd]
  ON [GUSTO00004].[FormulTanimlari] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO