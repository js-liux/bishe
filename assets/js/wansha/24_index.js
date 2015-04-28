/**
 * @name zhangyy-g@grandsoft.com.cn
 * @description zhangyy's code
 * Date: 15/1/27
 * Time: 下午8:58
 *
 */
(function ($) {
    var index = {
        init: function (container, options) {
            var self = this
            self.__container = container
            self.__options = options

            App.common.modules.slide.init(container.find('.slide-wrap'))

        }
    }

    $(function () {
        index.init($('.mod-index'), pageConfig)
    })
})(jQuery)