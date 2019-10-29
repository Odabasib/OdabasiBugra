CREATE TABLE [GUSTO00003].[CezaOdulTanimlari] (
  [CezaOdulTanimlari_rowid] [int] IDENTITY,
  [nDisiplinCezaOdul] [tinyint] NULL DEFAULT (0),
  [sKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sVerilmeNedeni] [varchar](250) NULL DEFAULT (''),
  [ldPuanDegeri] [decimal](22) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([CezaOdulTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [CezaOdulKodKey]
  ON [GUSTO00003].[CezaOdulTanimlari] ([nDisiplinCezaOdul], [sKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO