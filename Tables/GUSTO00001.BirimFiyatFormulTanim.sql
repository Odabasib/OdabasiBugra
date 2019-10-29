CREATE TABLE [GUSTO00001].[BirimFiyatFormulTanim] (
  [BirimFiyatFormulTanim_rowid] [int] IDENTITY,
  [nModulNo] [tinyint] NOT NULL DEFAULT (0),
  [sFormulAdi] [varchar](50) NULL DEFAULT (''),
  [nSatirSira] [tinyint] NOT NULL DEFAULT (0),
  [nSatirTuru] [tinyint] NOT NULL DEFAULT (0),
  [cIslem] [char](1) NULL DEFAULT (' '),
  [pDegisken] [int] NULL DEFAULT (0),
  [ldSabitDeger] [decimal](22, 6) NULL DEFAULT (0),
  [sFonksiyon] [varchar](50) NULL DEFAULT (''),
  [sFonksiyonDeger] [varchar](400) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sParametre] [varchar](50) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([BirimFiyatFormulTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FormulTurAd]
  ON [GUSTO00001].[BirimFiyatFormulTanim] ([nModulNo], [sFormulAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO