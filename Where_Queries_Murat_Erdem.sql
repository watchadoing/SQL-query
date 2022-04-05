select CLL.AMOUNT from LG_115_CLCARD order by  desc --en üstte en çok ciro olan ba?layacak ok

select CLC.CITY from LG_115_CLCARD where CLC.CITY != 'ISTANBUL' -- ist. harici ?ehirler ok

select CLL.SIGN from LG_115_CLCARD where CLL.SIGN = 0 --cari sehir bilgisi ok

select CLL.AMOUNT from LG_115_CLCARD sum (CLL.AMOUNT) where CLL.DATE_ = '2022' --düzenle

select CLL.AMOUNT from LG_115_CLCARD sum (CLL.AMOUNT)  where CLC.CITY != 'ISTANBUL' --OK

select CLC.LOGICALREF from LG_115_CLCARD --cari ?ehir bilgisi ok

select CLL.AMOUNT from LG_115_CLCARD --ciroyu olu?turan ay not ok

select CLL.AMOUNT from LG_115_CLCARD --ciro ok

select CLL.AMOUNT from LG_115_CLCARD sum (CLL.AMOUNT)  where CLC.CITY != 'ISTANBUL' / sum (CLL.AMOUNT) --sehrin genel toplama oran? not ok

select CLL.AMOUNT from LG_115_CLCARD group by CLC.CITY order by sum(CLL.AMOUNT) asc --?ehir baz?nda toplanamarak ilerleyen ciro aya göre artan s?ras? not ok

