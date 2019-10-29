CREATE TABLE [GUSTO00001].[ProjeMalzemeler] (
  [ProjeMalzemeler_rowid] [int] IDENTITY,
  [pProje] [int] NOT NULL DEFAULT (0),
  [pProjeUrunler] [int] NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [ldKullanimAdediBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimAdediBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimAdediBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldKullanimOrani] [decimal](22, 6) NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nAltTur] [smallint] NULL DEFAULT (0),
  [ldMaliyet1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyet2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaliyet3] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeMalzemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pProje]
  ON [GUSTO00001].[ProjeMalzemeler] ([pProje], [pProjeUrunler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKodu]
  ON [GUSTO00001].[ProjeMalzemeler] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO