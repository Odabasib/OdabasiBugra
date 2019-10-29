CREATE TABLE [GUSTO00003].[StdMlytEndGiderTanimlari] (
  [StdMlytEndGiderTanimlari_rowid] [int] IDENTITY,
  [sMaliyetAdi] [varchar](50) NULL DEFAULT (''),
  [sMaliyetAciklama] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StdMlytEndGiderTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO