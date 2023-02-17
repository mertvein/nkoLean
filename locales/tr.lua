local Translations = {
    error = {
        dont_have_sprite = 'Gazlı, sade bir şeyler lazım..',
        dont_have_ice = 'Buzsuz olmaz bence..',
        dont_have_ibuprofen = 'Kafa yapacak şurubu koymazsan sudan farksız olur..',
        dont_have_jolly = 'İşte asıl tadı jelibonlar veriyor..',
        
        notify = 'İşlem başarısız..'
    },
    
    success = {
        success_sprite = 'Bardağa ufak bir ağırlık geldi gibi..',
        success_ice = 'Soğumaya başladık..',
        success_ibuprofen = 'Ağzım sulandı..',
        success_jolly = 'Tadım geldi..',

        notify = 'İşlem başarılı..'
    },

    progressbar = {
        spriteLoad = 'Boş bardağa Sprite dolduruyorsun..',
        iceLoad = 'Birkaç buz atıyorsun..',
        ibuprofenLoad = 'Biraz şurup katıp, karıştırıyorsun..',
        jollyLoad = 'Birkaç jelibon atıyorsun..',
        shake = 'Plastik bardağı kapattın ve karıştırıyorsun..'
    },

    drink = {
        progressbar = 'Lean içiyorsun..',
        notify1 = 'Kafan güzel olmaya başladı..',
        notify2 = 'Dünya\'n dönmeye başladı..',
        notify3 = 'Artık çok sertsin!'
    },

    menu = {
        seller_name = 'Mr. Jason',

        bowl_header = 'Plastik Bardak',
        bowl_txt = 'İçi boş plastik bir bardak al..',

        ice_header = 'Buz',
        ice_txt = 'Dondurucu bir buz al..',

        ibuprofen_header = 'Şurup',
        ibuprofen_txt = 'Seni kendine getirecek bir şurup al..',

        jolly_header = 'Jelibon',
        jolly_txt = 'Tatlı ayıcıklarla dolu bir paket al..',

        sprite_header = 'Sprite',
        sprite_txt = 'Al bir Sprite, bak keyfine..'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})