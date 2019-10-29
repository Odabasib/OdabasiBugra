CREATE TABLE [GUSTO00003].[SSKDanMuafFormulHesabi] (
  [SSKDanMuafFormulHesabi_rowid] [int] IDENTITY,
  [pEkGelirTanimi] [int] NULL DEFAULT (0),
  [nUcretTipi] [tinyint] NULL DEFAULT (0),
  [ldSabitCarpan] [decimal](22, 2) NULL DEFAULT (0),
  [ldYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [nSureTipi] [tinyint] NULL DEFAULT (0),
  [nMuafiyetTuru] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SSKDanMuafFormulHesabi_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [pEkGelirTanimi]
  ON [GUSTO00003].[SSKDanMuafFormulHesabi] ([pEkGelirTanimi], [nMuafiyetTuru])
  ON [PRIMARY]
GO