CREATE TABLE [Gusto].[BPMFT_UASTOKKODUOLUSTURMA] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sDurum] [varchar](255) NULL DEFAULT (''),
  [sStokKodu] [varchar](255) NULL DEFAULT (''),
  [sStokAdi] [varchar](255) NULL DEFAULT (''),
  [sOzelRenkKodu] [varchar](255) NULL DEFAULT (''),
  [bAfis] [bit] NULL,
  [bDis] [bit] NULL,
  [bGorunen] [bit] NULL,
  [bPVCYok] [bit] NULL,
  [nAfisEn] [decimal](22, 6) NULL DEFAULT (0),
  [nAfisBoy] [decimal](22, 6) NULL DEFAULT (0),
  [nEn] [decimal](22, 6) NULL DEFAULT (0),
  [nBoy] [decimal](22, 6) NULL DEFAULT (0),
  [OlusacakStokBilgileri] [varchar](255) NULL DEFAULT (''),
  [pAnaGrup] [int] NULL DEFAULT (0),
  [pAltGrup] [int] NULL DEFAULT (0),
  [pProfil] [int] NULL DEFAULT (0),
  [pArkOnKoruma] [int] NULL DEFAULT (0),
  [pRenk] [int] NULL DEFAULT (0),
  [pPaketlemeSekli] [int] NULL DEFAULT (0),
  [pOzellik] [int] NULL DEFAULT (0),
  [bKatsayiDusuk] [bit] NULL,
  [bKatsayiOrta] [bit] NULL,
  [bKatsayiYuksek] [bit] NULL,
  [ldSatisFiyatEUR] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamMaliyetUSD] [decimal](22, 6) NULL DEFAULT (0),
  [ldDolarEuroParite] [decimal](22, 6) NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_UASTOKKODUOLUSTURMA]
  ADD CONSTRAINT [BPMFT_UASTOKKODUOLUSTURMAONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO