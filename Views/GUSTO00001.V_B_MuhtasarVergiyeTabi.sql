SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_B_MuhtasarVergiyeTabi] as
select '011' turKodu ,*from Gusto00001.V_B_Muhtasar011

union

select '012',* from Gusto00001.V_B_Muhtasar012

union

select '013' turKodu,* from Gusto00001.V_B_Muhtasar013

union

select '014' turKodu,* from Gusto00001.V_B_Muhtasar014

union

select '015' turKodu,* from  Gusto00001.V_B_Muhtasar015

union

select '022' turKodu,* from Gusto00001.V_B_Muhtasar022

union

select '041' turKodu,* from Gusto00001.V_B_Muhtasar041

union

select '302' turKodu,* from Gusto00001.V_B_Muhtasar302
GO