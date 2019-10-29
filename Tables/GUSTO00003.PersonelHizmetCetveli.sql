CREATE TABLE [GUSTO00003].[PersonelHizmetCetveli] (
  [PersonelHizmetCetveli_rowid] [int] IDENTITY,
  [sGorevYeri] [varchar](60) NULL DEFAULT (''),
  [sUnvani] [varchar](60) NULL DEFAULT (''),
  [nKadro] [int] NULL DEFAULT (0),
  [sEmKesEsasOlanMaas] [varchar](60) NULL DEFAULT (''),
  [ldEmKesEsasOlanUcret] [decimal](22, 2) NULL DEFAULT (0),
  [nGunSayisi] [int] NULL DEFAULT (0),
  [nDerece] [int] NULL DEFAULT (0),
  [nGosterge] [int] NULL DEFAULT (0),
  [nKademe] [int] NULL DEFAULT (0),
  [nEkGosterge] [int] NULL DEFAULT (0),
  [dtGoreveBaslamaTarihi] [smalldatetime] NULL,
  [dtGorevDegisiklikTarihi] [smalldatetime] NULL,
  [sGorevDegisiklikNedeni] [varchar](60) NULL DEFAULT (''),
  [pPersonel] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelHizmetCetveli_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [UcretPersonelTarihKey]
  ON [GUSTO00003].[PersonelHizmetCetveli] ([pPersonel], [dtGoreveBaslamaTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO