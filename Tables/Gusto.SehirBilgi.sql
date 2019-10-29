CREATE TABLE [Gusto].[SehirBilgi] (
  [SehirBilgi_rowid] [int] IDENTITY,
  [pUlke] [int] NOT NULL DEFAULT (0),
  [sSehirAdi] [varchar](50) NULL DEFAULT (''),
  [sBolge] [varchar](50) NULL DEFAULT (''),
  [sAlanKodu] [varchar](10) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SehirBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SehirKey]
  ON [Gusto].[SehirBilgi] ([pUlke], [sSehirAdi], [sBolge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO