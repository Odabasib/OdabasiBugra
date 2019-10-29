CREATE TABLE [GUSTO00003].[MSSevkAdresleri] (
  [MSSevkAdresleri_rowid] [int] IDENTITY,
  [pCari] [int] NOT NULL DEFAULT (0),
  [sSevkAdresiAdi] [varchar](60) NOT NULL DEFAULT (''),
  [sUlke] [varchar](50) NULL DEFAULT (''),
  [sAdres] [varchar](250) NULL DEFAULT (''),
  [sPostaKodu] [varchar](10) NULL DEFAULT (''),
  [sIlce] [varchar](30) NULL DEFAULT (''),
  [sSehir] [varchar](30) NULL DEFAULT (''),
  [pAlanKodu] [int] NULL DEFAULT (0),
  [sTelefon1] [varchar](20) NULL DEFAULT (''),
  [sTelefon2] [varchar](20) NULL DEFAULT (''),
  [sFaksNo] [varchar](20) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSSevkAdresleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariAdresKey]
  ON [GUSTO00003].[MSSevkAdresleri] ([pCari], [sSevkAdresiAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO