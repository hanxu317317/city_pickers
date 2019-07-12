//
// Created with Android Studio.
// User: 三帆
// Date: 26/02/2019
// Time: 19:34
// email: sanfan.hx@alibaba-inc.com
// target:  自定义数据源
//
const Map<String, String> provincesData = {
  "10": "北京市",
  "120": "天津市",
};

const Map<String, dynamic> citiesData = {
  "710000": {
    "710100": {"name": "台湾", "alpha": "t"}
  },
  "10": {
    "110100": {"name": "北京城区", "alpha": "b"}
  },
  "110100": {
    "110101": {"name": "东城区", "alpha": "d"},
    "110102": {"name": "西城区", "alpha": "x"},
    "110105": {"name": "朝阳区", "alpha": "c"},
    "110106": {"name": "丰台区", "alpha": "f"},
    "110107": {"name": "石景山区", "alpha": "s"},
    "110108": {"name": "海淀区", "alpha": "h"},
    "110109": {"name": "门头沟区", "alpha": "m"},
    "110111": {"name": "房山区", "alpha": "f"},
    "110112": {"name": "通州区", "alpha": "t"},
    "110113": {"name": "顺义区", "alpha": "s"},
    "110114": {"name": "昌平区", "alpha": "c"},
    "110115": {"name": "大兴区", "alpha": "d"},
    "110116": {"name": "怀柔区", "alpha": "h"},
    "110117": {"name": "平谷区", "alpha": "p"},
    "110118": {"name": "密云区", "alpha": "m"},
    "110119": {"name": "延庆区", "alpha": "y"}
  },
  "120": {
    "120100": {"name": "天津城区", "alpha": "t"}
  },
  "120100": {
    "120101": {"name": "和平区", "alpha": "h"},
    "120102": {"name": "河东区", "alpha": "h"},
    "120103": {"name": "河西区", "alpha": "h"},
    "120104": {"name": "南开区", "alpha": "n"},
    "120105": {"name": "河北区", "alpha": "h"},
    "120106": {"name": "红桥区", "alpha": "h"},
    "120110": {"name": "东丽区", "alpha": "d"},
    "120111": {"name": "西青区", "alpha": "x"},
    "120112": {"name": "津南区", "alpha": "j"},
    "120113": {"name": "北辰区", "alpha": "b"},
    "120114": {"name": "武清区", "alpha": "w"},
    "120115": {"name": "宝坻区", "alpha": "b"},
    "120116": {"name": "滨海新区", "alpha": "b"},
    "120117": {"name": "宁河区", "alpha": "n"},
    "120118": {"name": "静海区", "alpha": "j"},
    "120119": {"name": "蓟州区", "alpha": "j"}
  }
};
