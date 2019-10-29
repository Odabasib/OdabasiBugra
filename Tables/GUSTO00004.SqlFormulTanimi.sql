CREATE TABLE [GUSTO00004].[SqlFormulTanimi] (
  [SqlFormulTanimi_rowid] [int] IDENTITY,
  [nModul] [smallint] NULL DEFAULT (0),
  [sFormulAdi] [varchar](40) NULL DEFAULT (''),
  [nResultType] [smallint] NULL DEFAULT (0),
  [cAsagiYukariBucuklu] [char](1) NULL DEFAULT (' '),
  [nYuvarlamaHassasiyeti] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pStokKodu] [int] NULL DEFAULT (0),
  [nBirim] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SqlFormulTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [ModulAd]
  ON [GUSTO00004].[SqlFormulTanimi] ([nModul], [sFormulAdi], [pStokKodu], [nBirim], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO