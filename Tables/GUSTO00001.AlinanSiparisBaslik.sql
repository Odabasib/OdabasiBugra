CREATE TABLE [GUSTO00001].[AlinanSiparisBaslik] (
  [AlinanSiparisBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [dtTeslimTarihi] [smalldatetime] NULL,
  [tmTeslimZamani] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [pBayi] [int] NULL DEFAULT (0),
  [bFaturaBayiyeKesilecek] [bit] NULL DEFAULT (0),
  [cSiparisBilgiFarkli] [char](1) NULL DEFAULT (' '),
  [pSiparisBilgi] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [cTeslimatDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [dtKapatma] [smalldatetime] NULL,
  [pKapatanKullanici] [int] NULL DEFAULT (0),
  [cAcikKapali] [char](1) NULL DEFAULT (' '),
  [cSiparisDondurulmus] [char](1) NULL DEFAULT (' '),
  [dtSiparisDondurmaTarihi] [smalldatetime] NULL,
  [sSiparisDondurmaAciklama] [varchar](120) NULL DEFAULT (''),
  [pSiparisDonduranKullanici] [int] NULL DEFAULT (0),
  [cSevkEmrineAktarildi] [char](1) NULL DEFAULT (' '),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanSiparisBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariTarihKey]
  ON [GUSTO00001].[AlinanSiparisBaslik] ([pCari], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelSeriNoKey]
  ON [GUSTO00001].[AlinanSiparisBaslik] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00001].[AlinanSiparisBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00001].[AlinanSiparisBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TeslimTarKey]
  ON [GUSTO00001].[AlinanSiparisBaslik] ([dtTeslimTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Buğra Odabaşı
-- Create date: 27.04.2018 
-- Description:	Alınan Sipariş silindiği Taktirde  Gusto.VerilenTeklifLog tablosunda ki verinin silinmesi için tasarlanmıştır.
-- =============================================
CREATE TRIGGER [VerilenTeklifLog]
   ON  [GUSTO00001].[AlinanSiparisBaslik]
   AFTER DELETE
AS 
BEGIN
	
	declare @AlinanSiparisBaslik_Rowid int;
	declare @pTeklifKartId int;

	set @AlinanSiparisBaslik_Rowid=(select AlinanSiparisBaslik_rowid from deleted);

	if exists (select * from Gusto.VerilenTeklifLog lg where lg.pAlinanSiparisBaslik=@AlinanSiparisBaslik_Rowid) begin

	set @pTeklifKartId=(select pKartID from Gusto.VerilenTeklifLog lg where lg.pAlinanSiparisBaslik=@AlinanSiparisBaslik_Rowid )

	update Gusto.VerilenTeklifLog set pAlinanSiparisBaslik=0,bMusteriyeGonderildi=0 where pAlinanSiparisBaslik=@AlinanSiparisBaslik_Rowid;

	update Gusto.BPMKT_VERILENTEKLIF set pTeklifDurumu=1114,sSiparisSeriNo='' where PKART=@pTeklifKartId  
	--Verilen Teklif Durumu , --Teklif Formu Oluşturuldu Müşteri Onayı Bekleniyor Durumuna Güncellenecek PCOMBO=35

	update Gusto.BPMCG_VTeklifSatirlari set pSatirDurum=1146 where PPARENT=(select ROWID from Gusto.BPMKT_VERILENTEKLIF where PKART=@pTeklifKartId) 
	--Verilen Teklifin Satır Durumu , --Teklif Formu Oluşturuldu Müşteri Onayı Bekleniyor Durumuna Güncellenecek PCOMBO=36

	

	end


END
GO