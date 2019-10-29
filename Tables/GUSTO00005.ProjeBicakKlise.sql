CREATE TABLE [GUSTO00005].[ProjeBicakKlise] (
  [ProjeBicakKlise_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nBicakKlise] [smallint] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldAdet] [decimal](22, 2) NULL DEFAULT (0),
  [ldEn] [decimal](22, 2) NULL DEFAULT (0),
  [ldBoy] [decimal](22, 2) NULL DEFAULT (0),
  [ldKalinlik] [decimal](22, 2) NULL DEFAULT (0),
  [ldMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeBicakKlise_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO