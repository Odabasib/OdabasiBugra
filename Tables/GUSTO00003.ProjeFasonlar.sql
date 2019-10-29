CREATE TABLE [GUSTO00003].[ProjeFasonlar] (
  [ProjeFasonlar_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 2) NULL DEFAULT (0),
  [ldFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [pSiparis] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeFasonlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO