CREATE TABLE [GUSTO00005].[ProjeFormulSatir] (
  [ProjeFormulSatir_rowid] [int] IDENTITY,
  [pProjeSablon] [int] NULL DEFAULT (0),
  [pFormulTanim] [int] NULL DEFAULT (0),
  [cFormulTuru] [char](1) NULL DEFAULT ('0'),
  [sFormulAdi] [varchar](50) NULL DEFAULT (''),
  [nSatirSira] [smallint] NULL DEFAULT (0),
  [nSatirTuru] [tinyint] NULL DEFAULT (0),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [pDegisken] [int] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 6) NULL DEFAULT (0),
  [sFonksiyon] [varchar](50) NULL DEFAULT (''),
  [sFonksiyonDeger] [varchar](200) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeFormulSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pProjeSablon]
  ON [GUSTO00005].[ProjeFormulSatir] ([pProjeSablon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TanimKey]
  ON [GUSTO00005].[ProjeFormulSatir] ([pFormulTanim], [cFormulTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO