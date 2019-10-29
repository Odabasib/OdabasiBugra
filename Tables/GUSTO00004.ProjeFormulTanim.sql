CREATE TABLE [GUSTO00004].[ProjeFormulTanim] (
  [ProjeFormulTanim_rowid] [int] IDENTITY,
  [pProjeSablon] [int] NULL DEFAULT (0),
  [cTanimTuru] [char](1) NULL DEFAULT ('M'),
  [nSira] [smallint] NULL DEFAULT (0),
  [sFormulGrubu] [varchar](40) NULL DEFAULT (''),
  [sBaslangicKodu] [varchar](40) NULL DEFAULT (''),
  [sBitisKodu] [varchar](40) NULL DEFAULT (''),
  [sEsitlikTuru] [varchar](2) NULL DEFAULT ('0'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeFormulTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ProjeTur]
  ON [GUSTO00004].[ProjeFormulTanim] ([pProjeSablon], [cTanimTuru], [sFormulGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO