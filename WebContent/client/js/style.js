// ����Ч��

$.fn.countTo = function (options) {
    options = options || {};

    return $(this).each(function () {
        // ���õ�ǰԪ�ص�ѡ��
        var settings = $.extend({}, $.fn.countTo.defaults, {
            from:            $(this).data('from'),
            to:              $(this).data('to'),
            speed:           $(this).data('speed'),
            refreshInterval: $(this).data('refresh-interval'),
            decimals:        $(this).data('decimals')
        }, options);

        // ���ٴθ��µ�ֵ���Լ�ÿ�����µ�ֵ���Ӷ���
        var loops = Math.ceil(settings.speed / settings.refreshInterval),
            increment = (settings.to - settings.from) / loops;

        // references & variables that will change with each update
        var self = this,
            $self = $(this),
            loopCount = 0,
            value = settings.from,
            data = $self.data('countTo') || {};

        $self.data('countTo', data);

        // ��������ҵ����еļ�����������
        if (data.interval) {
            clearInterval(data.interval);
        }
        data.interval = setInterval(updateTimer, settings.refreshInterval);

        // ����ʼֵ��ʼ��Ԫ��
        render(value);

        function updateTimer() {
            value += increment;
            loopCount++;

            render(value);

            if (typeof(settings.onUpdate) == 'function') {
                settings.onUpdate.call(self, value);
            }

            if (loopCount >= loops) {
                // ɾ�����
                $self.removeData('countTo');
                clearInterval(data.interval);
                value = settings.to;

                if (typeof(settings.onComplete) == 'function') {
                    settings.onComplete.call(self, value);
                }
            }
        }

        function render(value) {
            var formattedValue = settings.formatter.call(self, value, settings);
            $self.html(formattedValue);
        }
    });
};

$.fn.countTo.defaults = {
    from: 0,               // Ԫ�ؿ�ʼ������
    to: 0,                 // Ԫ�ؽ���������
    speed: 1,           // ��Ŀ�����֮�����೤ʱ��
    refreshInterval: 0.5,  //  ����Ԫ�ص�Ƶ��
    decimals: 0,           // Ҫ��ʾ��С��λ��
    formatter: formatter,  // ����������ڸ�ʽ����Ⱦǰ��ֵ
    onUpdate: null,        // ÿ��Ԫ�ظ���ʱ�Ļص�����
    onComplete: null       // Ԫ����ɸ���ʱ�Ļص�����
};

function formatter(value, settings) {
    return value.toFixed(settings.decimals);
}



// �Զ����ʽ��ʾ��
$('#count-number').data('', {
    formatter: function (value, options) {
        return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ');
    }
});



$(window).scroll(function() {
    if ($(window).scrollTop() > 100) {//500 ����������������� ����߶�  ���������� ���ֿ�ʼ����
        //��ʼ���еļ�ʱ��
        $('.timer').each(count);
        $('.count-title').removeClass('timer');
    }
});



function count(options) {
    var $this = $(this);
    options = $.extend({}, options || {}, $this.data('countToOptions') || {});
    $this.countTo(options);
}

function gotohome() {
    window.location.href = "${pageContext.request.contextPath}/client/index.jsp"; 
}
function gotosum() {
    window.location.href = "${pageContext.request.contextPath}/client/index.jsp#sum"; 
}
function gotofeatures() {
    window.location.href = "${pageContext.request.contextPath}/client/index.jsp#features"; 
}
function gotoscenery() {
    window.location.href = "${pageContext.request.contextPath}/client/scenery.jsp"; 
}
function gotofood() {
    window.location.href = "${pageContext.request.contextPath}/client/food.jsp"; 
}
function gotomap() {
    window.location.href = "${pageContext.request.contextPath}/client/map.jsp"; 
}
function gotocontact() {
    window.location.href = "${pageContext.request.contextPath}/client/strategy.jsp"; 
}