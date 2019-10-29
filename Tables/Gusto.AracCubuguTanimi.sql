CREATE TABLE [Gusto].[AracCubuguTanimi] (
  [AracCubuguTanimi_rowid] [int] IDENTITY,
  [sToolAdi] [varchar](50) NULL DEFAULT (''),
  [sToolAciklama] [varchar](255) NULL DEFAULT (''),
  [nSira] [int] NOT NULL DEFAULT (0),
  [nMenuId] [int] NOT NULL DEFAULT (0),
  [sCalismaDizini] [varchar](200) NULL DEFAULT (''),
  [sCalisacakProgramAdi] [varchar](50) NULL DEFAULT (''),
  [sCalisacakProgramParam] [varchar](50) NULL DEFAULT (''),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AracCubuguTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KullaniciAracKey]
  ON [Gusto].[AracCubuguTanimi] ([pKullanici], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO