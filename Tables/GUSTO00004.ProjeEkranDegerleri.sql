CREATE TABLE [GUSTO00004].[ProjeEkranDegerleri] (
  [ProjeEkranDegerleri_rowid] [int] IDENTITY,
  [sSablonAdi] [varchar](50) NULL DEFAULT (''),
  [sDegerlerIC] [varchar](250) NULL DEFAULT (''),
  [sDegerlerKAPAK] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeEkranDegerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO