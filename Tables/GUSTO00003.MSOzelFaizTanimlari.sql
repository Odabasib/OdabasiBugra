CREATE TABLE [GUSTO00003].[MSOzelFaizTanimlari] (
  [MSOzelFaizTanimlari_rowid] [int] IDENTITY,
  [pMusteriSaticiDetayi] [int] NOT NULL DEFAULT (0),
  [nBaslamaDegeri] [int] NULL DEFAULT (0),
  [nBitisDegeri] [int] NULL DEFAULT (0),
  [ldFaizOrani] [decimal](22, 2) NULL DEFAULT (0),
  [cBorcAlacak] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([MSOzelFaizTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO