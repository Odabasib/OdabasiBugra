CREATE TABLE [GUSTO00005].[FormulGerceklesenDeger] (
  [FormulGerceklesenDeger_rowid] [int] IDENTITY,
  [pStokHareket] [int] NOT NULL DEFAULT (0),
  [pFormul] [int] NOT NULL DEFAULT (0),
  [pDegisken] [int] NOT NULL DEFAULT (0),
  [ldDeger] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FormulGerceklesenDeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StokHarFormulDeg]
  ON [GUSTO00005].[FormulGerceklesenDeger] ([pStokHareket], [pFormul], [pDegisken])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO