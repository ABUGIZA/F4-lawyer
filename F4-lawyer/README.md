```
1. qb-inventory/html/js/app.js
} else if (itemData.name == "case") {
$(".item-info-title").html('<p>' + itemData.label + '</p>')
$(".item-info-description").html('<p><strong>  اسم الموكل : </strong><span>'+ itemData.info.name + '</span></p><p><strong> سبب القضية : </strong><span>' + itemData.info.case + '</span></p><p><strong> الادلة : </strong><span>'+ itemData.info.send+ '</span></p><p><strong>  دليل اضافي : </strong><span>'+ itemData.info.send_2 + '<p><strong>  دليل اضافي : </strong><span>'+ itemData.info.send_3 +'</span></p>'
);
```
```
2. qb-core/shared/items

['case']                            = {['name'] = 'case',                              ['label'] = 'Case',                      ['weight'] = 500,          ['type'] = 'item',       ['image'] = 'case.png',                 ['unique'] = true,         ['useable'] = false,     ['shouldClose'] = true,  ['combinable'] = nil,   ['description'] = 'The case file'},
```
```
2. qb-smallresources/server/logs/Webhooks cod 480

['lawyer'] = 'حط رابط الوب هوك حق دسكوردك',
```
