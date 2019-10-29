CREATE TABLE [GUSTO00004].[HavuzPaketBilgi] (
  [HavuzPaketBilgi_rowid] [int] IDENTITY,
  [pHavuz] [int] NULL DEFAULT (0),
  [sBarkod] [varchar](50) NULL DEFAULT (''),
  [sEtiket] [varchar](50) NULL DEFAULT (''),
  [nPaketNo] [smallint] NULL DEFAULT (0),
  [sPaketBilgileri] [varchar](255) NULL DEFAULT (''),
  [ldEn] [decimal](22, 6) NULL DEFAULT (0),
  [ldBoy] [decimal](22, 6) NULL DEFAULT (0),
  [ldDerinlik] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimNetAgirlik] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimBrutAgirlik] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HavuzPaketBilgi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pHavuz_sEtiket_nPaketNo]
  ON [GUSTO00004].[HavuzPaketBilgi] ([pHavuz], [sEtiket], [nPaketNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO