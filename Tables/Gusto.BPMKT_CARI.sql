CREATE TABLE [Gusto].[BPMKT_CARI] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sTCKimlikNo] [varchar](255) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](255) NULL DEFAULT (''),
  [sVergiNumarasi] [varchar](255) NULL DEFAULT (''),
  [pVergiTuru] [int] NULL DEFAULT (0),
  [pTur] [int] NULL DEFAULT (0),
  [pUstGrup] [int] NULL DEFAULT (0),
  [sIlce] [varchar](255) NULL DEFAULT (''),
  [sTelefonI] [varchar](255) NULL DEFAULT (''),
  [sTelefonII] [varchar](255) NULL DEFAULT (''),
  [sTelefonIII] [varchar](255) NULL DEFAULT (''),
  [sFaks] [varchar](255) NULL DEFAULT (''),
  [sSemt] [varchar](255) NULL DEFAULT (''),
  [sPostaKodu] [varchar](255) NULL DEFAULT (''),
  [sEMail] [varchar](255) NULL DEFAULT (''),
  [sWebAdresi] [varchar](255) NULL DEFAULT (''),
  [sAdres] [varchar](2000) NULL DEFAULT (''),
  [pSehirUlke] [int] NULL DEFAULT (0),
  [pSektor] [int] NULL DEFAULT (0),
  [pNakliyeTuru] [int] NULL DEFAULT (0),
  [pOdemeSekli] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [bGustoyaAktarildi] [bit] NULL,
  [pGustoCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_CARI]
  ADD CONSTRAINT [BPMKT_CARIONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO