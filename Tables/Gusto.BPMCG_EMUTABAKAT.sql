CREATE TABLE [Gusto].[BPMCG_EMUTABAKAT] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [sMailList] [varchar](255) NULL DEFAULT (''),
  [sCariAciklama] [varchar](255) NULL DEFAULT (''),
  [cBakiyeSekli] [varchar](255) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 6) NULL DEFAULT (0),
  [pDurum] [int] NULL DEFAULT (-1),
  [sMailCrypto] [varchar](255) NULL DEFAULT (''),
  [ldBATutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldBSTutari] [decimal](22, 6) NULL DEFAULT (0),
  [sOnayIPAdres] [varchar](255) NULL DEFAULT (''),
  [dtOnayTarihi] [datetime] NULL,
  [pCari] [int] NULL DEFAULT (0),
  [sOnayRedMail] [varchar](255) NULL DEFAULT (''),
  [nBS] [decimal](22, 6) NULL DEFAULT (0),
  [nBA] [decimal](22, 6) NULL DEFAULT (0),
  [sParaBirimi] [varchar](255) NULL DEFAULT (''),
  [bGeriBildirim] [bit] NULL,
  [ldTevkifatTutari] [decimal](22, 6) NULL,
  [ldTevkifatMatrah] [decimal](22, 6) NULL,
  [nTevkifatAdedi] [int] NULL,
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_EMUTABAKAT]
  ADD CONSTRAINT [BPMCG_EMUTABAKATONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_EMUTABAKAT] ([ROWID]) ON DELETE CASCADE
GO