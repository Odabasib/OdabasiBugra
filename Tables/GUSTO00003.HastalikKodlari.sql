CREATE TABLE [GUSTO00003].[HastalikKodlari] (
  [HastalikKodlari_rowid] [int] IDENTITY,
  [sHastalikKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sHastalikAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HastalikKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sHastalikKodu]
  ON [GUSTO00003].[HastalikKodlari] ([sHastalikKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO