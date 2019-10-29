CREATE TABLE [GUSTO00001].[StokHarIzlmSablon] (
  [StokHarIzlmSablon_rowid] [int] IDENTITY,
  [sSablonAdi] [varchar](50) NOT NULL DEFAULT (''),
  [cSablonTuru] [char](1) NULL DEFAULT ('A'),
  [bSablonSabit] [bit] NULL DEFAULT (0),
  [blobObject] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([StokHarIzlmSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO