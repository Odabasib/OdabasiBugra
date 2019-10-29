CREATE TABLE [GUSTO00005].[GorevTanimlari] (
  [GorevTanimlari_rowid] [int] IDENTITY,
  [sGorevTanimKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sGorevTanimAdi] [varchar](60) NOT NULL DEFAULT (''),
  [pUnvanGrubu] [int] NULL DEFAULT (0),
  [sGorevTanimiUzunAciklama] [varchar](2048) NULL DEFAULT (''),
  [bDirektIndirekt] [bit] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [ldOBirimCalismaMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [pGiderTuru] [int] NULL DEFAULT (0),
  [pIsBasvuruSablonu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GorevTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGiderTuru]
  ON [GUSTO00005].[GorevTanimlari] ([pGiderTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUnvanGrubu]
  ON [GUSTO00005].[GorevTanimlari] ([pUnvanGrubu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [sGorevTanimAdi]
  ON [GUSTO00005].[GorevTanimlari] ([sGorevTanimAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sGorevTanimKodu]
  ON [GUSTO00005].[GorevTanimlari] ([sGorevTanimKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO