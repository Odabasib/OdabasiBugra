CREATE TABLE [Gusto].[MenuTanim] (
  [MenuTanim_rowid] [int] IDENTITY,
  [sMenuAdi] [varchar](50) NULL DEFAULT (''),
  [sMenuAciklama] [varchar](255) NULL DEFAULT (''),
  [nKisaYolTusu] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [pUstMenuId] [int] NULL DEFAULT (0),
  [nAltMenuItemSayisi] [int] NULL DEFAULT (0),
  [nMenuId] [int] NULL DEFAULT (0),
  [sCalismaDizini] [varchar](200) NULL DEFAULT (''),
  [sCalisacakProgramAdi] [varchar](50) NULL DEFAULT (''),
  [sCalisacakProgramParam] [varchar](50) NULL DEFAULT (''),
  [pKullanici] [int] NULL DEFAULT (0),
  [nPrivateToModul] [int] NULL DEFAULT (0),
  [nImage] [smallint] NULL DEFAULT (0),
  [nModulNo] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MenuTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [KullaniciMenuKey]
  ON [Gusto].[MenuTanim] ([pKullanici], [pUstMenuId], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ModulMenuKey]
  ON [Gusto].[MenuTanim] ([nPrivateToModul], [pKullanici], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO