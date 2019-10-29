CREATE TABLE [GUSTO00003].[UretimFormulTanimi] (
  [UretimFormulTanimi_rowid] [int] IDENTITY,
  [pUrunAgaci] [int] NULL DEFAULT (0),
  [pNesne] [int] NULL DEFAULT (0),
  [nNesneTuru] [int] NULL DEFAULT (0),
  [sFormulAdi] [varchar](499) NULL DEFAULT (''),
  [nEtkiTuru] [int] NULL DEFAULT (0),
  [pEtkiNesnesi] [int] NULL DEFAULT (0),
  [sFormul] [varchar](499) NULL DEFAULT (''),
  [sFormulSonuc] [varchar](499) NULL DEFAULT (''),
  [sVarsayilanSonuc] [varchar](499) NULL DEFAULT (''),
  [sAciklama] [varchar](499) NULL DEFAULT (''),
  [nIslemTuru] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UretimFormulTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO