CREATE TABLE [GUSTO00001].[T_MaliTabloDigerOdeme] (
  [T_MaliTabloDigerOdeme_Rowid] [int] IDENTITY,
  [ldTutar] [decimal](22, 6) NOT NULL,
  [pDigerHareket] [int] NULL,
  [pDonem] [int] NULL,
  [pMaliTabloKodu] [int] NULL,
  [bGuncelleme] [bit] NULL,
  PRIMARY KEY CLUSTERED ([T_MaliTabloDigerOdeme_Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO