CREATE TABLE [GUSTO00003].[EDIAktarimSatir] (
  [EDIAktarimSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [pIslem] [int] NULL DEFAULT (0),
  [sAlan1] [varchar](255) NULL DEFAULT (''),
  [sAlan2] [varchar](255) NULL DEFAULT (''),
  [sAlan3] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EDIAktarimSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AktarimBaslik]
  ON [GUSTO00003].[EDIAktarimSatir] ([pBaslik], [pIslem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO