CREATE TABLE [GUSTO00003].[OlayMesajlari] (
  [OlayMesajlari_rowid] [int] IDENTITY,
  [bSistemOlayi] [bit] NULL DEFAULT (0),
  [pOlayTanimi] [int] NOT NULL DEFAULT (0),
  [dtMesaj] [smalldatetime] NULL,
  [tmMesaj] [int] NULL DEFAULT (0),
  [sKonu] [varchar](255) NULL DEFAULT (''),
  [sMesaj] [varchar](255) NULL DEFAULT (''),
  [pKullanici] [int] NULL DEFAULT (0),
  [pGrup] [int] NULL DEFAULT (0),
  [bOkundu] [bit] NULL DEFAULT (0),
  [pOlayDetayi] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OlayMesajlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [KullaniciGrup]
  ON [GUSTO00003].[OlayMesajlari] ([pKullanici], [pGrup])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO