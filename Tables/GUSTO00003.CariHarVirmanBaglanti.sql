CREATE TABLE [GUSTO00003].[CariHarVirmanBaglanti] (
  [CariHarVirmanBaglanti_rowid] [int] IDENTITY,
  [pCariHareket] [int] NOT NULL DEFAULT (0),
  [pGenelVirman] [int] NULL DEFAULT (0),
  [pSube] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [cBorcAlacak] [char](1) NOT NULL DEFAULT ('A'),
  [cCariTuru] [char](1) NULL DEFAULT ('C'),
  PRIMARY KEY CLUSTERED ([CariHarVirmanBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO