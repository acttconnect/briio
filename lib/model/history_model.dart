import 'dart:convert';
/// error : false
/// orderDetailsData : [{"id":41,"user_id":61,"order_id":"213","prodid":null,"productname":"Necklace","image":null,"variant":null,"quantity":null,"price":null,"discounted_price":null,"sub_total":null,"status":"1","active_status":"1","created_at":"2022-08-29T15:59:48.000000Z","updated_at":"2022-08-29T15:59:48.000000Z"},{"id":34,"user_id":61,"order_id":"205","prodid":null,"productname":"barclet3","image":null,"variant":null,"quantity":null,"price":null,"discounted_price":null,"sub_total":null,"status":"1","active_status":"1","created_at":"2022-08-29T13:10:28.000000Z","updated_at":"2022-08-29T13:10:28.000000Z"},{"id":33,"user_id":61,"order_id":"204","prodid":null,"productname":"barclet3","image":null,"variant":null,"quantity":null,"price":null,"discounted_price":null,"sub_total":null,"status":"1","active_status":"1","created_at":"2022-08-29T12:26:29.000000Z","updated_at":"2022-08-29T12:26:29.000000Z"},{"id":26,"user_id":61,"order_id":"183","prodid":null,"productname":null,"image":null,"variant":null,"quantity":null,"price":157,"discounted_price":150,"sub_total":150,"status":"1","active_status":"1","created_at":"2022-08-29T11:20:52.000000Z","updated_at":"2022-08-29T11:20:52.000000Z"},{"id":25,"user_id":61,"order_id":"182","prodid":null,"productname":null,"image":null,"variant":null,"quantity":null,"price":150,"discounted_price":145,"sub_total":145,"status":"1","active_status":"1","created_at":"2022-08-29T05:39:36.000000Z","updated_at":"2022-08-29T05:39:36.000000Z"}]
/// orderData : [{"id":215,"user_id":61,"mobile":"8709678738","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T17:29:30.000000Z","updated_at":"2022-08-29T17:29:30.000000Z"},{"id":214,"user_id":61,"mobile":"8709678738","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T17:25:48.000000Z","updated_at":"2022-08-29T17:25:48.000000Z"},{"id":213,"user_id":61,"mobile":"8709678738","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T15:59:48.000000Z","updated_at":"2022-08-29T15:59:48.000000Z"},{"id":212,"user_id":69,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:44:52.000000Z","updated_at":"2022-08-29T15:44:52.000000Z"},{"id":211,"user_id":68,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:42:44.000000Z","updated_at":"2022-08-29T15:42:44.000000Z"},{"id":210,"user_id":68,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:39:40.000000Z","updated_at":"2022-08-29T15:39:40.000000Z"},{"id":209,"user_id":66,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:35:02.000000Z","updated_at":"2022-08-29T15:35:02.000000Z"},{"id":208,"user_id":66,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:33:58.000000Z","updated_at":"2022-08-29T15:33:58.000000Z"},{"id":207,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T15:33:43.000000Z","updated_at":"2022-08-29T15:33:43.000000Z"},{"id":206,"user_id":63,"mobile":"7650667561","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T13:15:17.000000Z","updated_at":"2022-08-29T13:15:17.000000Z"},{"id":205,"user_id":61,"mobile":"8709678738","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T13:10:28.000000Z","updated_at":"2022-08-29T13:10:28.000000Z"},{"id":204,"user_id":61,"mobile":"8709678738","orderid":null,"total":0,"delivery_charge":100,"delivaryperson_id":null,"delivared_date":null,"final_total":90000,"payment_id":null,"payment_method":"0","status":"1","active_status":"1","created_at":"2022-08-29T12:26:29.000000Z","updated_at":"2022-08-29T12:26:29.000000Z"},{"id":203,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:19:18.000000Z","updated_at":"2022-08-29T12:19:18.000000Z"},{"id":202,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:18:39.000000Z","updated_at":"2022-08-29T12:18:39.000000Z"},{"id":201,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:17:38.000000Z","updated_at":"2022-08-29T12:17:38.000000Z"},{"id":200,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:15:22.000000Z","updated_at":"2022-08-29T12:15:22.000000Z"},{"id":199,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:13:50.000000Z","updated_at":"2022-08-29T12:13:50.000000Z"},{"id":198,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:12:49.000000Z","updated_at":"2022-08-29T12:12:49.000000Z"},{"id":197,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:12:30.000000Z","updated_at":"2022-08-29T12:12:30.000000Z"},{"id":196,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:12:07.000000Z","updated_at":"2022-08-29T12:12:07.000000Z"},{"id":195,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:11:30.000000Z","updated_at":"2022-08-29T12:11:30.000000Z"},{"id":194,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:10:43.000000Z","updated_at":"2022-08-29T12:10:43.000000Z"},{"id":193,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:10:12.000000Z","updated_at":"2022-08-29T12:10:12.000000Z"},{"id":192,"user_id":23,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T12:09:36.000000Z","updated_at":"2022-08-29T12:09:36.000000Z"},{"id":191,"user_id":25,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:53:10.000000Z","updated_at":"2022-08-29T11:53:10.000000Z"},{"id":190,"user_id":18,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:51:31.000000Z","updated_at":"2022-08-29T11:51:31.000000Z"},{"id":189,"user_id":18,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:51:00.000000Z","updated_at":"2022-08-29T11:51:00.000000Z"},{"id":188,"user_id":18,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:49:30.000000Z","updated_at":"2022-08-29T11:49:30.000000Z"},{"id":187,"user_id":18,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:44:56.000000Z","updated_at":"2022-08-29T11:44:56.000000Z"},{"id":186,"user_id":18,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:44:28.000000Z","updated_at":"2022-08-29T11:44:28.000000Z"},{"id":185,"user_id":14,"mobile":"9878787876","orderid":null,"total":800,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":10000,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:33:21.000000Z","updated_at":"2022-08-29T11:33:21.000000Z"},{"id":184,"user_id":12,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:22:14.000000Z","updated_at":"2022-08-29T11:22:14.000000Z"},{"id":183,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T11:20:52.000000Z","updated_at":"2022-08-29T11:20:52.000000Z"},{"id":182,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:39:36.000000Z","updated_at":"2022-08-29T05:39:36.000000Z"},{"id":181,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:38:09.000000Z","updated_at":"2022-08-29T05:38:09.000000Z"},{"id":180,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:37:28.000000Z","updated_at":"2022-08-29T05:37:28.000000Z"},{"id":179,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:28:33.000000Z","updated_at":"2022-08-29T05:28:33.000000Z"},{"id":178,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:27:19.000000Z","updated_at":"2022-08-29T05:27:19.000000Z"},{"id":177,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:25:54.000000Z","updated_at":"2022-08-29T05:25:54.000000Z"},{"id":176,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:19:51.000000Z","updated_at":"2022-08-29T05:19:51.000000Z"},{"id":175,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:19:42.000000Z","updated_at":"2022-08-29T05:19:42.000000Z"},{"id":174,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:18:49.000000Z","updated_at":"2022-08-29T05:18:49.000000Z"},{"id":173,"user_id":61,"mobile":"8794563258","orderid":null,"total":790,"delivery_charge":70,"delivaryperson_id":null,"delivared_date":null,"final_total":987,"payment_id":null,"payment_method":"COD","status":"1","active_status":"1","created_at":"2022-08-29T05:17:14.000000Z","updated_at":"2022-08-29T05:17:14.000000Z"},{"id":172,"user_id":39,"mobile":"9876543212","orderid":"order_JZl62Lq5c7EWlb","total":2800,"delivery_charge":0,"delivaryperson_id":null,"delivared_date":null,"final_total":2800,"payment_id":"pay_JZl6Pv90PYGx8d","payment_method":"Razorpay","status":"1","active_status":"0","created_at":"2022-05-26T06:33:53.000000Z","updated_at":"2022-05-26T06:33:53.000000Z"},{"id":171,"user_id":20,"mobile":"9876543212","orderid":"order_Ias9rDGCFD9jS9","total":8997,"delivery_charge":0,"delivaryperson_id":null,"delivared_date":null,"final_total":8997,"payment_id":"pay_IasB6l6IplL2TA","payment_method":"Razorpay","status":"1","active_status":"0","created_at":"2021-12-23T09:50:04.000000Z","updated_at":"2021-12-23T09:50:04.000000Z"},{"id":170,"user_id":17,"mobile":"1234567890","orderid":"order_IU6fcEJmJi97XI","total":7471,"delivery_charge":0,"delivaryperson_id":null,"delivared_date":null,"final_total":7471,"payment_id":"pay_IU6gHwQWkFI52a","payment_method":"Razorpay","status":"1","active_status":"0","created_at":"2021-12-06T07:28:17.000000Z","updated_at":"2021-12-06T07:28:17.000000Z"},{"id":169,"user_id":7,"mobile":"8948228157","orderid":"order_IQYcJLlKfOAGV5","total":648,"delivery_charge":0,"delivaryperson_id":null,"delivared_date":null,"final_total":648,"payment_id":"pay_IQYcRyaNUVyV3x","payment_method":"Razorpay","status":"1","active_status":"0","created_at":"2021-11-27T08:12:03.000000Z","updated_at":"2021-11-27T08:12:03.000000Z"},{"id":168,"user_id":1,"mobile":"1234567890","orderid":"order_IP7DfhH7P0R57t","total":1800,"delivery_charge":0,"delivaryperson_id":null,"delivared_date":null,"final_total":1800,"payment_id":"pay_IP7DoU5JjbnKgH","payment_method":"Razorpay","status":"1","active_status":"0","created_at":"2021-11-23T16:56:34.000000Z","updated_at":"2021-11-23T16:56:34.000000Z"},{"id":167,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-11-16T05:25:55.000000Z","updated_at":"2021-11-16T05:25:55.000000Z"},{"id":166,"user_id":9,"mobile":"9741629866","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-11-03T05:38:20.000000Z","updated_at":"2021-11-03T05:38:20.000000Z"},{"id":165,"user_id":7,"mobile":"8948228157","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-11-02T11:28:26.000000Z","updated_at":"2021-11-02T11:28:26.000000Z"},{"id":164,"user_id":3,"mobile":"8787847945","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-11-02T10:54:36.000000Z","updated_at":"2021-11-02T10:54:36.000000Z"},{"id":163,"user_id":7,"mobile":"8948228157","orderid":"","total":540,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":540,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T09:06:01.000000Z","updated_at":"2021-11-02T09:06:01.000000Z"},{"id":162,"user_id":3,"mobile":"8787847945","orderid":"","total":995,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":995,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T08:51:17.000000Z","updated_at":"2021-11-02T08:51:17.000000Z"},{"id":161,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T08:21:14.000000Z","updated_at":"2021-11-02T08:21:14.000000Z"},{"id":160,"user_id":3,"mobile":"8787847945","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T08:20:47.000000Z","updated_at":"2021-11-02T08:20:47.000000Z"},{"id":159,"user_id":3,"mobile":"8787847945","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T08:20:39.000000Z","updated_at":"2021-11-02T08:20:39.000000Z"},{"id":158,"user_id":3,"mobile":"8787847945","orderid":"","total":1017,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":1017,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T07:23:25.000000Z","updated_at":"2021-11-02T07:23:25.000000Z"},{"id":157,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T07:10:51.000000Z","updated_at":"2021-11-02T07:10:51.000000Z"},{"id":156,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T07:09:29.000000Z","updated_at":"2021-11-02T07:09:29.000000Z"},{"id":155,"user_id":7,"mobile":"8948228157","orderid":"","total":540,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":540,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T05:40:35.000000Z","updated_at":"2021-11-02T05:40:35.000000Z"},{"id":154,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-11-02T05:36:37.000000Z","updated_at":"2021-11-02T05:37:04.000000Z"},{"id":153,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-11-02T05:35:06.000000Z","updated_at":"2021-11-02T05:35:06.000000Z"},{"id":152,"user_id":8,"mobile":"9741629866","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-31T14:52:05.000000Z","updated_at":"2021-10-31T14:52:29.000000Z"},{"id":151,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:52:38.000000Z","updated_at":"2021-10-31T07:52:38.000000Z"},{"id":150,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:44:12.000000Z","updated_at":"2021-10-31T07:44:12.000000Z"},{"id":149,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:43:05.000000Z","updated_at":"2021-10-31T07:43:05.000000Z"},{"id":148,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:41:37.000000Z","updated_at":"2021-10-31T07:41:37.000000Z"},{"id":147,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:37:23.000000Z","updated_at":"2021-10-31T07:37:23.000000Z"},{"id":146,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:14:17.000000Z","updated_at":"2021-10-31T07:14:17.000000Z"},{"id":145,"user_id":3,"mobile":"8787847945","orderid":"","total":380,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":380,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:11:58.000000Z","updated_at":"2021-10-31T07:11:58.000000Z"},{"id":144,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T07:05:33.000000Z","updated_at":"2021-10-31T07:05:33.000000Z"},{"id":143,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-31T07:01:20.000000Z","updated_at":"2021-10-31T07:01:43.000000Z"},{"id":142,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-31T06:59:00.000000Z","updated_at":"2021-10-31T06:59:27.000000Z"},{"id":141,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T06:56:31.000000Z","updated_at":"2021-10-31T06:56:31.000000Z"},{"id":140,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T06:54:13.000000Z","updated_at":"2021-10-31T06:54:13.000000Z"},{"id":139,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T06:52:57.000000Z","updated_at":"2021-10-31T06:52:57.000000Z"},{"id":138,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T06:05:31.000000Z","updated_at":"2021-10-31T06:05:31.000000Z"},{"id":137,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T05:53:51.000000Z","updated_at":"2021-10-31T05:53:51.000000Z"},{"id":136,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T05:46:26.000000Z","updated_at":"2021-10-31T05:46:26.000000Z"},{"id":135,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T05:44:41.000000Z","updated_at":"2021-10-31T05:44:41.000000Z"},{"id":134,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T05:39:47.000000Z","updated_at":"2021-10-31T05:39:47.000000Z"},{"id":133,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-31T05:38:39.000000Z","updated_at":"2021-10-31T05:38:39.000000Z"},{"id":132,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T20:02:38.000000Z","updated_at":"2021-10-30T20:02:38.000000Z"},{"id":131,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:57:01.000000Z","updated_at":"2021-10-30T19:57:01.000000Z"},{"id":130,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:56:14.000000Z","updated_at":"2021-10-30T19:56:14.000000Z"},{"id":129,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:54:28.000000Z","updated_at":"2021-10-30T19:54:28.000000Z"},{"id":128,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:40:45.000000Z","updated_at":"2021-10-30T19:40:45.000000Z"},{"id":127,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:27:40.000000Z","updated_at":"2021-10-30T19:27:40.000000Z"},{"id":126,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:13:32.000000Z","updated_at":"2021-10-30T19:13:32.000000Z"},{"id":125,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:09:35.000000Z","updated_at":"2021-10-30T19:09:35.000000Z"},{"id":124,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:08:07.000000Z","updated_at":"2021-10-30T19:08:07.000000Z"},{"id":123,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:02:29.000000Z","updated_at":"2021-10-30T19:02:29.000000Z"},{"id":122,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T19:00:37.000000Z","updated_at":"2021-10-30T19:00:37.000000Z"},{"id":121,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:57:27.000000Z","updated_at":"2021-10-30T18:57:27.000000Z"},{"id":120,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:56:30.000000Z","updated_at":"2021-10-30T18:56:30.000000Z"},{"id":119,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:54:58.000000Z","updated_at":"2021-10-30T18:54:58.000000Z"},{"id":118,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:51:41.000000Z","updated_at":"2021-10-30T18:51:41.000000Z"},{"id":117,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:32:58.000000Z","updated_at":"2021-10-30T18:32:58.000000Z"},{"id":116,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:29:03.000000Z","updated_at":"2021-10-30T18:29:03.000000Z"},{"id":115,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:19:11.000000Z","updated_at":"2021-10-30T18:19:11.000000Z"},{"id":114,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-30T18:18:40.000000Z","updated_at":"2021-10-30T18:18:40.000000Z"},{"id":113,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:49:25.000000Z","updated_at":"2021-10-25T20:49:25.000000Z"},{"id":112,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:44:05.000000Z","updated_at":"2021-10-25T20:44:05.000000Z"},{"id":111,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:41:06.000000Z","updated_at":"2021-10-25T20:41:06.000000Z"},{"id":110,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:38:25.000000Z","updated_at":"2021-10-25T20:38:25.000000Z"},{"id":109,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:36:56.000000Z","updated_at":"2021-10-25T20:36:56.000000Z"},{"id":108,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:33:19.000000Z","updated_at":"2021-10-25T20:33:19.000000Z"},{"id":107,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:30:46.000000Z","updated_at":"2021-10-25T20:30:46.000000Z"},{"id":106,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:30:43.000000Z","updated_at":"2021-10-25T20:30:43.000000Z"},{"id":105,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:30:37.000000Z","updated_at":"2021-10-25T20:30:37.000000Z"},{"id":104,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:30:32.000000Z","updated_at":"2021-10-25T20:30:32.000000Z"},{"id":103,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:27:22.000000Z","updated_at":"2021-10-25T20:27:22.000000Z"},{"id":102,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:24:33.000000Z","updated_at":"2021-10-25T20:24:33.000000Z"},{"id":101,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:23:07.000000Z","updated_at":"2021-10-25T20:23:07.000000Z"},{"id":100,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:18:12.000000Z","updated_at":"2021-10-25T20:18:12.000000Z"},{"id":99,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:16:32.000000Z","updated_at":"2021-10-25T20:16:32.000000Z"},{"id":98,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:13:14.000000Z","updated_at":"2021-10-25T20:13:14.000000Z"},{"id":97,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:10:54.000000Z","updated_at":"2021-10-25T20:10:54.000000Z"},{"id":96,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:10:49.000000Z","updated_at":"2021-10-25T20:10:49.000000Z"},{"id":95,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:06:20.000000Z","updated_at":"2021-10-25T20:06:20.000000Z"},{"id":94,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:04:12.000000Z","updated_at":"2021-10-25T20:04:12.000000Z"},{"id":93,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:03:29.000000Z","updated_at":"2021-10-25T20:03:29.000000Z"},{"id":92,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T20:01:09.000000Z","updated_at":"2021-10-25T20:01:09.000000Z"},{"id":91,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:56:47.000000Z","updated_at":"2021-10-25T19:56:47.000000Z"},{"id":90,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:54:57.000000Z","updated_at":"2021-10-25T19:54:57.000000Z"},{"id":89,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:53:21.000000Z","updated_at":"2021-10-25T19:53:21.000000Z"},{"id":88,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:51.000000Z","updated_at":"2021-10-25T19:51:51.000000Z"},{"id":87,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:30.000000Z","updated_at":"2021-10-25T19:51:30.000000Z"},{"id":86,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:27.000000Z","updated_at":"2021-10-25T19:51:27.000000Z"},{"id":85,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:23.000000Z","updated_at":"2021-10-25T19:51:23.000000Z"},{"id":84,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:18.000000Z","updated_at":"2021-10-25T19:51:18.000000Z"},{"id":83,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:18.000000Z","updated_at":"2021-10-25T19:51:18.000000Z"},{"id":82,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:51:11.000000Z","updated_at":"2021-10-25T19:51:11.000000Z"},{"id":81,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:49:03.000000Z","updated_at":"2021-10-25T19:49:03.000000Z"},{"id":80,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:45:10.000000Z","updated_at":"2021-10-25T19:45:10.000000Z"},{"id":79,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:42:34.000000Z","updated_at":"2021-10-25T19:42:34.000000Z"},{"id":78,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:42:32.000000Z","updated_at":"2021-10-25T19:42:32.000000Z"},{"id":77,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:42:27.000000Z","updated_at":"2021-10-25T19:42:27.000000Z"},{"id":76,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:42:20.000000Z","updated_at":"2021-10-25T19:42:20.000000Z"},{"id":75,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:40:22.000000Z","updated_at":"2021-10-25T19:40:22.000000Z"},{"id":74,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:40:06.000000Z","updated_at":"2021-10-25T19:40:06.000000Z"},{"id":73,"user_id":7,"mobile":"8948228157","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:38:40.000000Z","updated_at":"2021-10-25T19:38:40.000000Z"},{"id":72,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:28:01.000000Z","updated_at":"2021-10-25T19:28:01.000000Z"},{"id":71,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:26:24.000000Z","updated_at":"2021-10-25T19:26:24.000000Z"},{"id":70,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:22:51.000000Z","updated_at":"2021-10-25T19:22:51.000000Z"},{"id":69,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:20:52.000000Z","updated_at":"2021-10-25T19:20:52.000000Z"},{"id":68,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:18:19.000000Z","updated_at":"2021-10-25T19:18:19.000000Z"},{"id":67,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:17:46.000000Z","updated_at":"2021-10-25T19:17:46.000000Z"},{"id":66,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:16:31.000000Z","updated_at":"2021-10-25T19:16:31.000000Z"},{"id":65,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:14:56.000000Z","updated_at":"2021-10-25T19:14:56.000000Z"},{"id":64,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:12:36.000000Z","updated_at":"2021-10-25T19:12:36.000000Z"},{"id":63,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:12:35.000000Z","updated_at":"2021-10-25T19:12:35.000000Z"},{"id":62,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:10:58.000000Z","updated_at":"2021-10-25T19:10:58.000000Z"},{"id":61,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:08:55.000000Z","updated_at":"2021-10-25T19:08:55.000000Z"},{"id":60,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:05:30.000000Z","updated_at":"2021-10-25T19:05:30.000000Z"},{"id":59,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T19:04:34.000000Z","updated_at":"2021-10-25T19:04:34.000000Z"},{"id":58,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:59:38.000000Z","updated_at":"2021-10-25T18:59:38.000000Z"},{"id":57,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:56:02.000000Z","updated_at":"2021-10-25T18:56:02.000000Z"},{"id":56,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:47:28.000000Z","updated_at":"2021-10-25T18:47:28.000000Z"},{"id":55,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:46:26.000000Z","updated_at":"2021-10-25T18:46:26.000000Z"},{"id":54,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:42:53.000000Z","updated_at":"2021-10-25T18:42:53.000000Z"},{"id":53,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:40:41.000000Z","updated_at":"2021-10-25T18:40:41.000000Z"},{"id":52,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:40:41.000000Z","updated_at":"2021-10-25T18:40:41.000000Z"},{"id":51,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:37:19.000000Z","updated_at":"2021-10-25T18:37:19.000000Z"},{"id":50,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:35:49.000000Z","updated_at":"2021-10-25T18:35:49.000000Z"},{"id":49,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:35:08.000000Z","updated_at":"2021-10-25T18:35:08.000000Z"},{"id":48,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:31:16.000000Z","updated_at":"2021-10-25T18:31:16.000000Z"},{"id":47,"user_id":7,"mobile":"8948228157","orderid":"","total":637,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":637,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-25T18:27:00.000000Z","updated_at":"2021-10-25T18:27:00.000000Z"},{"id":46,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:10:17.000000Z","updated_at":"2021-10-23T15:10:17.000000Z"},{"id":45,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:07:52.000000Z","updated_at":"2021-10-23T15:07:52.000000Z"},{"id":44,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:07:28.000000Z","updated_at":"2021-10-23T15:07:28.000000Z"},{"id":43,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:06:06.000000Z","updated_at":"2021-10-23T15:06:06.000000Z"},{"id":42,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:04:07.000000Z","updated_at":"2021-10-23T15:04:07.000000Z"},{"id":41,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:03:04.000000Z","updated_at":"2021-10-23T15:03:04.000000Z"},{"id":40,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:01:29.000000Z","updated_at":"2021-10-23T15:01:29.000000Z"},{"id":39,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T15:00:49.000000Z","updated_at":"2021-10-23T15:00:49.000000Z"},{"id":38,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:59:42.000000Z","updated_at":"2021-10-23T14:59:42.000000Z"},{"id":37,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:49:50.000000Z","updated_at":"2021-10-23T14:49:50.000000Z"},{"id":36,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:36:24.000000Z","updated_at":"2021-10-23T14:36:24.000000Z"},{"id":35,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:32:46.000000Z","updated_at":"2021-10-23T14:32:46.000000Z"},{"id":34,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:27:52.000000Z","updated_at":"2021-10-23T14:27:52.000000Z"},{"id":33,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:23:49.000000Z","updated_at":"2021-10-23T14:23:49.000000Z"},{"id":32,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:18:02.000000Z","updated_at":"2021-10-23T14:18:02.000000Z"},{"id":31,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:05:37.000000Z","updated_at":"2021-10-23T14:05:37.000000Z"},{"id":30,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T14:00:41.000000Z","updated_at":"2021-10-23T14:00:41.000000Z"},{"id":29,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:52:06.000000Z","updated_at":"2021-10-23T13:52:06.000000Z"},{"id":28,"user_id":3,"mobile":"8787847945","orderid":"","total":168,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":168,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:51:59.000000Z","updated_at":"2021-10-23T13:51:59.000000Z"},{"id":27,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:51:07.000000Z","updated_at":"2021-10-23T13:51:07.000000Z"},{"id":26,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:42:33.000000Z","updated_at":"2021-10-23T13:42:33.000000Z"},{"id":25,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:42:05.000000Z","updated_at":"2021-10-23T13:42:05.000000Z"},{"id":24,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:41:22.000000Z","updated_at":"2021-10-23T13:41:22.000000Z"},{"id":23,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:35:33.000000Z","updated_at":"2021-10-23T13:35:33.000000Z"},{"id":22,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T13:25:45.000000Z","updated_at":"2021-10-23T13:25:45.000000Z"},{"id":21,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T12:32:20.000000Z","updated_at":"2021-10-23T12:32:20.000000Z"},{"id":20,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T12:27:43.000000Z","updated_at":"2021-10-23T12:27:43.000000Z"},{"id":19,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T12:27:06.000000Z","updated_at":"2021-10-23T12:27:06.000000Z"},{"id":18,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T11:35:25.000000Z","updated_at":"2021-10-23T11:35:25.000000Z"},{"id":17,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T11:35:03.000000Z","updated_at":"2021-10-23T11:35:03.000000Z"},{"id":16,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T07:42:58.000000Z","updated_at":"2021-10-23T07:42:58.000000Z"},{"id":15,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T07:40:22.000000Z","updated_at":"2021-10-23T07:40:22.000000Z"},{"id":14,"user_id":3,"mobile":"8787847945","orderid":"","total":290,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":290,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T07:27:43.000000Z","updated_at":"2021-10-23T07:27:43.000000Z"},{"id":13,"user_id":3,"mobile":"8787847945","orderid":"","total":145,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":145,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-23T07:16:13.000000Z","updated_at":"2021-10-23T07:16:13.000000Z"},{"id":12,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-01T09:24:00.000000Z","updated_at":"2021-10-01T09:24:00.000000Z"},{"id":11,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T08:40:17.000000Z","updated_at":"2021-10-01T08:40:17.000000Z"},{"id":10,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T08:36:53.000000Z","updated_at":"2021-10-01T08:36:53.000000Z"},{"id":9,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T08:35:25.000000Z","updated_at":"2021-10-01T08:35:25.000000Z"},{"id":8,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:16:15.000000Z","updated_at":"2021-10-01T06:16:15.000000Z"},{"id":7,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:14:26.000000Z","updated_at":"2021-10-01T06:14:26.000000Z"},{"id":6,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:13:23.000000Z","updated_at":"2021-10-01T06:13:23.000000Z"},{"id":5,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:13:06.000000Z","updated_at":"2021-10-01T06:13:06.000000Z"},{"id":4,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:12:29.000000Z","updated_at":"2021-10-01T06:12:29.000000Z"},{"id":3,"user_id":3,"mobile":"8787847945","orderid":"","total":190,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":190,"payment_id":"","payment_method":"Razorpay","status":"0","active_status":"0","created_at":"2021-10-01T06:10:55.000000Z","updated_at":"2021-10-01T06:10:55.000000Z"},{"id":2,"user_id":3,"mobile":"8787847945","orderid":"","total":2799,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":2799,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-01T05:47:58.000000Z","updated_at":"2021-10-01T05:47:58.000000Z"},{"id":1,"user_id":5,"mobile":"8787847945","orderid":"","total":435,"delivery_charge":0,"delivaryperson_id":"","delivared_date":"0000-00-00 00:00:00","final_total":435,"payment_id":"","payment_method":"Razorpay","status":"1","active_status":"1","created_at":"2021-10-01T03:40:50.000000Z","updated_at":"2021-10-01T03:40:50.000000Z"}]
/// customizorder : [{"id":81,"cid":61,"product_name":null,"category_id":3,"caret":"null","gram":null,"imagepicker":"IMG-2022-08-29225771753.jpg","description":null,"holemarks":null,"size":null,"status":null,"created_at":"2022-08-29T14:02:22.000000Z","updated_at":"2022-08-29T14:02:22.000000Z"},{"id":80,"cid":61,"product_name":null,"category_id":3,"caret":"null","gram":null,"imagepicker":"IMG-2022-08-291125753202.jpg","description":null,"holemarks":null,"size":null,"status":null,"created_at":"2022-08-29T14:02:19.000000Z","updated_at":"2022-08-29T14:02:19.000000Z"},{"id":78,"cid":61,"product_name":null,"category_id":3,"caret":"null","gram":null,"imagepicker":"IMG-2022-08-291314150144.jpg","description":null,"holemarks":null,"size":null,"status":null,"created_at":"2022-08-29T08:27:47.000000Z","updated_at":"2022-08-29T08:27:47.000000Z"},{"id":77,"cid":61,"product_name":null,"category_id":3,"caret":"null","gram":null,"imagepicker":"IMG-2022-08-25790248305.jpg","description":null,"holemarks":null,"size":null,"status":null,"created_at":"2022-08-25T14:20:14.000000Z","updated_at":"2022-08-25T14:20:14.000000Z"},{"id":76,"cid":61,"product_name":null,"category_id":3,"caret":"null","gram":null,"imagepicker":"IMG-2022-08-25100259171.jpg","description":null,"holemarks":null,"size":null,"status":null,"created_at":"2022-08-25T14:17:49.000000Z","updated_at":"2022-08-25T14:17:49.000000Z"}]

