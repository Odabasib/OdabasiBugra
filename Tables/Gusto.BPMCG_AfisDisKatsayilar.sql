CREATE TABLE [Gusto].[BPMCG_AfisDisKatsayilar] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [sProfilKodu] [varchar](255) NULL DEFAULT (''),
  [sProfilAdi] [varchar](255) NULL DEFAULT (''),
  [ldGorunen] [decimal](22, 6) NULL DEFAULT (0),
  [ldDis] [decimal](22, 6) NULL DEFAULT (0),
  [ldProfilKesim] [decimal](22, 6) NULL DEFAULT (0),
  [pAltProfil] [int] NULL,
  [pYay] [int] NULL,
  [pKosebent] [int] NULL DEFAULT (0),
  [pAltGrup] [int] NULL,
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_AfisDisKatsayilar]
  ADD CONSTRAINT [BPMCG_AfisDisKatsayilarONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMKT_PROFILAFISDIS] ([ROWID]) ON DELETE CASCADE
GO