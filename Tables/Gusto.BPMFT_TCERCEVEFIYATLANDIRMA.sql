CREATE TABLE [Gusto].[BPMFT_TCERCEVEFIYATLANDIRMA] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sStokKodu] [varchar](255) NULL DEFAULT (''),
  [sStokAdi] [varchar](255) NULL DEFAULT (''),
  [sOzelRenkKodu] [varchar](255) NULL DEFAULT (''),
  [sDurum] [varchar](255) NULL DEFAULT (''),
  [nEn] [decimal](22, 6) NULL DEFAULT (0),
  [ldBoy] [decimal](22, 6) NULL DEFAULT (0),
  [SecilenOzellikler] [varchar](255) NULL DEFAULT (''),
  [pPaketlemeSekli] [int] NULL DEFAULT (0),
  [pOzellik] [int] NULL DEFAULT (0),
  [pMontajSekli] [int] NULL DEFAULT (0),
  [pArkalik] [int] NULL DEFAULT (0),
  [pRenk] [int] NULL DEFAULT (0),
  [pAnaGrup] [int] NULL DEFAULT (0),
  [pProfilTuru] [int] NULL DEFAULT (0),
  [pProfil] [int] NULL DEFAULT (0),
  [bKatsayiDusuk] [bit] NULL,
  [bKatsayiOrta] [bit] NULL,
  [bKatsayiYuksek] [bit] NULL,
  [ldParite] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamMaliyetUSD] [decimal](22, 6) NULL DEFAULT (0),
  [ldSatisFiyatEUR] [decimal](22, 6) NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_TCERCEVEFIYATLANDIRMA]
  ADD CONSTRAINT [BPMFT_TCERCEVEFIYATLANDIRMAONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO