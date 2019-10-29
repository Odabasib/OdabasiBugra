CREATE TABLE [GUSTO00003].[SozlesmeFaturaBaglanti] (
  [SozlesmeFaturaBaglanti_rowid] [int] IDENTITY,
  [pSozlesmeKosul] [int] NULL DEFAULT (0),
  [pFatura] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SozlesmeFaturaBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO