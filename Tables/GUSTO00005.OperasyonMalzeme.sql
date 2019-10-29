CREATE TABLE [GUSTO00005].[OperasyonMalzeme] (
  [OperasyonMalzeme_rowid] [int] IDENTITY,
  [pMalzeme] [int] NULL DEFAULT (0),
  [pRotaSatir] [int] NULL DEFAULT (0),
  [ldKullanimMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [nFireOranMiktar] [tinyint] NOT NULL DEFAULT (6),
  [ldFire] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldTopFireliKullanAdediBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldTopFireliKullanAdediBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldTopFireliKullanAdediBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [nFireYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [bFormulDegiskeni] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonMalzeme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [RotaMalzeme]
  ON [GUSTO00005].[OperasyonMalzeme] ([pRotaSatir], [pMalzeme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO