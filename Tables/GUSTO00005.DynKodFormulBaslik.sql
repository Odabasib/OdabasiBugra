CREATE TABLE [GUSTO00005].[DynKodFormulBaslik] (
  [DynKodFormulBaslik_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [sAdi] [varchar](24) NULL DEFAULT (''),
  [sAciklama] [varchar](249) NULL DEFAULT (''),
  [bKod] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DynKodFormulBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DynKodFormulBaslik]
  ON [GUSTO00005].[DynKodFormulBaslik] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO