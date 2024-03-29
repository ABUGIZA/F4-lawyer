# Lawyer Script For QbCore

<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223332005610000404/Desktop_Screenshot_2024.03.29_-_20.41.21.39.png?ex=661977b6&is=660702b6&hm=98ffa4474e0e8504e60d2d91a2e672d2ec07860433fdfed039f5e97181023745&" width = "600">
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223332006608240752/Desktop_Screenshot_2024.03.29_-_20.41.47.99.png?ex=661977b6&is=660702b6&hm=90006c63045502a79b7430cf9610b51d636205a026c433fae742a77f64355a53&" width = "600">
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223332007677923481/Desktop_Screenshot_2024.03.29_-_20.41.59.26.png?ex=661977b7&is=660702b7&hm=1b036c0d2da9d195f12c5f8baf434fccf7af63b70d028cdefee799816ea7f8b6&" width = "600">
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223332004381069423/Desktop_Screenshot_2024.03.29_-_20.42.51.77.png?ex=661977b6&is=660702b6&hm=2ddf063c7f807f01c9e207bd08ff79edbb96a6e7c6fdd74a8af71df841007eec&" width = "600">
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223332004968267906/Desktop_Screenshot_2024.03.29_-_20.43.37.97.png?ex=661977b6&is=660702b6&hm=f1ba49eea6327c1c2b85661f2456e9e060e40b81a613bf4385f170ecd55042b7&" width = "600">
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223328632299061288/image.png?ex=66197492&is=6606ff92&hm=4132f0235993ae7d6bad4b0a6daf9889b46fc5aa45c5f85d2e93081334b0dd07&" width = "600">

### Preview
[Youtube](https://youtu.be/Tr2bQ6VedbE)


## qb-inventory/html/js/app.js cod 480
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223335109659328685/image.png?ex=66197a9a&is=6607059a&hm=74403c9b47adc771687e6f6b8814977f539b945e90ab317ac23e45687d53a9bc&" width = "600">

```
} else if (itemData.name == "case") {
            $(".item-info-title").html('<p>' + itemData.label + '</p>')
            $(".item-info-description").html('<p><strong>  اسم الموكل : </strong><span>'+ itemData.info.name + '</span></p><p><strong> سبب القضية : </strong><span>' + itemData.info.case + '</span></p><p><strong> الادلة : </strong><span>'+ itemData.info.send+ '</span></p><p><strong>  دليل اضافي : </strong><span>'+ itemData.info.send_2 + '<p><strong>  دليل اضافي : </strong><span>'+ itemData.info.send_3 +'</span></p>'
);
```
## qb-core/shared/items
```
['case']                            = {['name'] = 'case',                              ['label'] = 'Case',                      ['weight'] = 500,          ['type'] = 'item',       ['image'] = 'case.png',                 ['unique'] = true,         ['useable'] = false,     ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'The case file'},
```

## qb-smallresources/server/logs/Webhooks
<img src = "https://cdn.discordapp.com/attachments/1000200098346696814/1223335545711624272/image.png?ex=66197b02&is=66070602&hm=edfb223199d85e2a588e94f41e23ef17b72e7519fb59dbb9df34a2126165d558&" width = "600">

```
['lawyer'] = 'حط رابط الوب هوك حق دسكوردك',
```
