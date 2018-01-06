/* 
* @Author: ivan
* @Date:   2017-11-19 19:04:23
* @Last Modified by:   Marte
* @Last Modified time: 2017-11-20 20:40:44
*/

require(['config'],function(){
    require(['jquery'],function($){
        
                  // 载入远程 HTML 文件代码并插入至 DOM 中。
                $('header').load('header.html .ht1');
                $('footer').load('footer.html',function(){
                     $('.f1').remove();
                });

                $.ajax({
                    type:"GET",
                    url:"../api/getcar.php",
                    success:function(res){
                        var total = 0;
                        $('.good ul')[0].innerHTML+= res.map(function(item,idx){
                                small_total = item.price*item.num;
                                total += small_total;
                                return `<li class='cp clearfix' data-id = '${item.id}'>
                                    <div class="go1 fl">
                                        <input type="checkbox" class='bbox' checked/>
                                        <div class="x1"><img src="${item.imgurl}" height="85" width="80"/></div>
                                    </div>
                                    <div class="go2 fl">
                                        <p class='x2'><a href="./goods.html">${item.details}</a></p>
                                        <span>直降</span>
                                    </div>
                                    <div class="go3 fl">
                                        <span class='x3'>1.50kg</span>
                                    </div>
                                    <div class="go4 fl">
                                        <span class='x4'>${item.price}</span>
                                    </div>
                                    <div class="go5 fl">
                                        <span class="x5">-00.00</span>
                                    </div>
                                    <div class="go6 fl">
                                        <i class='jianfa fl'>-</i>
                                        <input type="text" class='x6' value='${item.num}' maxlength='2'/>
                                        <i class="jiafa fr">+</i>
                                    </div>
                                    <div class="go7 fl">
                                         <span class='x7'>${small_total}</span>
                                    </div>
                                    <div class="go8 fl">
                                        <span>移入收藏</span>
                                        <span class='del'>删除</span>
                                    </div>
                                </li>`
                        }).join('');

                        // 商品总数
                        // 勾选
                        console.log(total);
                        $('.total').text(total.toFixed(2));
                        $('#cc').prop('checked',true);
                        $('#cc0').prop('checked',true);
                        // 件数
                        $('.jianshu').text(res.length);

                        // 数量加减
                        $('.cp').on('click','.jianfa',function(){
                            var val = $(this).next().val();
                            val--;
                            if(val>=0){
                                $(this).next().val(val);
                                var price = $(this).parent().closest('.cp').find('.x4').text()*1;
                                var small_total = $(this).parent().closest('.cp').find('.x7');
                                var xiaoji = ($(this).next().val()*price).toFixed(2);
                                small_total.text(xiaoji);
                                // 总额计算
                                var tt = ($('.total').text()*1-price).toFixed(2);
                                $('.total').text(tt);

                            }
                        })
                        $('.cp').on('click','.jiafa',function(){
                            var val = $(this).prev().val();
                            val++;
                            $(this).prev().val(val);
                            var price = $(this).parent().closest('.cp').find('.x4').text()*1;
                            var small_total = $(this).parent().closest('.cp').find('.x7');
                            var xiaoji = ($(this).prev().val()*price).toFixed(2);
                            small_total.text(xiaoji);
                            // 总额计算
                            var tt = ($('.total').text()*1+price).toFixed(2);
                            $('.total').text(tt);
                        }) 

                        // checkbox勾选事件计算总价
                        $('.cp').on('click','.bbox',function(){
                            var small_total = $(this).parent().closest('.cp').find('.x7').text()*1;
                            var total = $('.total').text()*1;
                            if($(this).prop('checked') === true){
                                $('.total').text((total+small_total).toFixed(2)); 
                            }else{
                               $('.total').text((total-small_total).toFixed(2)); 
                            }
                        })
                        // 全选计数
                        var tota = $('.total').text()*1;
                        $('#cc,#cc0').click(function(){
                              console.log(666)
                            if($(this).prop('checked') === false){
                                $('.total').text('0.00'); 
                                $('.bbox').prop('checked',false);
                            }else if($(this).prop('checked') === true){
                                $('.total').text(tota);
                                 $('.bbox').prop('checked',true);
                            }
                        })
                        // 删除商品事件
                        $('.cp').on('click','.del',function(){
                            // 计算实时总额
                            var xiaoji = $(this).closest('.cp').find('.x7').text()*1;
                            var total = $('.total').text()*1;
                            $('.total').text((total-xiaoji).toFixed(2));
                            // 获取对应商品id
                            var id  = $(this).closest('.cp').attr('data-id');
                            // 删除对应li
                            $(this).closest('.cp').fadeOut('slow',function(){
                                $(this).remove();
                                // 修改car数据库
                                $.ajax({
                                    type:'GET',
                                    url:'../api/resetcar.php',
                                    data:{'id':id},
                                })
                                // 当没有商品的时候，隐藏ul购物车盒子
                                if($('.cp').length === 0){
                                    $('.car1,.account').hide();
                                    $('.kong').show();
                            }
                            })
                        })

                        
                    },
                    dataType:'json'
                })
                
    })
})