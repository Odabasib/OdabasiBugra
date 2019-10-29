CREATE TABLE [GUSTO00004].[OrganizasyonDetayi] (
  [OrganizasyonDetayi_rowid] [int] IDENTITY,
  [pMesaiKodu] [int] NULL DEFAULT (0),
  [nVardiyaSayisi] [tinyint] NULL DEFAULT (0),
  [sBolumMisyon] [varchar](2048) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OrganizasyonDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO