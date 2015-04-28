/**
 * @name zhangyy-g@grandsoft.com.cn
 * @description zhangyy's code
 * Date: 15/1/25
 * Time: 下午7:40
 *
 */
(function ($) {
    var slide = {

        __index: 0,

        __interval: 5000,

        __maxIndex: 0,

        init: function (container, options) {
            var self = this
            self.__container = container
            self.__options = options
            self.__maxIndex = container.find('.slide-item').length - 2

            self.__initItems()
            self.__switchIndex(0)
            self.__bindEvent()
            self.__timerStart()
        },

        __initItems: function () {
            var self = this
            var container = self.__container
            var width = self.__width = container.width()
            var itemsPanel = container.find('.slide-items')
            var itemPanel = itemsPanel.find('.slide-item')
            self.__maxWidth = itemPanel.length * width
            itemsPanel.width(self.__maxWidth)
            itemPanel.width(width)
            itemsPanel.find('.item-bg').height(width / 3)


            if ($(document.body).hasClass('minisite')) {
                container.height(width / 3 + 100)
            }else {
                container.height(260)
            }
            self.__switchIndex(0)
        },

        __bindEvent: function () {
            var self = this
            var container = self.__container

            $(window).resize(function () {
                self.__initItems()
            })

            function toLeft() {
                self.__timerEnd()
                var index = self.__index - 1
                self.__switchIndex(index)
            }

            container.on('click', '.slide-left', function () {
                toLeft()
            })

            /*touch.on(container[0], 'swiperight', function () {
             toLeft()
             self.__timerStart()
             })*/

            function toRight() {
                self.__timerEnd()
                var index = self.__index + 1
                self.__switchIndex(index)
            }

            container.on('click', '.slide-right', function () {
                toRight()
            })

            /*touch.on(container[0], 'swipeleft', function () {
             toRight()
             self.__timerStart()
             })*/
            try {
                touch.on(container[0], 'drag', function (evt) {
                    self.__timerEnd()
                    var index = self.__index
                    var left = -self.__width * index
                    var itemsPanel = self.__container.find('.slide-items')
                    var x = evt.x
                    left += x
                    itemsPanel.attr('style', 'transform:translate3d(' + left + 'px, 0px, 0px);-webkit-transform:translate3d(' + left + 'px, 0px, 0px);').width(self.__maxWidth)
                })

                touch.on(container[0], 'dragend', function (evt) {
                    var index = self.__index
                    var x = evt.x
                    if (x < 0) {
                        index++
                    } else {
                        index--
                    }
                    self.__switchIndex(index)
                    self.__timerStart()
                })
            } catch (e) {

            }

            container.on('click', '.index-item', function () {
                var index = $(this).data('index')
                self.__timerEnd()
                self.__switchIndex(index)
            })

            container.on('mouseenter', function () {
                self.__timerEnd()
            })

            container.on('mouseleave', function () {
                self.__timerStart()
            })
        },

        __timerStart: function () {
            var self = this

            function process() {
                var index = self.__index + 1
                self.__switchIndex(index)
                self.__timer = window.setTimeout(process, self.__interval)
            }

            self.__timer = window.setTimeout(process, self.__interval)
        },

        __timerEnd: function () {
            var self = this
            window.clearTimeout(self.__timer)
        },

        __switchIndex: function (index) {
            var self = this
            var itemsPanel = self.__container.find('.slide-items')
            var maxIndex = self.__maxIndex
            var tranStr = '-webkit-transition:all .3s ease-in;-moz-transition:all .3s ease-in;-o-transition:all .3s ease-in;transition:all .3s ease-in;'

            if (index < 0) {
                self.__index = 0
                itemsPanel.attr('style', 'transform:translate3d(0px, 0px, 0px);-webkit-transform:translate3d(0px, 0px, 0px);' + tranStr).width(self.__maxWidth)
                return false
            }

            var x = -self.__width * index


            itemsPanel.attr('style', 'transform:translate3d(' + x + 'px, 0px, 0px);-webkit-transform:translate3d(' + x + 'px, 0px, 0px);' + tranStr).width(self.__maxWidth)

            if (index === maxIndex + 1) {
                index = 0

                itemsPanel.one('transitionend', function () {
                    itemsPanel.attr('style', 'transform:translate3d(0px, 0px, 0px);-webkit-transform:translate3d(0px, 0px, 0px);').width(self.__maxWidth)
                })
            }

            self.__index = index
            var indexPanel = self.__container.find('.slide-index')
            indexPanel.find('.index-item').removeClass('active').eq(index).addClass('active')
        }
    }

    App.common.modules.slide = slide
})(jQuery)