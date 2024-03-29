﻿CREATE TABLE [GUSTO00005].[MemurMaas] (
  [MemurMaas_rowid] [int] IDENTITY,
  [pTahakkuk] [int] NULL DEFAULT (0),
  [ldEmekliKesintisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldIstihkakToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumKesintileri] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliKesintisiIlk] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldOzelIndirim] [decimal](22, 2) NULL DEFAULT (0),
  [ldKidemAylik] [decimal](22, 2) NULL DEFAULT (0),
  [ldGostergeUstu] [decimal](22, 2) NULL DEFAULT (0),
  [ldTabanAylik] [decimal](22, 2) NULL DEFAULT (0),
  [ldGosterge] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGosterge] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsRiski] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsGuclugu] [decimal](22, 2) NULL DEFAULT (0),
  [ldTeminindeGucluk] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirOzelHizmetTazminati] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliKesOzelHizmetTazminat] [decimal](22, 2) NULL DEFAULT (0),
  [ldEnYuksekMaas] [decimal](22, 2) NULL DEFAULT (0),
  [ldMaliSorumlulukTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldAylikMatrah] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumKesToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliKes_Kurum] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliKes_Terfi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTasarrufKesintisi_Sahis] [decimal](22, 2) NULL DEFAULT (0),
  [ldEmekliKesIndirimOrani] [decimal](22, 2) NULL DEFAULT (0),
  [nMemurDerece] [int] NULL DEFAULT (0),
  [nMemurKademe] [int] NULL DEFAULT (0),
  [nMemurEkGosterge] [int] NULL DEFAULT (0),
  [nKidemYili] [int] NULL DEFAULT (0),
  [ldEmekliKesintiMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumKarsiligi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSahisKarsiligi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIlkIseGiris] [decimal](22, 2) NULL DEFAULT (0),
  [ldTasarrufKesintiMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTasarrufKesintisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSahisYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTasarrufKesintisi_Kurum] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKesintiToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerIndirimler] [decimal](22, 2) NULL DEFAULT (0),
  [ldVergiDilimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIndirimlerToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldGenelIndirimler] [decimal](22, 2) NULL DEFAULT (0),
  [ldGecmisHizmetBorclanmasi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurumBorclanmasi] [decimal](22, 2) NULL DEFAULT (0),
  [ldKesintiyeTabiEkGelir] [decimal](22, 2) NULL DEFAULT (0),
  [ldNormal_FazMes_YanOde] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamFazlaMesaiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamFazlaMesaiYuzdeTutari] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MemurMaas_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO