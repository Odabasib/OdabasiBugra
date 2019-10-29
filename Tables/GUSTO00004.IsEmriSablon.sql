CREATE TABLE [GUSTO00004].[IsEmriSablon] (
  [IsEmriSablon_rowid] [int] IDENTITY,
  [sKod] [varchar](40) NULL DEFAULT (''),
  [sAciklama] [varchar](80) NULL DEFAULT (''),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pImage] [int] NOT NULL DEFAULT (0),
  [pObject] [image] NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO