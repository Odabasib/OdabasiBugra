CREATE TABLE [Gusto].[BPMCG_KALITESATIRLAR] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pKartMadde] [int] NULL DEFAULT (0),
  [ldOcak] [decimal](22, 6) NULL DEFAULT (0),
  [ldSubat] [decimal](22, 6) NULL DEFAULT (0),
  [ldMart] [decimal](22, 6) NULL DEFAULT (0),
  [ldNisan] [decimal](22, 6) NULL DEFAULT (0),
  [ldMayis] [decimal](22, 6) NULL DEFAULT (0),
  [ldHaziran] [decimal](22, 6) NULL DEFAULT (0),
  [ldTemmuz] [decimal](22, 6) NULL DEFAULT (0),
  [ldAgustos] [decimal](22, 6) NULL DEFAULT (0),
  [ldEylul] [decimal](22, 6) NULL DEFAULT (0),
  [ldEkim] [decimal](22, 6) NULL DEFAULT (0),
  [ldKasim] [decimal](22, 6) NULL DEFAULT (0),
  [ldAralik] [decimal](22, 6) NULL DEFAULT (0),
  [sBirimAdi] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_KALITESATIRLAR]
  ADD CONSTRAINT [BPMCG_KALITESATIRLARONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMKT_KALITEVERIGIRISI] ([ROWID]) ON DELETE CASCADE
GO