History3Model history3ModelFromJson(String str) => History3Model.fromJson(json.decode(str));
String history3ModelToJson(History3Model data) => json.encode(data.toJson());
class History3Model {
  History3Model({
      bool? error, 
      List<OrderDetailsData>? orderDetailsData, 
      List<OrderData>? orderData, 
      List<Customizorder>? customizorder,}){
    _error = error;
    _orderDetailsData = orderDetailsData;
    _orderData = orderData;
    _customizorder = customizorder;
}

  History3Model.fromJson(dynamic json) {
    _error = json['error'];
    if (json['orderDetailsData'] != null) {
      _orderDetailsData = [];
      json['orderDetailsData'].forEach((v) {
        _orderDetailsData?.add(OrderDetailsData.fromJson(v));
      });
    }
    if (json['orderData'] != null) {
      _orderData = [];
      json['orderData'].forEach((v) {
        _orderData?.add(OrderData.fromJson(v));
      });
    }
    if (json['customizorder'] != null) {
      _customizorder = [];
      json['customizorder'].forEach((v) {
        _customizorder?.add(Customizorder.fromJson(v));
      });
    }
  }
  bool? _error;
  List<OrderDetailsData>? _orderDetailsData;
  List<OrderData>? _orderData;
  List<Customizorder>? _customizorder;
History3Model copyWith({  bool? error,
  List<OrderDetailsData>? orderDetailsData,
  List<OrderData>? orderData,
  List<Customizorder>? customizorder,
}) => History3Model(  error: error ?? _error,
  orderDetailsData: orderDetailsData ?? _orderDetailsData,
  orderData: orderData ?? _orderData,
  customizorder: customizorder ?? _customizorder,
);
  bool? get error => _error;
  List<OrderDetailsData>? get orderDetailsData => _orderDetailsData;
  List<OrderData>? get orderData => _orderData;
  List<Customizorder>? get customizorder => _customizorder;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    if (_orderDetailsData != null) {
      map['orderDetailsData'] = _orderDetailsData?.map((v) => v.toJson()).toList();
    }
    if (_orderData != null) {
      map['orderData'] = _orderData?.map((v) => v.toJson()).toList();
    }
    if (_customizorder != null) {
      map['customizorder'] = _customizorder?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 81
/// cid : 61
/// product_name : null
/// category_id : 3
/// caret : "null"
/// gram : null
/// imagepicker : "IMG-2022-08-29225771753.jpg"
/// description : null
/// holemarks : null
/// size : null
/// status : null
/// created_at : "2022-08-29T14:02:22.000000Z"
/// updated_at : "2022-08-29T14:02:22.000000Z"

Customizorder customizorderFromJson(String str) => Customizorder.fromJson(json.decode(str));
String customizorderToJson(Customizorder data) => json.encode(data.toJson());
class Customizorder {
  Customizorder({
      int? id, 
      int? cid, 
      dynamic productName, 
      int? categoryId, 
      String? caret, 
      dynamic gram, 
      String? imagepicker, 
      dynamic description, 
      dynamic holemarks, 
      dynamic size, 
      dynamic status, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _cid = cid;
    _productName = productName;
    _categoryId = categoryId;
    _caret = caret;
    _gram = gram;
    _imagepicker = imagepicker;
    _description = description;
    _holemarks = holemarks;
    _size = size;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Customizorder.fromJson(dynamic json) {
    _id = json['id'];
    _cid = json['cid'];
    _productName = json['product_name'];
    _categoryId = json['category_id'];
    _caret = json['caret'];
    _gram = json['gram'];
    _imagepicker = json['imagepicker'];
    _description = json['description'];
    _holemarks = json['holemarks'];
    _size = json['size'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _cid;
  dynamic _productName;
  int? _categoryId;
  String? _caret;
  dynamic _gram;
  String? _imagepicker;
  dynamic _description;
  dynamic _holemarks;
  dynamic _size;
  dynamic _status;
  String? _createdAt;
  String? _updatedAt;
Customizorder copyWith({  int? id,
  int? cid,
  dynamic productName,
  int? categoryId,
  String? caret,
  dynamic gram,
  String? imagepicker,
  dynamic description,
  dynamic holemarks,
  dynamic size,
  dynamic status,
  String? createdAt,
  String? updatedAt,
}) => Customizorder(  id: id ?? _id,
  cid: cid ?? _cid,
  productName: productName ?? _productName,
  categoryId: categoryId ?? _categoryId,
  caret: caret ?? _caret,
  gram: gram ?? _gram,
  imagepicker: imagepicker ?? _imagepicker,
  description: description ?? _description,
  holemarks: holemarks ?? _holemarks,
  size: size ?? _size,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get cid => _cid;
  dynamic get productName => _productName;
  int? get categoryId => _categoryId;
  String? get caret => _caret;
  dynamic get gram => _gram;
  String? get imagepicker => _imagepicker;
  dynamic get description => _description;
  dynamic get holemarks => _holemarks;
  dynamic get size => _size;
  dynamic get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cid'] = _cid;
    map['product_name'] = _productName;
    map['category_id'] = _categoryId;
    map['caret'] = _caret;
    map['gram'] = _gram;
    map['imagepicker'] = _imagepicker;
    map['description'] = _description;
    map['holemarks'] = _holemarks;
    map['size'] = _size;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 215
/// user_id : 61
/// mobile : "8709678738"
/// orderid : null
/// total : 0
/// delivery_charge : 100
/// delivaryperson_id : null
/// delivared_date : null
/// final_total : 90000
/// payment_id : null
/// payment_method : "0"
/// status : "1"
/// active_status : "1"
/// created_at : "2022-08-29T17:29:30.000000Z"
/// updated_at : "2022-08-29T17:29:30.000000Z"

OrderData orderDataFromJson(String str) => OrderData.fromJson(json.decode(str));
String orderDataToJson(OrderData data) => json.encode(data.toJson());
class OrderData {
  OrderData({
      int? id, 
      int? userId, 
      String? mobile, 
      dynamic orderid, 
      int? total, 
      int? deliveryCharge, 
      dynamic delivarypersonId, 
      dynamic delivaredDate, 
      int? finalTotal, 
      dynamic paymentId, 
      String? paymentMethod, 
      String? status, 
      String? activeStatus, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _mobile = mobile;
    _orderid = orderid;
    _total = total;
    _deliveryCharge = deliveryCharge;
    _delivarypersonId = delivarypersonId;
    _delivaredDate = delivaredDate;
    _finalTotal = finalTotal;
    _paymentId = paymentId;
    _paymentMethod = paymentMethod;
    _status = status;
    _activeStatus = activeStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  OrderData.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _mobile = json['mobile'];
    _orderid = json['orderid'];
    _total = json['total'];
    _deliveryCharge = json['delivery_charge'];
    _delivarypersonId = json['delivaryperson_id'];
    _delivaredDate = json['delivared_date'];
    _finalTotal = json['final_total'];
    _paymentId = json['payment_id'];
    _paymentMethod = json['payment_method'];
    _status = json['status'];
    _activeStatus = json['active_status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  String? _mobile;
  dynamic _orderid;
  int? _total;
  int? _deliveryCharge;
  dynamic _delivarypersonId;
  dynamic _delivaredDate;
  int? _finalTotal;
  dynamic _paymentId;
  String? _paymentMethod;
  String? _status;
  String? _activeStatus;
  String? _createdAt;
  String? _updatedAt;
OrderData copyWith({  int? id,
  int? userId,
  String? mobile,
  dynamic orderid,
  int? total,
  int? deliveryCharge,
  dynamic delivarypersonId,
  dynamic delivaredDate,
  int? finalTotal,
  dynamic paymentId,
  String? paymentMethod,
  String? status,
  String? activeStatus,
  String? createdAt,
  String? updatedAt,
}) => OrderData(  id: id ?? _id,
  userId: userId ?? _userId,
  mobile: mobile ?? _mobile,
  orderid: orderid ?? _orderid,
  total: total ?? _total,
  deliveryCharge: deliveryCharge ?? _deliveryCharge,
  delivarypersonId: delivarypersonId ?? _delivarypersonId,
  delivaredDate: delivaredDate ?? _delivaredDate,
  finalTotal: finalTotal ?? _finalTotal,
  paymentId: paymentId ?? _paymentId,
  paymentMethod: paymentMethod ?? _paymentMethod,
  status: status ?? _status,
  activeStatus: activeStatus ?? _activeStatus,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get userId => _userId;
  String? get mobile => _mobile;
  dynamic get orderid => _orderid;
  int? get total => _total;
  int? get deliveryCharge => _deliveryCharge;
  dynamic get delivarypersonId => _delivarypersonId;
  dynamic get delivaredDate => _delivaredDate;
  int? get finalTotal => _finalTotal;
  dynamic get paymentId => _paymentId;
  String? get paymentMethod => _paymentMethod;
  String? get status => _status;
  String? get activeStatus => _activeStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['mobile'] = _mobile;
    map['orderid'] = _orderid;
    map['total'] = _total;
    map['delivery_charge'] = _deliveryCharge;
    map['delivaryperson_id'] = _delivarypersonId;
    map['delivared_date'] = _delivaredDate;
    map['final_total'] = _finalTotal;
    map['payment_id'] = _paymentId;
    map['payment_method'] = _paymentMethod;
    map['status'] = _status;
    map['active_status'] = _activeStatus;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 41
/// user_id : 61
/// order_id : "213"
/// prodid : null
/// productname : "Necklace"
/// image : null
/// variant : null
/// quantity : null
/// price : null
/// discounted_price : null
/// sub_total : null
/// status : "1"
/// active_status : "1"
/// created_at : "2022-08-29T15:59:48.000000Z"
/// updated_at : "2022-08-29T15:59:48.000000Z"

OrderDetailsData orderDetailsDataFromJson(String str) => OrderDetailsData.fromJson(json.decode(str));
String orderDetailsDataToJson(OrderDetailsData data) => json.encode(data.toJson());
class OrderDetailsData {
  OrderDetailsData({
      int? id, 
      int? userId, 
      String? orderId, 
      dynamic prodid, 
      String? productname, 
      dynamic image, 
      dynamic variant, 
      dynamic quantity, 
      dynamic price, 
      dynamic discountedPrice, 
      dynamic subTotal, 
      String? status, 
      String? activeStatus, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _orderId = orderId;
    _prodid = prodid;
    _productname = productname;
    _image = image;
    _variant = variant;
    _quantity = quantity;
    _price = price;
    _discountedPrice = discountedPrice;
    _subTotal = subTotal;
    _status = status;
    _activeStatus = activeStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  OrderDetailsData.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _orderId = json['order_id'];
    _prodid = json['prodid'];
    _productname = json['productname'];
    _image = json['image'];
    _variant = json['variant'];
    _quantity = json['quantity'];
    _price = json['price'];
    _discountedPrice = json['discounted_price'];
    _subTotal = json['sub_total'];
    _status = json['status'];
    _activeStatus = json['active_status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
  int? _userId;
  String? _orderId;
  dynamic _prodid;
  String? _productname;
  dynamic _image;
  dynamic _variant;
  dynamic _quantity;
  dynamic _price;
  dynamic _discountedPrice;
  dynamic _subTotal;
  String? _status;
  String? _activeStatus;
  String? _createdAt;
  String? _updatedAt;
OrderDetailsData copyWith({  int? id,
  int? userId,
  String? orderId,
  dynamic prodid,
  String? productname,
  dynamic image,
  dynamic variant,
  dynamic quantity,
  dynamic price,
  dynamic discountedPrice,
  dynamic subTotal,
  String? status,
  String? activeStatus,
  String? createdAt,
  String? updatedAt,
}) => OrderDetailsData(  id: id ?? _id,
  userId: userId ?? _userId,
  orderId: orderId ?? _orderId,
  prodid: prodid ?? _prodid,
  productname: productname ?? _productname,
  image: image ?? _image,
  variant: variant ?? _variant,
  quantity: quantity ?? _quantity,
  price: price ?? _price,
  discountedPrice: discountedPrice ?? _discountedPrice,
  subTotal: subTotal ?? _subTotal,
  status: status ?? _status,
  activeStatus: activeStatus ?? _activeStatus,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  int? get userId => _userId;
  String? get orderId => _orderId;
  dynamic get prodid => _prodid;
  String? get productname => _productname;
  dynamic get image => _image;
  dynamic get variant => _variant;
  dynamic get quantity => _quantity;
  dynamic get price => _price;
  dynamic get discountedPrice => _discountedPrice;
  dynamic get subTotal => _subTotal;
  String? get status => _status;
  String? get activeStatus => _activeStatus;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['order_id'] = _orderId;
    map['prodid'] = _prodid;
    map['productname'] = _productname;
    map['image'] = _image;
    map['variant'] = _variant;
    map['quantity'] = _quantity;
    map['price'] = _price;
    map['discounted_price'] = _discountedPrice;
    map['sub_total'] = _subTotal;
    map['status'] = _status;
    map['active_status'] = _activeStatus;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}