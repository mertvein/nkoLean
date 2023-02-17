local Translations = {
    error = {
        dont_have_sprite = 'I need something fizzy and simple..',
        dont_have_ice = 'I don\'t think it\'s possible without ice..',
        dont_have_ibuprofen = 'If you don\'t put the syrup that will make you dizzy, it will be like water..',
        dont_have_jolly = 'Here is the real taste of jelly beans..',
        
        notify = 'Operation failed..'
    },
    
    success = {
        success_sprite = 'There seems to be a small weight in the glass..',
        success_ice = 'We are starting to get cold..',
        success_ibuprofen = 'My mouth is watering..',
        success_jolly = 'I have tasted it..',

        notify = 'Operation successful..'
    },

    progressbar = {
        spriteLoad = 'You are pouring Sprite into the empty glass..',
        iceLoad = 'You are throwing some ice..',
        ibuprofenLoad = 'You add some syrup and mix it..',
        jollyLoad = 'You throw some jelly beans..',
        shake = 'You closed the plastic cup and you are mixing it..'
    },

    drink = {
        progressbar = 'You are drinking Lean..',
        notify1 = 'You\'re getting high..',
        notify2 = 'Your world started spinning..',
        notify3 = 'You\'re so tough now!'
    },

    menu = {
        seller_name = 'Mr. Jason',

        bowl_header = 'Plastic Cup',
        bowl_txt = 'Get an empty plastic cup..',

        ice_header = 'Ice',
        ice_txt = 'Get a freezing ice..',

        ibuprofen_header = 'Syrup',
        ibuprofen_txt = 'Buy a syrup that will wake you up..',

        jolly_header = 'Jelibon',
        jolly_txt = 'Buy a pack of teddy bears..',

        sprite_header = 'Sprite',
        sprite_txt = 'Take a Sprite, have fun..'
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})