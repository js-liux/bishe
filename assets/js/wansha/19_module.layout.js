/**
 * @name Edwin
 * @description
 * Date: 2014/10/26
 * Time: 14:42
 *
 */
(function ($) {
    var layout = {
        __container: null,

        init: function (container, options) {
            var self = this
            self.__container = container
            self.__options = options

            self.__bindEvent()

            self.__toggleBacktop()

            self.__initMessageCount()
        },

        __bindEvent: function () {
            var self = this
            var container = self.__container
            var options = self.__options

            //我要提问
            $('.ask-btn').click(function () {
                if (!options.me.userId) {
                    window.location.href = '/login?next=/ask/popup'
                    return false
                }
                var width = $(window).width()
                width = width > 640 ? 640 : (width - 20)

                var dialog = new App.common.modules.Dialog({
                    cssClass: $(document.body).hasClass('minisite') ? 'minisite-dialog' : '',
                    title: '提问',
                    width: width,
                    top: 40,
                    isFixed: false,
                    limitHeight: false,
                    isConfirm: false,
                    message: '<div class="mod-ask-panel"></div>'
                })

                App.common.modules.ask.init(dialog.element.find('.mod-ask-panel'), $.extend({
                    question: $.trim(container.find('.ask-input').val()),
                    callback: function (success) {
                        if (success) {
                            dialog.close()
                        }
                    }
                }, options))
            })

            //$('.ask-btn').trigger('click')

            container.on('click', '.dropdown-btn', function () {
                var item = $(this).next()
                item.toggleClass('active')
                $(document).one('click', function () {
                    item.removeClass('active')
                })
                return false
            })

            $('.backtop').click(function () {
                $(this).hide()
                App.common.modules.common.scrollTo(0)
            })

            $(window).scroll(function () {
                self.__toggleBacktop()
            })
        },

        __toggleBacktop: function () {
            var top = $(window).scrollTop()
            if (top > 60) {
                $('.backtop').show()
            } else {
                $('.backtop').hide()
            }
        },

        __initMessageCount: function () {
            var self = this
            var container = self.__container
            var options = self.__options
            var msgPanel = container.find('.message-wrap')

            if (options.me && options.me.userId) {
                $.ajax({
                    url: '/s/getMessageStats',
                    method: 'post',
                    data: {
                        currentUserKey: 'userId'
                    },
                    success: function (data) {
                        if (data.code == '200') {
                            var data = data.data
                            if (data.totalUnreadCnt > 0) {
                                msgPanel.find('.totalcount').text(data.totalUnreadCnt).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.totalcount').hide()
                            }

                            if(data.unreadAskMsgCnt > 0) {
                                msgPanel.find('.msg-ask .count').text(data.unreadAskMsgCnt).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.msg-ask .count').hide()
                            }

                            if(data.unreadCommentCnt > 0) {
                                msgPanel.find('.msg-comment .count').text(data.unreadCommentCnt).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.msg-comment .count').hide()
                            }

                            if(data.unreadLikeCnt > 0) {
                                msgPanel.find('.msg-touch .count').text(data.unreadLikeCnt).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.msg-touch .count').hide()
                            }

                            if(data.unreadTryMsgCnt > 0) {
                                msgPanel.find('.msg-try .count').text(data.unreadTryMsgCnt).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.msg-try .count').hide()
                            }

                            if(data.unreadAdminMsgCount > 0) {
                                msgPanel.find('.msg-admin .count').text(data.unreadAdminMsgCount).css({display: 'inline-block'})
                            } else {
                                msgPanel.find('.msg-admin .count').hide()
                            }
                        }
                    }
                })
            }
        }
    }
    App.common.modules.layout = layout

    $(function () {
        App.common.modules.layout.init($('.mod-header-container'), pageConfig)
    })
})(jQuery)

//响应式处理
$(function () {
    var panel = $(document.body)

    function resize() {
        var width = $(window).width()
        if (width < 780) {
            panel.addClass('minisite')
        } else {
            panel.removeClass('minisite')
        }
    }

    $(window).resize(function () {
        resize()
    })
    resize()
})

//验证码模块
$(function () {
    var captchaPanel = $('.captcha')

    function changeCaptcha() {
        $('.captcha-img', captchaPanel).attr('src', '/captcha?' + new Date().getTime())
    }

    captchaPanel.on('click', '.captcha-img', function () {
        changeCaptcha()
    })

    captchaPanel.on('click', '.captcha-btn', function () {
        changeCaptcha()
    })
})

//placeholder
$(function () {
    $('input[placeholder]').placeholder(true)
})

//backbone router
$(function () {
    $(document).on('click', '.stateful', function (e) {
        Backbone.history.navigate(this.hash, true)
        return false
    })
})