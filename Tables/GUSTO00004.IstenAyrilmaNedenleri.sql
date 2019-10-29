CREATE TABLE [GUSTO00004].[IstenAyrilmaNedenleri] (
  [IstenAyrilmaNedenleri_rowid] [int] IDENTITY,
  [cTur] [char](1) NULL DEFAULT (' '),
  [sNedenKodu] [varchar](50) NULL DEFAULT (''),
  [sNedenAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IstenAyrilmaNedenleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO