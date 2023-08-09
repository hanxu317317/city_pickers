/// 存放 全球 数据
/// 数据参考: https://github.com/glynnbird/countriesgeojson 可能存在误差
/// 如有问题. 请热心指正.

/// 国家数据
const Map<String, String> globalCountriesData = {
  "AFG": "阿富汗",
  "AGO": "安哥拉",
  "ALB": "阿尔巴尼亚",
  "ARE": "阿联酋",
  "ARG": "阿根廷",
  "ARM": "亚美尼亚",
  "ATA": "南极洲",
  "ATF": "法属南部领地",
  "AUS": "澳大利亚",
  "AUT": "奥地利",
  "AZE": "阿塞拜疆",
  "BDI": "布隆迪",
  "BEL": "比利时",
  "BEN": "贝宁",
  "BFA": "布基纳法索",
  "BGD": "孟加拉",
  "BGR": "保加利亚",
  "BHS": "巴哈马",
  "BIH": "波斯尼亚和黑塞哥维那",
  "BLR": "白俄罗斯",
  "BLZ": "伯利兹",
  "BMU": "百慕大",
  "BOL": "玻利维亚",
  "BRA": "巴西",
  "BRN": "文莱",
  "BTN": "不丹",
  "BWA": "博茨瓦纳",
  "CAF": "中非",
  "CAN": "加拿大",
  "CHE": "瑞士",
  "CHL": "智利",
  "CHN": "中国",
  "CIV": "科特迪瓦",
  "CMR": "喀麦隆",
  "COD": "刚果",
  "COG": "刚果",
  "COL": "哥伦比亚",
  "CRI": "哥斯达黎加",
  "CUB": "古巴",
  "CYP": "塞浦路斯",
  "CZE": "捷克",
  "DEU": "德国",
  "DJI": "吉布提",
  "DNK": "丹麦",
  "DOM": "多米尼加",
  "DZA": "阿尔及利亚",
  "ECU": "厄瓜多尔",
  "EGY": "埃及",
  "ERI": "厄立特里亚",
  "ESP": "西班牙",
  "EST": "爱沙尼亚",
  "ETH": "埃塞俄比亚",
  "FIN": "芬兰",
  "FJI": "斐济",
  "FLK": "弗兰克群岛",
  "FRA": "法国",
  "GAB": "加蓬",
  "GBR": "英国",
  "GUF": "法属圭亚那",
  "GHA": "加纳",
  "GIN": "几内亚",
  "GMB": "冈比亚",
  "GNB": "几内亚比绍",
  "GRC": "希腊",
  "GRL": "格陵兰",
  "GTM": "危地马拉",
  "GUY": "圭亚那",
  "HND": "洪都拉斯",
  "HRV": "克罗地亚",
  "HTI": "海地",
  "HUN": "匈牙利",
  "IDN": "印度尼西亚",
  "IND": "印度",
  "IRL": "爱尔兰",
  "IRN": "伊朗",
  "IRQ": "伊拉克",
  "ISL": "冰岛",
  "ISR": "以色列",
  "ITA": "意大利",
  "JAM": "牙买加",
  "JOR": "约旦",
  "JPN": "日本",
  "KAZ": "哈萨克斯坦",
  "KEN": "肯尼亚",
  "KGZ": "吉尔吉斯斯坦",
  "KHM": "柬埔寨",
  "KOR": "韩国",
  "KWT": "科威特",
  "LAO": "老挝",
  "LBN": "黎巴嫩",
  "LBR": "利比里亚",
  "LBY": "利比亚",
  "LKA": "斯里兰卡",
  "LSO": "莱索托",
  "LTU": "立陶宛",
  "LUX": "卢森堡",
  "LVA": "拉脱维亚",
  "MAR": "摩洛哥",
  "MDA": "摩尔多瓦",
  "MDG": "马达加斯加",
  "MEX": "墨西哥",
  "MKD": "马其顿",
  "MLI": "马里",
  "MLT": "马耳他",
  "MMR": "缅甸",
  "MNG": "蒙古",
  "MOZ": "莫桑比克",
  "MRT": "毛里塔尼亚",
  "MWI": "马拉维",
  "MYS": "马来西亚",
  "NAM": "纳米比亚",
  "NCL": "新喀里多尼亚",
  "NER": "尼日尔",
  "NGA": "尼日利亚",
  "NIC": "尼加拉瓜",
  "NLD": "荷兰",
  "NOR": "挪威",
  "NPL": "尼泊尔",
  "NZL": "新西兰",
  "OMN": "阿曼",
  "PAK": "巴基斯坦",
  "PAN": "巴拿马",
  "PER": "秘鲁",
  "PHL": "菲律宾",
  "PNG": "巴布亚新几内亚",
  "POL": "波兰",
  "PRI": "波多黎各",
  "PRK": "朝鲜",
  "PRT": "葡萄牙",
  "PRY": "巴拉圭",
  "QAT": "卡塔尔",
  "ROU": "罗马尼亚",
  "RUS": "俄罗斯",
  "RWA": "卢旺达",
  "SAU": "沙特阿拉伯",
  "SDN": "苏丹",
  "SEN": "塞内加尔",
  "SLB": "所罗门群岛",
  "SLE": "塞拉利昂",
  "SLV": "萨尔瓦多",
  "SOM": "索马里",
  "SUR": "苏里南",
  "SVK": "斯洛伐克",
  "SVN": "斯洛文尼亚",
  "SWE": "瑞典",
  "SWZ": "斯威士兰",
  "SYR": "叙利亚",
  "TCD": "乍得",
  "TGO": "多哥",
  "THA": "泰国",
  "TJK": "塔吉克斯坦",
  "TKM": "土库曼斯坦",
  "TLS": "东帝汶",
  "TTO": "特立尼达和多巴哥",
  "TUN": "突尼斯",
  "TUR": "土耳其",
  "TZA": "坦桑尼亚",
  "UGA": "乌干达",
  "UKR": "乌克兰",
  "URY": "乌拉圭",
  "USA": "美国",
  "UZB": "乌兹别克斯坦",
  "VEN": "委内瑞拉",
  "VNM": "越南",
  "VUT": "瓦努阿图",
  "PSE": "巴勒斯坦",
  "YEM": "也门",
  "ZAF": "南非",
  "ZMB": "赞比亚",
  "ZWE": "津巴布韦"
};


/// 各国城市数据
const Map<String, dynamic> globalCitiesData = {
  "AFG": {
    "AFG000HEA": {
      "name": "赫拉特",
      "alpha": "h"
    },
    "AFG000KBL": {
      "name": "喀布尔",
      "alpha": "k"
    },
    "AFG000KDH": {
      "name": "坎大哈",
      "alpha": "k"
    },
    "AFG000MZR": {
      "name": "马扎里沙里夫",
      "alpha": "m"
    }
  },
  "AGO": {
    "AGO000BGO": {
      "name": "本戈",
      "alpha": "b"
    },
    "AGO000BGU": {
      "name": "本格拉",
      "alpha": "b"
    },
    "AGO000BIE": {
      "name": "比耶",
      "alpha": "b"
    },
    "AGO000CAB": {
      "name": "卡宾达",
      "alpha": "k"
    },
    "AGO000CCU": {
      "name": "宽多库邦戈",
      "alpha": "k"
    },
    "AGO000CNN": {
      "name": "库内内",
      "alpha": "k"
    },
    "AGO000CNO": {
      "name": "北宽扎",
      "alpha": "b"
    },
    "AGO000CUS": {
      "name": "南宽扎",
      "alpha": "n"
    },
    "AGO000HUA": {
      "name": "万博",
      "alpha": "w"
    },
    "AGO000HUI": {
      "name": "威拉",
      "alpha": "w"
    },
    "AGO000LNO": {
      "name": "北隆达",
      "alpha": "b"
    },
    "AGO000LSU": {
      "name": "南隆达",
      "alpha": "n"
    },
    "AGO000LUA": {
      "name": "罗安达",
      "alpha": "l"
    },
    "AGO000MAL": {
      "name": "马兰热",
      "alpha": "m"
    },
    "AGO000MOX": {
      "name": "莫希科",
      "alpha": "m"
    },
    "AGO000NAM": {
      "name": "纳米贝",
      "alpha": "n"
    },
    "AGO000UIG": {
      "name": "威热",
      "alpha": "w"
    },
    "AGO000ZAI": {
      "name": "扎伊尔",
      "alpha": "z"
    }
  },
  "ALB": {
    "ALB0000BR": {
      "name": "培拉特",
      "alpha": "p"
    },
    "ALB0000DI": {
      "name": "迪勃拉",
      "alpha": "d"
    },
    "ALB0000DR": {
      "name": "都拉斯",
      "alpha": "d"
    },
    "ALB0000EL": {
      "name": "爱尔巴桑",
      "alpha": "a"
    },
    "ALB0000FR": {
      "name": "费里",
      "alpha": "f"
    },
    "ALB0000GJ": {
      "name": "吉诺卡斯特",
      "alpha": "j"
    },
    "ALB0000KO": {
      "name": "科尔察",
      "alpha": "k"
    },
    "ALB0000KU": {
      "name": "库克斯",
      "alpha": "k"
    },
    "ALB0000LE": {
      "name": "莱什",
      "alpha": "l"
    },
    "ALB0000SH": {
      "name": "斯库台",
      "alpha": "s"
    },
    "ALB0000TR": {
      "name": "地拉那",
      "alpha": "d"
    },
    "ALB0000VL": {
      "name": "发罗拉",
      "alpha": "f"
    }
  },
  "ARE": {
    "ARE0000AL": {
      "name": "艾因",
      "alpha": "a"
    },
    "ARE0000AZ": {
      "name": "阿布扎比",
      "alpha": "a"
    },
    "ARE0000DU": {
      "name": "迪拜",
      "alpha": "d"
    },
    "ARE0000SH": {
      "name": "沙迦",
      "alpha": "s"
    }
  },
  "ARG": {
    "ARG000AFA": {
      "name": "圣拉斐尔",
      "alpha": "s"
    },
    "ARG000BHI": {
      "name": "布兰卡港",
      "alpha": "b"
    },
    "ARG000BUE": {
      "name": "布宜诺斯艾利斯",
      "alpha": "b"
    },
    "ARG000CNQ": {
      "name": "科连特斯",
      "alpha": "k"
    },
    "ARG000COC": {
      "name": "肯考迪娅",
      "alpha": "k"
    },
    "ARG000COR": {
      "name": "科尔多瓦",
      "alpha": "k"
    },
    "ARG000CRD": {
      "name": "里瓦达维亚海军准将城",
      "alpha": "l"
    },
    "ARG000CTC": {
      "name": "卡塔马卡",
      "alpha": "k"
    },
    "ARG000FMA": {
      "name": "福莫萨",
      "alpha": "f"
    },
    "ARG000IRJ": {
      "name": "拉里奥哈",
      "alpha": "l"
    },
    "ARG000JUJ": {
      "name": "胡胡伊",
      "alpha": "h"
    },
    "ARG000LPG": {
      "name": "拉普拉塔",
      "alpha": "l"
    },
    "ARG000LUQ": {
      "name": "圣路易斯",
      "alpha": "s"
    },
    "ARG000MDQ": {
      "name": "马德普拉塔",
      "alpha": "m"
    },
    "ARG000MDZ": {
      "name": "门多萨",
      "alpha": "m"
    },
    "ARG000NQN": {
      "name": "内乌肯",
      "alpha": "n"
    },
    "ARG000PRA": {
      "name": "巴拉那",
      "alpha": "b"
    },
    "ARG000PSS": {
      "name": "波萨达斯",
      "alpha": "b"
    },
    "ARG000RCU": {
      "name": "里奥夸尔托",
      "alpha": "l"
    },
    "ARG000REL": {
      "name": "特雷利乌",
      "alpha": "t"
    },
    "ARG000RES": {
      "name": "雷西斯滕匹亚",
      "alpha": "l"
    },
    "ARG000RGL": {
      "name": "里奥加耶戈斯",
      "alpha": "l"
    },
    "ARG000ROS": {
      "name": "罗萨里奥",
      "alpha": "l"
    },
    "ARG000RSA": {
      "name": "圣罗莎",
      "alpha": "s"
    },
    "ARG000RWO": {
      "name": "罗森",
      "alpha": "l"
    },
    "ARG000SDE": {
      "name": "圣地亚哥-德尔埃斯特罗",
      "alpha": "s"
    },
    "ARG000SFN": {
      "name": "圣菲",
      "alpha": "s"
    },
    "ARG000SLA": {
      "name": "萨尔塔",
      "alpha": "s"
    },
    "ARG000SMC": {
      "name": "圣米格尔-德图库曼",
      "alpha": "s"
    },
    "ARG000SNS": {
      "name": "圣尼古拉斯",
      "alpha": "s"
    },
    "ARG000UAQ": {
      "name": "圣胡安",
      "alpha": "s"
    },
    "ARG000USH": {
      "name": "乌斯怀亚",
      "alpha": "w"
    },
    "ARG000VDM": {
      "name": "别德马",
      "alpha": "b"
    },
    "ARG000VLK": {
      "name": "克劳斯城",
      "alpha": "k"
    }
  },
  "ARM": {
    "ARM000AGT": {
      "name": "阿拉加措特恩",
      "alpha": "a"
    },
    "ARM000ARA": {
      "name": "阿拉拉特",
      "alpha": "a"
    },
    "ARM000ARM": {
      "name": "阿尔马维尔",
      "alpha": "a"
    },
    "ARM000EVN": {
      "name": "埃里温市",
      "alpha": "a"
    },
    "ARM000GEG": {
      "name": "格加尔库尼克",
      "alpha": "g"
    },
    "ARM000KOT": {
      "name": "科泰克",
      "alpha": "k"
    },
    "ARM000LOR": {
      "name": "洛里",
      "alpha": "l"
    },
    "ARM000SHI": {
      "name": "希拉克",
      "alpha": "x"
    },
    "ARM000SYU": {
      "name": "休尼克",
      "alpha": "x"
    },
    "ARM000TAV": {
      "name": "塔武什",
      "alpha": "t"
    },
    "ARM000VAY": {
      "name": "瓦约茨·佐尔",
      "alpha": "w"
    }
  },
  "ATA": {},
  "ATF": {},
  "AUS": {
    "AUS0NTDRW": {
      "name": "达尔文",
      "alpha": "d"
    },
    "AUS0NTPAL": {
      "name": "北帕默斯顿",
      "alpha": "b"
    },
    "AUS0SAADL": {
      "name": "阿德莱德",
      "alpha": "a"
    },
    "AUS0SAMGB": {
      "name": "甘比亚山",
      "alpha": "g"
    },
    "AUS0SAMYB": {
      "name": "默里布里奇",
      "alpha": "m"
    },
    "AUS0SAPLO": {
      "name": "林肯港",
      "alpha": "l"
    },
    "AUS0SAPPI": {
      "name": "皮里港",
      "alpha": "p"
    },
    "AUS0SAPUG": {
      "name": "奥古斯塔港",
      "alpha": "a"
    },
    "AUS0SAVHA": {
      "name": "维克托港",
      "alpha": "w"
    },
    "AUS0SAWAY": {
      "name": "怀阿拉",
      "alpha": "h"
    },
    "AUS0WAALH": {
      "name": "奥尔巴尼",
      "alpha": "a"
    },
    "AUS0WABUY": {
      "name": "班伯里",
      "alpha": "b"
    },
    "AUS0WAFRE": {
      "name": "弗里曼特尔港",
      "alpha": "f"
    },
    "AUS0WAGET": {
      "name": "杰拉尔顿",
      "alpha": "j"
    },
    "AUS0WAKGI": {
      "name": "卡尔古利",
      "alpha": "k"
    },
    "AUS0WAMDU": {
      "name": "曼哲拉",
      "alpha": "m"
    },
    "AUS0WAPER": {
      "name": "珀斯",
      "alpha": "p"
    },
    "AUSACTCBR": {
      "name": "堪培拉",
      "alpha": "k"
    },
    "AUSNSWHBS": {
      "name": "悉尼",
      "alpha": "x"
    },
    "AUSNSWNTL": {
      "name": "纽卡斯尔",
      "alpha": "n"
    },
    "AUSNSWWOL": {
      "name": "伍伦贡",
      "alpha": "w"
    },
    "AUSQLDBNE": {
      "name": "布里斯班",
      "alpha": "b"
    },
    "AUSQLDCNS": {
      "name": "凯恩斯",
      "alpha": "k"
    },
    "AUSQLDCUD": {
      "name": "日光海岸",
      "alpha": "r"
    },
    "AUSQLDOOL": {
      "name": "黄金海岸",
      "alpha": "h"
    },
    "AUSQLDTSV": {
      "name": "汤斯维尔",
      "alpha": "t"
    },
    "AUSQLDTWB": {
      "name": "图文巴",
      "alpha": "t"
    },
    "AUSTASBWT": {
      "name": "伯尼港",
      "alpha": "b"
    },
    "AUSTASDPO": {
      "name": "德文波特",
      "alpha": "d"
    },
    "AUSTASHBA": {
      "name": "霍巴特",
      "alpha": "h"
    },
    "AUSTASLST": {
      "name": "朗塞斯顿",
      "alpha": "l"
    },
    "AUSVICGEX": {
      "name": "吉朗",
      "alpha": "j"
    },
    "AUSVICMEL": {
      "name": "墨尔本",
      "alpha": "m"
    }
  },
  "AUT": {
    "AUT000BUR": {
      "name": "布尔根兰",
      "alpha": "b"
    },
    "AUT000CAT": {
      "name": "克恩顿",
      "alpha": "k"
    },
    "AUT000LAU": {
      "name": "下奥地利",
      "alpha": "x"
    },
    "AUT000STY": {
      "name": "施蒂利亚",
      "alpha": "s"
    },
    "AUT000SZG": {
      "name": "萨尔茨堡",
      "alpha": "s"
    },
    "AUT000TYR": {
      "name": "蒂罗尔",
      "alpha": "d"
    },
    "AUT000UAU": {
      "name": "上奥地利",
      "alpha": "s"
    },
    "AUT000VDD": {
      "name": "维也纳",
      "alpha": "w"
    },
    "AUT000VOR": {
      "name": "福拉尔贝格",
      "alpha": "f"
    }
  },
  "AZE": {
    "AZE0000GA": {
      "name": "占贾",
      "alpha": "z"
    },
    "AZE0000NX": {
      "name": "纳希切万",
      "alpha": "n"
    },
    "AZE0000SA": {
      "name": "舍基",
      "alpha": "s"
    },
    "AZE000ABS": {
      "name": "阿布歇隆",
      "alpha": "a"
    },
    "AZE000KAL": {
      "name": "卡尔巴卡尔",
      "alpha": "k"
    },
    "AZE000LAN": {
      "name": "连科兰",
      "alpha": "l"
    },
    "AZE000MQA": {
      "name": "密尔-卡拉巴赫",
      "alpha": "m"
    },
    "AZE000MSA": {
      "name": "穆甘-萨连",
      "alpha": "m"
    },
    "AZE000NQA": {
      "name": "纳戈尔诺－卡拉巴赫",
      "alpha": "n"
    },
    "AZE000PRI": {
      "name": "普利亚拉克斯",
      "alpha": "p"
    },
    "AZE000QAZ": {
      "name": "卡扎赫",
      "alpha": "k"
    },
    "AZE000SIR": {
      "name": "锡尔万",
      "alpha": "x"
    },
    "AZE000SMC": {
      "name": "苏姆盖特",
      "alpha": "s"
    },
    "AZE000XAC": {
      "name": "哈奇马斯",
      "alpha": "h"
    }
  },
  "BDI": {
    "BDI0000BB": {
      "name": "布班扎",
      "alpha": "b"
    },
    "BDI0000BM": {
      "name": "布琼布拉城市",
      "alpha": "b"
    },
    "BDI0000BR": {
      "name": "布鲁里",
      "alpha": "b"
    },
    "BDI0000BU": {
      "name": "布琼布拉乡村",
      "alpha": "b"
    },
    "BDI0000CA": {
      "name": "坎库佐",
      "alpha": "k"
    },
    "BDI0000CI": {
      "name": "锡比托凯",
      "alpha": "x"
    },
    "BDI0000GI": {
      "name": "基特加",
      "alpha": "j"
    },
    "BDI0000KI": {
      "name": "基龙多",
      "alpha": "j"
    },
    "BDI0000KR": {
      "name": "卡鲁济",
      "alpha": "k"
    },
    "BDI0000KY": {
      "name": "卡扬扎",
      "alpha": "k"
    },
    "BDI0000MA": {
      "name": "马坎巴",
      "alpha": "m"
    },
    "BDI0000MU": {
      "name": "穆拉姆维亚",
      "alpha": "m"
    },
    "BDI0000MW": {
      "name": "穆瓦洛",
      "alpha": "m"
    },
    "BDI0000MY": {
      "name": "穆因加",
      "alpha": "m"
    },
    "BDI0000NG": {
      "name": "恩戈齐",
      "alpha": "e"
    },
    "BDI0000RT": {
      "name": "鲁塔纳",
      "alpha": "l"
    },
    "BDI0000RY": {
      "name": "鲁伊吉",
      "alpha": "l"
    }
  },
  "BEL": {
    "BEL000BRU": {
      "name": "布鲁塞尔",
      "alpha": "b"
    },
    "BEL000VAN": {
      "name": "安特卫普",
      "alpha": "a"
    },
    "BEL000VBR": {
      "name": "佛兰芒-布拉班特",
      "alpha": "f"
    },
    "BEL000VLI": {
      "name": "林堡",
      "alpha": "l"
    },
    "BEL000VOV": {
      "name": "东佛兰德",
      "alpha": "d"
    },
    "BEL000VWV": {
      "name": "西佛兰德",
      "alpha": "x"
    },
    "BEL000WBR": {
      "name": "布拉班特-瓦隆",
      "alpha": "b"
    },
    "BEL000WHT": {
      "name": "埃诺",
      "alpha": "a"
    },
    "BEL000WLG": {
      "name": "列日",
      "alpha": "l"
    },
    "BEL000WLX": {
      "name": "卢森堡",
      "alpha": "l"
    },
    "BEL000WNA": {
      "name": "那慕尔",
      "alpha": "n"
    }
  },
  "BEN": {
    "BEN0000AK": {
      "name": "阿塔科拉",
      "alpha": "a"
    },
    "BEN0000AL": {
      "name": "阿黎博里",
      "alpha": "a"
    },
    "BEN0000AQ": {
      "name": "大西洋",
      "alpha": "d"
    },
    "BEN0000BO": {
      "name": "博尔古",
      "alpha": "b"
    },
    "BEN0000CO": {
      "name": "丘陵",
      "alpha": "q"
    },
    "BEN0000DO": {
      "name": "峡谷",
      "alpha": "x"
    },
    "BEN0000KO": {
      "name": "库福",
      "alpha": "k"
    },
    "BEN0000LI": {
      "name": "滨海",
      "alpha": "b"
    },
    "BEN0000MO": {
      "name": "莫诺",
      "alpha": "m"
    },
    "BEN0000OU": {
      "name": "韦梅",
      "alpha": "w"
    },
    "BEN0000PL": {
      "name": "高原",
      "alpha": "g"
    },
    "BEN0000ZO": {
      "name": "祖",
      "alpha": "z"
    },
    "BEN000BOH": {
      "name": "波希康市",
      "alpha": "b"
    }
  },
  "BFA": {
    "BFA000BAL": {
      "name": "巴雷",
      "alpha": "b"
    },
    "BFA000BAM": {
      "name": "巴姆",
      "alpha": "b"
    },
    "BFA000BAN": {
      "name": "巴瓦",
      "alpha": "b"
    },
    "BFA000BAZ": {
      "name": "巴泽加",
      "alpha": "b"
    },
    "BFA000BLG": {
      "name": "布尔古",
      "alpha": "b"
    },
    "BFA000BOK": {
      "name": "布尔基恩德",
      "alpha": "b"
    },
    "BFA000BOR": {
      "name": "布古里巴",
      "alpha": "b"
    },
    "BFA000COM": {
      "name": "科莫埃",
      "alpha": "k"
    },
    "BFA000GAN": {
      "name": "冈祖尔古",
      "alpha": "g"
    },
    "BFA000GNA": {
      "name": "尼亚尼亚",
      "alpha": "n"
    },
    "BFA000GOU": {
      "name": "古尔马",
      "alpha": "g"
    },
    "BFA000HOU": {
      "name": "乌埃",
      "alpha": "w"
    },
    "BFA000IOA": {
      "name": "伊奥巴",
      "alpha": "y"
    },
    "BFA000KAD": {
      "name": "卡焦戈",
      "alpha": "k"
    },
    "BFA000KEN": {
      "name": "凯内杜古",
      "alpha": "k"
    },
    "BFA000KOL": {
      "name": "库尔佩罗戈",
      "alpha": "k"
    },
    "BFA000KOO": {
      "name": "科蒙加里",
      "alpha": "k"
    },
    "BFA000KOP": {
      "name": "孔皮恩加",
      "alpha": "k"
    },
    "BFA000KOS": {
      "name": "孔西",
      "alpha": "k"
    },
    "BFA000KOT": {
      "name": "库里滕加",
      "alpha": "k"
    },
    "BFA000KOW": {
      "name": "库尔维奥戈",
      "alpha": "k"
    },
    "BFA000LER": {
      "name": "雷拉巴",
      "alpha": "l"
    },
    "BFA000LOR": {
      "name": "罗卢姆",
      "alpha": "l"
    },
    "BFA000MOU": {
      "name": "穆翁",
      "alpha": "m"
    },
    "BFA000NAH": {
      "name": "纳乌里",
      "alpha": "n"
    },
    "BFA000NAM": {
      "name": "纳门滕加",
      "alpha": "n"
    },
    "BFA000NAY": {
      "name": "纳亚拉",
      "alpha": "n"
    },
    "BFA000NOU": {
      "name": "努姆比埃尔",
      "alpha": "n"
    },
    "BFA000OUB": {
      "name": "乌布里滕加",
      "alpha": "w"
    },
    "BFA000OUD": {
      "name": "乌达兰",
      "alpha": "w"
    },
    "BFA000PAS": {
      "name": "帕索雷",
      "alpha": "p"
    },
    "BFA000PON": {
      "name": "波尼",
      "alpha": "b"
    },
    "BFA000SAG": {
      "name": "桑吉",
      "alpha": "s"
    },
    "BFA000SAM": {
      "name": "桑马滕加",
      "alpha": "s"
    },
    "BFA000SEN": {
      "name": "塞诺",
      "alpha": "s"
    },
    "BFA000SIS": {
      "name": "锡西里",
      "alpha": "x"
    },
    "BFA000SOM": {
      "name": "苏姆",
      "alpha": "s"
    },
    "BFA000SOR": {
      "name": "苏鲁",
      "alpha": "s"
    },
    "BFA000TAP": {
      "name": "塔波阿",
      "alpha": "t"
    },
    "BFA000TUY": {
      "name": "图伊",
      "alpha": "t"
    },
    "BFA000YAG": {
      "name": "亚加",
      "alpha": "y"
    },
    "BFA000YAT": {
      "name": "亚滕加",
      "alpha": "y"
    },
    "BFA000ZIR": {
      "name": "济罗",
      "alpha": "j"
    },
    "BFA000ZOD": {
      "name": "宗多马",
      "alpha": "z"
    },
    "BFA000ZOW": {
      "name": "宗德韦奥戈",
      "alpha": "z"
    }
  },
  "BGD": {
    "BGD000CGP": {
      "name": "吉大港",
      "alpha": "j"
    },
    "BGD000DAC": {
      "name": "达卡",
      "alpha": "d"
    },
    "BGD000KHL": {
      "name": "库尔纳",
      "alpha": "k"
    }
  },
  "BGR": {
    "BGR000BOJ": {
      "name": "布尔加斯",
      "alpha": "b"
    },
    "BGR000GSO": {
      "name": "索非亚市",
      "alpha": "s"
    },
    "BGR000KHO": {
      "name": "卡斯科伏",
      "alpha": "k"
    },
    "BGR000LVP": {
      "name": "洛维奇",
      "alpha": "l"
    },
    "BGR000OZA": {
      "name": "蒙塔纳",
      "alpha": "m"
    },
    "BGR000PDV": {
      "name": "普罗夫迪夫",
      "alpha": "p"
    },
    "BGR000ROU": {
      "name": "鲁塞",
      "alpha": "l"
    },
    "BGR000SOF": {
      "name": "索非亚",
      "alpha": "s"
    },
    "BGR000VAR": {
      "name": "瓦尔纳",
      "alpha": "w"
    }
  },
  "BHS": {},
  "BIH": {
    "BIH000FBP": {
      "name": "波斯尼亚－波德里涅",
      "alpha": "b"
    },
    "BIH000FHB": {
      "name": "西波斯尼亚",
      "alpha": "x"
    },
    "BIH000FHN": {
      "name": "黑塞哥维那－涅雷特瓦",
      "alpha": "h"
    },
    "BIH000FPO": {
      "name": "波萨维纳",
      "alpha": "b"
    },
    "BIH000FSA": {
      "name": "萨拉热窝",
      "alpha": "s"
    },
    "BIH000FSB": {
      "name": "中波斯尼亚",
      "alpha": "z"
    },
    "BIH000FTO": {
      "name": "多米斯拉夫格勒",
      "alpha": "d"
    },
    "BIH000FTU": {
      "name": "图兹拉－波德里涅",
      "alpha": "t"
    },
    "BIH000FUS": {
      "name": "乌纳－萨纳",
      "alpha": "w"
    },
    "BIH000FZE": {
      "name": "泽尼察－多博伊",
      "alpha": "z"
    },
    "BIH000FZH": {
      "name": "西黑塞哥维那",
      "alpha": "x"
    }
  },
  "BLR": {
    "BLR0000BR": {
      "name": "布列斯特",
      "alpha": "b"
    },
    "BLR0000HO": {
      "name": "戈梅利",
      "alpha": "g"
    },
    "BLR0000HR": {
      "name": "格罗德诺",
      "alpha": "g"
    },
    "BLR0000MA": {
      "name": "莫吉廖夫",
      "alpha": "m"
    },
    "BLR0000MI": {
      "name": "明斯克市",
      "alpha": "m"
    },
    "BLR0000VI": {
      "name": "维捷布斯克",
      "alpha": "w"
    }
  },
  "BLZ": {
    "BLZ0000BZ": {
      "name": "伯利兹",
      "alpha": "b"
    },
    "BLZ0000CR": {
      "name": "科罗萨尔",
      "alpha": "k"
    },
    "BLZ0000CY": {
      "name": "卡约",
      "alpha": "k"
    },
    "BLZ0000OW": {
      "name": "橘园",
      "alpha": "j"
    },
    "BLZ0000SC": {
      "name": "斯坦港",
      "alpha": "s"
    },
    "BLZ0000TO": {
      "name": "托莱多",
      "alpha": "t"
    }
  },
  "BMU": {},
  "BOL": {
    "BOL000ALT": {
      "name": "奥尔托",
      "alpha": "a"
    },
    "BOL000BEN": {
      "name": "贝尼",
      "alpha": "b"
    },
    "BOL000CBB": {
      "name": "科恰班巴",
      "alpha": "k"
    },
    "BOL000CHU": {
      "name": "丘基萨卡",
      "alpha": "q"
    },
    "BOL000LPB": {
      "name": "拉巴斯",
      "alpha": "l"
    },
    "BOL000ORU": {
      "name": "奥鲁罗",
      "alpha": "a"
    },
    "BOL000PAN": {
      "name": "潘多",
      "alpha": "p"
    },
    "BOL000POI": {
      "name": "波多西",
      "alpha": "b"
    },
    "BOL000QUI": {
      "name": "基拉科洛",
      "alpha": "j"
    },
    "BOL000SAC": {
      "name": "萨卡巴",
      "alpha": "s"
    },
    "BOL000SRZ": {
      "name": "圣克鲁斯",
      "alpha": "s"
    },
    "BOL000TJA": {
      "name": "塔里哈",
      "alpha": "t"
    }
  },
  "BRA": {
    "BRA0000AC": {
      "name": "阿克里",
      "alpha": "a"
    },
    "BRA0000AL": {
      "name": "阿拉戈斯",
      "alpha": "a"
    },
    "BRA0000AM": {
      "name": "亚马孙",
      "alpha": "y"
    },
    "BRA0000AP": {
      "name": "阿马帕",
      "alpha": "a"
    },
    "BRA0000BA": {
      "name": "巴伊亚",
      "alpha": "b"
    },
    "BRA0000CE": {
      "name": "塞阿拉",
      "alpha": "s"
    },
    "BRA0000ES": {
      "name": "圣埃斯皮里图",
      "alpha": "s"
    },
    "BRA0000GO": {
      "name": "戈亚斯",
      "alpha": "g"
    },
    "BRA0000MA": {
      "name": "马拉尼昂",
      "alpha": "m"
    },
    "BRA0000MG": {
      "name": "米纳斯吉拉斯",
      "alpha": "m"
    },
    "BRA0000MS": {
      "name": "南马托格罗索",
      "alpha": "n"
    },
    "BRA0000MT": {
      "name": "马托格罗索",
      "alpha": "m"
    },
    "BRA0000PA": {
      "name": "帕拉",
      "alpha": "p"
    },
    "BRA0000PB": {
      "name": "帕拉伊巴",
      "alpha": "p"
    },
    "BRA0000PE": {
      "name": "伯南布哥",
      "alpha": "b"
    },
    "BRA0000PI": {
      "name": "皮奥伊",
      "alpha": "p"
    },
    "BRA0000PR": {
      "name": "巴拉那",
      "alpha": "b"
    },
    "BRA0000RJ": {
      "name": "里约热内卢",
      "alpha": "l"
    },
    "BRA0000RN": {
      "name": "北里奥格兰德",
      "alpha": "b"
    },
    "BRA0000RO": {
      "name": "朗多尼亚",
      "alpha": "l"
    },
    "BRA0000RR": {
      "name": "罗赖马",
      "alpha": "l"
    },
    "BRA0000RS": {
      "name": "南里奥格兰德",
      "alpha": "n"
    },
    "BRA0000SC": {
      "name": "圣卡塔琳娜",
      "alpha": "s"
    },
    "BRA0000SE": {
      "name": "塞尔希培",
      "alpha": "s"
    },
    "BRA0000SP": {
      "name": "圣保罗",
      "alpha": "s"
    },
    "BRA0000TO": {
      "name": "托坎廷斯",
      "alpha": "t"
    },
    "BRA000BSB": {
      "name": "巴西利亚",
      "alpha": "b"
    }
  },
  "BRN": {},
  "BTN": {},
  "BWA": {},
  "CAF": {
    "CAF0000AC": {
      "name": "瓦姆",
      "alpha": "w"
    },
    "CAF0000BB": {
      "name": "巴明吉-班戈兰",
      "alpha": "b"
    },
    "CAF0000BI": {
      "name": "宾博",
      "alpha": "b"
    },
    "CAF0000BK": {
      "name": "下科托",
      "alpha": "x"
    },
    "CAF0000HK": {
      "name": "上科托",
      "alpha": "s"
    },
    "CAF0000HM": {
      "name": "上姆博穆",
      "alpha": "s"
    },
    "CAF0000HS": {
      "name": "曼贝雷-卡代",
      "alpha": "m"
    },
    "CAF0000KB": {
      "name": "纳纳-格里比齐",
      "alpha": "n"
    },
    "CAF0000KG": {
      "name": "凯莫",
      "alpha": "k"
    },
    "CAF0000LB": {
      "name": "洛巴伊",
      "alpha": "l"
    },
    "CAF0000MB": {
      "name": "姆博穆",
      "alpha": "m"
    },
    "CAF0000MP": {
      "name": "翁贝拉-姆波科",
      "alpha": "w"
    },
    "CAF0000NM": {
      "name": "纳纳-曼贝雷",
      "alpha": "n"
    },
    "CAF0000OP": {
      "name": "瓦姆-彭代",
      "alpha": "w"
    },
    "CAF0000SE": {
      "name": "桑加-姆巴埃雷",
      "alpha": "s"
    },
    "CAF0000UK": {
      "name": "瓦卡",
      "alpha": "w"
    },
    "CAF0000VK": {
      "name": "瓦卡加",
      "alpha": "w"
    },
    "CAF000BGF": {
      "name": "班吉直辖市",
      "alpha": "b"
    }
  },
  "CAN": {
    "CAN000ABB": {
      "name": "阿伯茨福",
      "alpha": "a"
    },
    "CAN000BAR": {
      "name": "巴里",
      "alpha": "b"
    },
    "CAN000BRP": {
      "name": "基奇纳",
      "alpha": "j"
    },
    "CAN000CAL": {
      "name": "卡里加里",
      "alpha": "k"
    },
    "CAN000CBR": {
      "name": "布列塔尼角",
      "alpha": "b"
    },
    "CAN000CHA": {
      "name": "夏洛特敦",
      "alpha": "x"
    },
    "CAN000EDM": {
      "name": "埃德蒙顿",
      "alpha": "a"
    },
    "CAN000FRE": {
      "name": "弗雷德里顿",
      "alpha": "f"
    },
    "CAN000GLP": {
      "name": "圭尔夫",
      "alpha": "g"
    },
    "CAN000HAL": {
      "name": "哈利法克斯",
      "alpha": "h"
    },
    "CAN000HAM": {
      "name": "哈密尔顿",
      "alpha": "h"
    },
    "CAN000IQL": {
      "name": "伊魁特",
      "alpha": "y"
    },
    "CAN000KGN": {
      "name": "金斯敦",
      "alpha": "j"
    },
    "CAN000KWL": {
      "name": "基劳纳",
      "alpha": "j"
    },
    "CAN000LOD": {
      "name": "伦敦",
      "alpha": "l"
    },
    "CAN000MTR": {
      "name": "蒙特利尔",
      "alpha": "m"
    },
    "CAN000OSH": {
      "name": "奥沙瓦",
      "alpha": "a"
    },
    "CAN000OTT": {
      "name": "渥太华",
      "alpha": "w"
    },
    "CAN000QUE": {
      "name": "魁北克",
      "alpha": "k"
    },
    "CAN000REG": {
      "name": "里贾纳",
      "alpha": "l"
    },
    "CAN000SAK": {
      "name": "萨斯卡通",
      "alpha": "s"
    },
    "CAN000SBE": {
      "name": "舍布鲁克",
      "alpha": "s"
    },
    "CAN000SCA": {
      "name": "圣卡塔琳娜",
      "alpha": "s"
    },
    "CAN000SJB": {
      "name": "圣约翰斯",
      "alpha": "s"
    },
    "CAN000SUD": {
      "name": "萨德伯里",
      "alpha": "s"
    },
    "CAN000THU": {
      "name": "桑德贝",
      "alpha": "s"
    },
    "CAN000TOR": {
      "name": "多伦多",
      "alpha": "d"
    },
    "CAN000TRR": {
      "name": "三河城",
      "alpha": "s"
    },
    "CAN000VAN": {
      "name": "温哥华",
      "alpha": "w"
    },
    "CAN000VIC": {
      "name": "维多利亚",
      "alpha": "w"
    },
    "CAN000WDR": {
      "name": "温莎",
      "alpha": "w"
    },
    "CAN000WNP": {
      "name": "温尼伯",
      "alpha": "w"
    },
    "CAN000YXY": {
      "name": "怀特霍斯",
      "alpha": "h"
    },
    "CAN000YZF": {
      "name": "耶洛奈夫",
      "alpha": "y"
    }
  },
  "CHE": {
    "CHE0000AG": {
      "name": "阿尔高",
      "alpha": "a"
    },
    "CHE0000AI": {
      "name": "内阿彭策尔",
      "alpha": "n"
    },
    "CHE0000AR": {
      "name": "外阿彭策尔",
      "alpha": "w"
    },
    "CHE0000BE": {
      "name": "伯尔尼",
      "alpha": "b"
    },
    "CHE0000BL": {
      "name": "巴塞尔乡村",
      "alpha": "b"
    },
    "CHE0000BS": {
      "name": "巴塞尔城市",
      "alpha": "b"
    },
    "CHE0000FR": {
      "name": "弗里堡",
      "alpha": "f"
    },
    "CHE0000GE": {
      "name": "日内瓦",
      "alpha": "r"
    },
    "CHE0000GL": {
      "name": "格拉鲁斯",
      "alpha": "g"
    },
    "CHE0000GR": {
      "name": "格劳宾登",
      "alpha": "g"
    },
    "CHE0000JU": {
      "name": "汝拉",
      "alpha": "r"
    },
    "CHE0000LA": {
      "name": "洛桑",
      "alpha": "l"
    },
    "CHE0000LU": {
      "name": "卢塞恩",
      "alpha": "l"
    },
    "CHE0000NE": {
      "name": "纳沙泰尔",
      "alpha": "n"
    },
    "CHE0000NW": {
      "name": "下瓦尔登",
      "alpha": "x"
    },
    "CHE0000OW": {
      "name": "上瓦尔登",
      "alpha": "s"
    },
    "CHE0000SG": {
      "name": "圣加仑",
      "alpha": "s"
    },
    "CHE0000SH": {
      "name": "沙夫豪森",
      "alpha": "s"
    },
    "CHE0000SO": {
      "name": "索洛图恩",
      "alpha": "s"
    },
    "CHE0000SZ": {
      "name": "施维茨",
      "alpha": "s"
    },
    "CHE0000TG": {
      "name": "图尔高",
      "alpha": "t"
    },
    "CHE0000TI": {
      "name": "提契诺",
      "alpha": "t"
    },
    "CHE0000UR": {
      "name": "乌里",
      "alpha": "w"
    },
    "CHE0000VD": {
      "name": "沃",
      "alpha": "w"
    },
    "CHE0000VS": {
      "name": "瓦莱",
      "alpha": "w"
    },
    "CHE0000ZG": {
      "name": "楚格",
      "alpha": "c"
    },
    "CHE0000ZH": {
      "name": "苏黎世",
      "alpha": "s"
    }
  },
  "CHL": {
    "CHL0000AI": {
      "name": "伊瓦涅斯将军的艾森大区",
      "alpha": "y"
    },
    "CHL0000AN": {
      "name": "安托法加斯塔大区",
      "alpha": "a"
    },
    "CHL0000AR": {
      "name": "阿劳卡尼亚大区",
      "alpha": "a"
    },
    "CHL0000AT": {
      "name": "阿塔卡马大区",
      "alpha": "a"
    },
    "CHL0000BI": {
      "name": "比奥比奥大区",
      "alpha": "b"
    },
    "CHL0000CO": {
      "name": "科金博大区",
      "alpha": "k"
    },
    "CHL0000LI": {
      "name": "复活节岛",
      "alpha": "f"
    },
    "CHL0000LL": {
      "name": "湖大区",
      "alpha": "h"
    },
    "CHL0000MA": {
      "name": "麦哲伦-智利南极大区",
      "alpha": "m"
    },
    "CHL0000ML": {
      "name": "马乌莱大区",
      "alpha": "m"
    },
    "CHL0000RM": {
      "name": "圣地亚哥",
      "alpha": "s"
    },
    "CHL0000TA": {
      "name": "塔拉帕卡大区",
      "alpha": "t"
    },
    "CHL0000VS": {
      "name": "瓦尔帕莱索大区",
      "alpha": "w"
    }
  },
  "CHN": {
    "CHN011001": {
      "name": "东城",
      "alpha": "d"
    },
    "CHN011002": {
      "name": "西城",
      "alpha": "x"
    },
    "CHN011005": {
      "name": "朝阳",
      "alpha": "c"
    },
    "CHN011006": {
      "name": "丰台",
      "alpha": "f"
    },
    "CHN011007": {
      "name": "石景山",
      "alpha": "s"
    },
    "CHN011008": {
      "name": "海淀",
      "alpha": "h"
    },
    "CHN011009": {
      "name": "门头沟",
      "alpha": "m"
    },
    "CHN011011": {
      "name": "房山",
      "alpha": "f"
    },
    "CHN011012": {
      "name": "通州",
      "alpha": "t"
    },
    "CHN011013": {
      "name": "顺义",
      "alpha": "s"
    },
    "CHN011021": {
      "name": "昌平",
      "alpha": "c"
    },
    "CHN011024": {
      "name": "大兴",
      "alpha": "d"
    },
    "CHN011026": {
      "name": "平谷",
      "alpha": "p"
    },
    "CHN011027": {
      "name": "怀柔",
      "alpha": "h"
    },
    "CHN011028": {
      "name": "密云",
      "alpha": "m"
    },
    "CHN011029": {
      "name": "延庆",
      "alpha": "y"
    },
    "CHN012001": {
      "name": "和平",
      "alpha": "h"
    },
    "CHN012002": {
      "name": "河东",
      "alpha": "h"
    },
    "CHN012003": {
      "name": "河西",
      "alpha": "h"
    },
    "CHN012004": {
      "name": "南开",
      "alpha": "n"
    },
    "CHN012005": {
      "name": "河北",
      "alpha": "h"
    },
    "CHN012006": {
      "name": "红桥",
      "alpha": "h"
    },
    "CHN012010": {
      "name": "东丽",
      "alpha": "d"
    },
    "CHN012011": {
      "name": "西青",
      "alpha": "x"
    },
    "CHN012012": {
      "name": "津南",
      "alpha": "j"
    },
    "CHN012013": {
      "name": "北辰",
      "alpha": "b"
    },
    "CHN012021": {
      "name": "宁河",
      "alpha": "n"
    },
    "CHN012022": {
      "name": "武清",
      "alpha": "w"
    },
    "CHN012023": {
      "name": "静海",
      "alpha": "j"
    },
    "CHN012024": {
      "name": "宝坻",
      "alpha": "b"
    },
    "CHN012025": {
      "name": "蓟县",
      "alpha": "j"
    },
    "CHN012026": {
      "name": "滨海新区",
      "alpha": "b"
    },
    "CHN013001": {
      "name": "石家庄",
      "alpha": "s"
    },
    "CHN013002": {
      "name": "唐山",
      "alpha": "t"
    },
    "CHN013003": {
      "name": "秦皇岛",
      "alpha": "q"
    },
    "CHN013004": {
      "name": "邯郸",
      "alpha": "h"
    },
    "CHN013005": {
      "name": "邢台",
      "alpha": "x"
    },
    "CHN013006": {
      "name": "保定",
      "alpha": "b"
    },
    "CHN013007": {
      "name": "张家口",
      "alpha": "z"
    },
    "CHN013008": {
      "name": "承德",
      "alpha": "c"
    },
    "CHN013009": {
      "name": "沧州",
      "alpha": "c"
    },
    "CHN013010": {
      "name": "廊坊",
      "alpha": "l"
    },
    "CHN013011": {
      "name": "衡水",
      "alpha": "h"
    },
    "CHN014001": {
      "name": "太原",
      "alpha": "t"
    },
    "CHN014002": {
      "name": "大同",
      "alpha": "d"
    },
    "CHN014003": {
      "name": "阳泉",
      "alpha": "y"
    },
    "CHN014004": {
      "name": "长治",
      "alpha": "c"
    },
    "CHN014005": {
      "name": "晋城",
      "alpha": "j"
    },
    "CHN014006": {
      "name": "朔州",
      "alpha": "s"
    },
    "CHN014007": {
      "name": "晋中",
      "alpha": "j"
    },
    "CHN014008": {
      "name": "运城",
      "alpha": "y"
    },
    "CHN014009": {
      "name": "忻州",
      "alpha": "x"
    },
    "CHN014010": {
      "name": "临汾",
      "alpha": "l"
    },
    "CHN014011": {
      "name": "吕梁",
      "alpha": "l"
    },
    "CHN015001": {
      "name": "呼和浩特",
      "alpha": "h"
    },
    "CHN015002": {
      "name": "包头",
      "alpha": "b"
    },
    "CHN015003": {
      "name": "乌海",
      "alpha": "w"
    },
    "CHN015004": {
      "name": "赤峰",
      "alpha": "c"
    },
    "CHN015005": {
      "name": "通辽",
      "alpha": "t"
    },
    "CHN015006": {
      "name": "鄂尔多斯",
      "alpha": "e"
    },
    "CHN015007": {
      "name": "呼伦贝尔",
      "alpha": "h"
    },
    "CHN015008": {
      "name": "巴彦淖尔",
      "alpha": "b"
    },
    "CHN015009": {
      "name": "乌兰察布",
      "alpha": "w"
    },
    "CHN015022": {
      "name": "兴安",
      "alpha": "x"
    },
    "CHN015025": {
      "name": "锡林郭勒",
      "alpha": "x"
    },
    "CHN015029": {
      "name": "阿拉善",
      "alpha": "a"
    },
    "CHN021001": {
      "name": "沈阳",
      "alpha": "s"
    },
    "CHN021002": {
      "name": "大连",
      "alpha": "d"
    },
    "CHN021003": {
      "name": "鞍山",
      "alpha": "a"
    },
    "CHN021004": {
      "name": "抚顺",
      "alpha": "f"
    },
    "CHN021005": {
      "name": "本溪",
      "alpha": "b"
    },
    "CHN021006": {
      "name": "丹东",
      "alpha": "d"
    },
    "CHN021007": {
      "name": "锦州",
      "alpha": "j"
    },
    "CHN021008": {
      "name": "营口",
      "alpha": "y"
    },
    "CHN021009": {
      "name": "阜新",
      "alpha": "f"
    },
    "CHN021010": {
      "name": "辽阳",
      "alpha": "l"
    },
    "CHN021011": {
      "name": "盘锦",
      "alpha": "p"
    },
    "CHN021012": {
      "name": "铁岭",
      "alpha": "t"
    },
    "CHN021013": {
      "name": "朝阳",
      "alpha": "c"
    },
    "CHN021014": {
      "name": "葫芦岛",
      "alpha": "h"
    },
    "CHN022001": {
      "name": "长春",
      "alpha": "c"
    },
    "CHN022002": {
      "name": "吉林",
      "alpha": "j"
    },
    "CHN022003": {
      "name": "四平",
      "alpha": "s"
    },
    "CHN022004": {
      "name": "辽源",
      "alpha": "l"
    },
    "CHN022005": {
      "name": "通化",
      "alpha": "t"
    },
    "CHN022006": {
      "name": "白山",
      "alpha": "b"
    },
    "CHN022007": {
      "name": "松原",
      "alpha": "s"
    },
    "CHN022008": {
      "name": "白城",
      "alpha": "b"
    },
    "CHN022024": {
      "name": "延边",
      "alpha": "y"
    },
    "CHN023001": {
      "name": "哈尔滨",
      "alpha": "h"
    },
    "CHN023002": {
      "name": "齐齐哈尔",
      "alpha": "q"
    },
    "CHN023003": {
      "name": "鸡西",
      "alpha": "j"
    },
    "CHN023004": {
      "name": "鹤岗",
      "alpha": "h"
    },
    "CHN023005": {
      "name": "双鸭山",
      "alpha": "s"
    },
    "CHN023006": {
      "name": "大庆",
      "alpha": "d"
    },
    "CHN023007": {
      "name": "伊春",
      "alpha": "y"
    },
    "CHN023008": {
      "name": "佳木斯",
      "alpha": "j"
    },
    "CHN023009": {
      "name": "七台河",
      "alpha": "q"
    },
    "CHN023010": {
      "name": "牡丹江",
      "alpha": "m"
    },
    "CHN023011": {
      "name": "黑河",
      "alpha": "h"
    },
    "CHN023012": {
      "name": "绥化",
      "alpha": "s"
    },
    "CHN023027": {
      "name": "大兴安岭",
      "alpha": "d"
    },
    "CHN031001": {
      "name": "黄浦",
      "alpha": "h"
    },
    "CHN031003": {
      "name": "卢湾",
      "alpha": "l"
    },
    "CHN031004": {
      "name": "徐汇",
      "alpha": "x"
    },
    "CHN031005": {
      "name": "长宁",
      "alpha": "c"
    },
    "CHN031006": {
      "name": "静安",
      "alpha": "j"
    },
    "CHN031007": {
      "name": "普陀",
      "alpha": "p"
    },
    "CHN031008": {
      "name": "闸北",
      "alpha": "z"
    },
    "CHN031009": {
      "name": "虹口",
      "alpha": "h"
    },
    "CHN031011": {
      "name": "杨浦",
      "alpha": "y"
    },
    "CHN031012": {
      "name": "闵行",
      "alpha": "m"
    },
    "CHN031013": {
      "name": "宝山",
      "alpha": "b"
    },
    "CHN031014": {
      "name": "嘉定",
      "alpha": "j"
    },
    "CHN031015": {
      "name": "浦东新区",
      "alpha": "p"
    },
    "CHN031016": {
      "name": "金山",
      "alpha": "j"
    },
    "CHN031017": {
      "name": "松江",
      "alpha": "s"
    },
    "CHN031026": {
      "name": "奉贤",
      "alpha": "f"
    },
    "CHN031029": {
      "name": "青浦",
      "alpha": "q"
    },
    "CHN031030": {
      "name": "崇明",
      "alpha": "c"
    },
    "CHN032001": {
      "name": "南京",
      "alpha": "n"
    },
    "CHN032002": {
      "name": "无锡",
      "alpha": "w"
    },
    "CHN032003": {
      "name": "徐州",
      "alpha": "x"
    },
    "CHN032004": {
      "name": "常州",
      "alpha": "c"
    },
    "CHN032005": {
      "name": "苏州",
      "alpha": "s"
    },
    "CHN032006": {
      "name": "南通",
      "alpha": "n"
    },
    "CHN032007": {
      "name": "连云港",
      "alpha": "l"
    },
    "CHN032008": {
      "name": "淮安",
      "alpha": "h"
    },
    "CHN032009": {
      "name": "盐城",
      "alpha": "y"
    },
    "CHN032010": {
      "name": "扬州",
      "alpha": "y"
    },
    "CHN032011": {
      "name": "镇江",
      "alpha": "z"
    },
    "CHN032012": {
      "name": "泰州",
      "alpha": "t"
    },
    "CHN032013": {
      "name": "宿迁",
      "alpha": "s"
    },
    "CHN033001": {
      "name": "杭州",
      "alpha": "h"
    },
    "CHN033002": {
      "name": "宁波",
      "alpha": "n"
    },
    "CHN033003": {
      "name": "温州",
      "alpha": "w"
    },
    "CHN033004": {
      "name": "嘉兴",
      "alpha": "j"
    },
    "CHN033005": {
      "name": "湖州",
      "alpha": "h"
    },
    "CHN033006": {
      "name": "绍兴",
      "alpha": "s"
    },
    "CHN033007": {
      "name": "金华",
      "alpha": "j"
    },
    "CHN033008": {
      "name": "衢州",
      "alpha": "q"
    },
    "CHN033009": {
      "name": "舟山",
      "alpha": "z"
    },
    "CHN033010": {
      "name": "台州",
      "alpha": "t"
    },
    "CHN033011": {
      "name": "丽水",
      "alpha": "l"
    },
    "CHN034001": {
      "name": "合肥",
      "alpha": "h"
    },
    "CHN034002": {
      "name": "芜湖",
      "alpha": "w"
    },
    "CHN034003": {
      "name": "蚌埠",
      "alpha": "b"
    },
    "CHN034004": {
      "name": "淮南",
      "alpha": "h"
    },
    "CHN034005": {
      "name": "马鞍山",
      "alpha": "m"
    },
    "CHN034006": {
      "name": "淮北",
      "alpha": "h"
    },
    "CHN034007": {
      "name": "铜陵",
      "alpha": "t"
    },
    "CHN034008": {
      "name": "安庆",
      "alpha": "a"
    },
    "CHN034010": {
      "name": "黄山",
      "alpha": "h"
    },
    "CHN034011": {
      "name": "滁州",
      "alpha": "c"
    },
    "CHN034012": {
      "name": "阜阳",
      "alpha": "f"
    },
    "CHN034013": {
      "name": "宿州",
      "alpha": "s"
    },
    "CHN034015": {
      "name": "六安",
      "alpha": "l"
    },
    "CHN034016": {
      "name": "亳州",
      "alpha": "b"
    },
    "CHN034017": {
      "name": "池州",
      "alpha": "c"
    },
    "CHN034018": {
      "name": "宣城",
      "alpha": "x"
    },
    "CHN035001": {
      "name": "福州",
      "alpha": "f"
    },
    "CHN035002": {
      "name": "厦门",
      "alpha": "x"
    },
    "CHN035003": {
      "name": "莆田",
      "alpha": "p"
    },
    "CHN035004": {
      "name": "三明",
      "alpha": "s"
    },
    "CHN035005": {
      "name": "泉州",
      "alpha": "q"
    },
    "CHN035006": {
      "name": "漳州",
      "alpha": "z"
    },
    "CHN035007": {
      "name": "南平",
      "alpha": "n"
    },
    "CHN035008": {
      "name": "龙岩",
      "alpha": "l"
    },
    "CHN035009": {
      "name": "宁德",
      "alpha": "n"
    },
    "CHN036001": {
      "name": "南昌",
      "alpha": "n"
    },
    "CHN036002": {
      "name": "景德镇",
      "alpha": "j"
    },
    "CHN036003": {
      "name": "萍乡",
      "alpha": "p"
    },
    "CHN036004": {
      "name": "九江",
      "alpha": "j"
    },
    "CHN036005": {
      "name": "新余",
      "alpha": "x"
    },
    "CHN036006": {
      "name": "鹰潭",
      "alpha": "y"
    },
    "CHN036007": {
      "name": "赣州",
      "alpha": "g"
    },
    "CHN036008": {
      "name": "吉安",
      "alpha": "j"
    },
    "CHN036009": {
      "name": "宜春",
      "alpha": "y"
    },
    "CHN036010": {
      "name": "抚州",
      "alpha": "f"
    },
    "CHN036011": {
      "name": "上饶",
      "alpha": "s"
    },
    "CHN037001": {
      "name": "济南",
      "alpha": "j"
    },
    "CHN037002": {
      "name": "青岛",
      "alpha": "q"
    },
    "CHN037003": {
      "name": "淄博",
      "alpha": "z"
    },
    "CHN037004": {
      "name": "枣庄",
      "alpha": "z"
    },
    "CHN037005": {
      "name": "东营",
      "alpha": "d"
    },
    "CHN037006": {
      "name": "烟台",
      "alpha": "y"
    },
    "CHN037007": {
      "name": "潍坊",
      "alpha": "w"
    },
    "CHN037008": {
      "name": "济宁",
      "alpha": "j"
    },
    "CHN037009": {
      "name": "泰安",
      "alpha": "t"
    },
    "CHN037010": {
      "name": "威海",
      "alpha": "w"
    },
    "CHN037011": {
      "name": "日照",
      "alpha": "r"
    },
    "CHN037012": {
      "name": "莱芜",
      "alpha": "l"
    },
    "CHN037013": {
      "name": "临沂",
      "alpha": "l"
    },
    "CHN037014": {
      "name": "德州",
      "alpha": "d"
    },
    "CHN037015": {
      "name": "聊城",
      "alpha": "l"
    },
    "CHN037016": {
      "name": "滨州",
      "alpha": "b"
    },
    "CHN037017": {
      "name": "菏泽",
      "alpha": "h"
    },
    "CHN041001": {
      "name": "郑州",
      "alpha": "z"
    },
    "CHN041002": {
      "name": "开封",
      "alpha": "k"
    },
    "CHN041003": {
      "name": "洛阳",
      "alpha": "l"
    },
    "CHN041004": {
      "name": "平顶山",
      "alpha": "p"
    },
    "CHN041005": {
      "name": "安阳",
      "alpha": "a"
    },
    "CHN041006": {
      "name": "鹤壁",
      "alpha": "h"
    },
    "CHN041007": {
      "name": "新乡",
      "alpha": "x"
    },
    "CHN041008": {
      "name": "焦作",
      "alpha": "j"
    },
    "CHN041009": {
      "name": "濮阳",
      "alpha": "p"
    },
    "CHN041010": {
      "name": "许昌",
      "alpha": "x"
    },
    "CHN041011": {
      "name": "漯河",
      "alpha": "l"
    },
    "CHN041012": {
      "name": "三门峡",
      "alpha": "s"
    },
    "CHN041013": {
      "name": "南阳",
      "alpha": "n"
    },
    "CHN041014": {
      "name": "商丘",
      "alpha": "s"
    },
    "CHN041015": {
      "name": "信阳",
      "alpha": "x"
    },
    "CHN041016": {
      "name": "周口",
      "alpha": "z"
    },
    "CHN041017": {
      "name": "驻马店",
      "alpha": "z"
    },
    "CHN041018": {
      "name": "济源",
      "alpha": "j"
    },
    "CHN042001": {
      "name": "武汉",
      "alpha": "w"
    },
    "CHN042002": {
      "name": "黄石",
      "alpha": "h"
    },
    "CHN042003": {
      "name": "十堰",
      "alpha": "s"
    },
    "CHN042005": {
      "name": "宜昌",
      "alpha": "y"
    },
    "CHN042006": {
      "name": "襄阳",
      "alpha": "x"
    },
    "CHN042007": {
      "name": "鄂州",
      "alpha": "e"
    },
    "CHN042008": {
      "name": "荆门",
      "alpha": "j"
    },
    "CHN042009": {
      "name": "孝感",
      "alpha": "x"
    },
    "CHN042010": {
      "name": "荆州",
      "alpha": "j"
    },
    "CHN042011": {
      "name": "黄冈",
      "alpha": "h"
    },
    "CHN042012": {
      "name": "咸宁",
      "alpha": "x"
    },
    "CHN042013": {
      "name": "随州",
      "alpha": "s"
    },
    "CHN042028": {
      "name": "恩施",
      "alpha": "e"
    },
    "CHN042094": {
      "name": "仙桃",
      "alpha": "x"
    },
    "CHN042095": {
      "name": "潜江",
      "alpha": "q"
    },
    "CHN042096": {
      "name": "天门",
      "alpha": "t"
    },
    "CHN042A21": {
      "name": "神农架",
      "alpha": "s"
    },
    "CHN043001": {
      "name": "长沙",
      "alpha": "c"
    },
    "CHN043002": {
      "name": "株洲",
      "alpha": "z"
    },
    "CHN043003": {
      "name": "湘潭",
      "alpha": "x"
    },
    "CHN043004": {
      "name": "衡阳",
      "alpha": "h"
    },
    "CHN043005": {
      "name": "邵阳",
      "alpha": "s"
    },
    "CHN043006": {
      "name": "岳阳",
      "alpha": "y"
    },
    "CHN043007": {
      "name": "常德",
      "alpha": "c"
    },
    "CHN043008": {
      "name": "张家界",
      "alpha": "z"
    },
    "CHN043009": {
      "name": "益阳",
      "alpha": "y"
    },
    "CHN043010": {
      "name": "郴州",
      "alpha": "c"
    },
    "CHN043011": {
      "name": "永州",
      "alpha": "y"
    },
    "CHN043012": {
      "name": "怀化",
      "alpha": "h"
    },
    "CHN043013": {
      "name": "娄底",
      "alpha": "l"
    },
    "CHN043031": {
      "name": "湘西",
      "alpha": "x"
    },
    "CHN044001": {
      "name": "广州",
      "alpha": "g"
    },
    "CHN044002": {
      "name": "韶关",
      "alpha": "s"
    },
    "CHN044003": {
      "name": "深圳",
      "alpha": "s"
    },
    "CHN044004": {
      "name": "珠海",
      "alpha": "z"
    },
    "CHN044005": {
      "name": "汕头",
      "alpha": "s"
    },
    "CHN044006": {
      "name": "佛山",
      "alpha": "f"
    },
    "CHN044007": {
      "name": "江门",
      "alpha": "j"
    },
    "CHN044008": {
      "name": "湛江",
      "alpha": "z"
    },
    "CHN044009": {
      "name": "茂名",
      "alpha": "m"
    },
    "CHN044012": {
      "name": "肇庆",
      "alpha": "z"
    },
    "CHN044013": {
      "name": "惠州",
      "alpha": "h"
    },
    "CHN044014": {
      "name": "梅州",
      "alpha": "m"
    },
    "CHN044015": {
      "name": "汕尾",
      "alpha": "s"
    },
    "CHN044016": {
      "name": "河源",
      "alpha": "h"
    },
    "CHN044017": {
      "name": "阳江",
      "alpha": "y"
    },
    "CHN044018": {
      "name": "清远",
      "alpha": "q"
    },
    "CHN044019": {
      "name": "东莞",
      "alpha": "d"
    },
    "CHN044020": {
      "name": "中山",
      "alpha": "z"
    },
    "CHN044051": {
      "name": "潮州",
      "alpha": "c"
    },
    "CHN044052": {
      "name": "揭阳",
      "alpha": "j"
    },
    "CHN044053": {
      "name": "云浮",
      "alpha": "y"
    },
    "CHN045001": {
      "name": "南宁",
      "alpha": "n"
    },
    "CHN045002": {
      "name": "柳州",
      "alpha": "l"
    },
    "CHN045003": {
      "name": "桂林",
      "alpha": "g"
    },
    "CHN045004": {
      "name": "梧州",
      "alpha": "w"
    },
    "CHN045005": {
      "name": "北海",
      "alpha": "b"
    },
    "CHN045006": {
      "name": "防城港",
      "alpha": "f"
    },
    "CHN045007": {
      "name": "钦州",
      "alpha": "q"
    },
    "CHN045008": {
      "name": "贵港",
      "alpha": "g"
    },
    "CHN045009": {
      "name": "玉林",
      "alpha": "y"
    },
    "CHN045010": {
      "name": "百色",
      "alpha": "b"
    },
    "CHN045011": {
      "name": "贺州",
      "alpha": "h"
    },
    "CHN045012": {
      "name": "河池",
      "alpha": "h"
    },
    "CHN045013": {
      "name": "来宾",
      "alpha": "l"
    },
    "CHN045014": {
      "name": "崇左",
      "alpha": "c"
    },
    "CHN046001": {
      "name": "海口",
      "alpha": "h"
    },
    "CHN046002": {
      "name": "三亚",
      "alpha": "s"
    },
    "CHN046003": {
      "name": "三沙",
      "alpha": "s"
    },
    "CHN046091": {
      "name": "五指山",
      "alpha": "w"
    },
    "CHN046092": {
      "name": "琼海",
      "alpha": "q"
    },
    "CHN046093": {
      "name": "儋州",
      "alpha": "d"
    },
    "CHN046095": {
      "name": "文昌",
      "alpha": "w"
    },
    "CHN046096": {
      "name": "万宁",
      "alpha": "w"
    },
    "CHN046097": {
      "name": "东方",
      "alpha": "d"
    },
    "CHN046A25": {
      "name": "定安",
      "alpha": "d"
    },
    "CHN046A26": {
      "name": "屯昌",
      "alpha": "t"
    },
    "CHN046A27": {
      "name": "澄迈",
      "alpha": "c"
    },
    "CHN046A28": {
      "name": "临高",
      "alpha": "l"
    },
    "CHN046A30": {
      "name": "白沙",
      "alpha": "b"
    },
    "CHN046A31": {
      "name": "昌江",
      "alpha": "c"
    },
    "CHN046A33": {
      "name": "乐东",
      "alpha": "l"
    },
    "CHN046A34": {
      "name": "陵水",
      "alpha": "l"
    },
    "CHN046A35": {
      "name": "保亭",
      "alpha": "b"
    },
    "CHN046A36": {
      "name": "琼中",
      "alpha": "q"
    },
    "CHN050001": {
      "name": "万州",
      "alpha": "w"
    },
    "CHN050002": {
      "name": "涪陵",
      "alpha": "f"
    },
    "CHN050003": {
      "name": "渝中",
      "alpha": "y"
    },
    "CHN050004": {
      "name": "大渡口",
      "alpha": "d"
    },
    "CHN050005": {
      "name": "江北",
      "alpha": "j"
    },
    "CHN050006": {
      "name": "沙坪坝",
      "alpha": "s"
    },
    "CHN050007": {
      "name": "九龙坡",
      "alpha": "j"
    },
    "CHN050008": {
      "name": "南岸",
      "alpha": "n"
    },
    "CHN050009": {
      "name": "北碚",
      "alpha": "b"
    },
    "CHN050010": {
      "name": "万盛",
      "alpha": "w"
    },
    "CHN050011": {
      "name": "双桥",
      "alpha": "s"
    },
    "CHN050012": {
      "name": "渝北",
      "alpha": "y"
    },
    "CHN050013": {
      "name": "巴南",
      "alpha": "b"
    },
    "CHN050021": {
      "name": "长寿",
      "alpha": "c"
    },
    "CHN050022": {
      "name": "綦江",
      "alpha": "q"
    },
    "CHN050023": {
      "name": "潼南",
      "alpha": "t"
    },
    "CHN050024": {
      "name": "铜梁",
      "alpha": "t"
    },
    "CHN050025": {
      "name": "大足",
      "alpha": "d"
    },
    "CHN050026": {
      "name": "荣昌",
      "alpha": "r"
    },
    "CHN050027": {
      "name": "璧山",
      "alpha": "b"
    },
    "CHN050028": {
      "name": "梁平",
      "alpha": "l"
    },
    "CHN050029": {
      "name": "城口",
      "alpha": "c"
    },
    "CHN050030": {
      "name": "丰都",
      "alpha": "f"
    },
    "CHN050031": {
      "name": "垫江",
      "alpha": "d"
    },
    "CHN050032": {
      "name": "武隆",
      "alpha": "w"
    },
    "CHN050033": {
      "name": "忠县",
      "alpha": "z"
    },
    "CHN050034": {
      "name": "开县",
      "alpha": "k"
    },
    "CHN050035": {
      "name": "云阳",
      "alpha": "y"
    },
    "CHN050036": {
      "name": "奉节",
      "alpha": "f"
    },
    "CHN050037": {
      "name": "巫山",
      "alpha": "w"
    },
    "CHN050038": {
      "name": "巫溪",
      "alpha": "w"
    },
    "CHN050039": {
      "name": "黔江",
      "alpha": "q"
    },
    "CHN050040": {
      "name": "石柱",
      "alpha": "s"
    },
    "CHN050041": {
      "name": "秀山",
      "alpha": "x"
    },
    "CHN050042": {
      "name": "酉阳",
      "alpha": "y"
    },
    "CHN050043": {
      "name": "彭水",
      "alpha": "p"
    },
    "CHN050081": {
      "name": "江津",
      "alpha": "j"
    },
    "CHN050082": {
      "name": "合川",
      "alpha": "h"
    },
    "CHN050083": {
      "name": "永川",
      "alpha": "y"
    },
    "CHN050084": {
      "name": "南川",
      "alpha": "n"
    },
    "CHN050085": {
      "name": "两江新区",
      "alpha": "l"
    },
    "CHN051001": {
      "name": "成都",
      "alpha": "c"
    },
    "CHN051003": {
      "name": "自贡",
      "alpha": "z"
    },
    "CHN051004": {
      "name": "攀枝花",
      "alpha": "p"
    },
    "CHN051005": {
      "name": "泸州",
      "alpha": "l"
    },
    "CHN051006": {
      "name": "德阳",
      "alpha": "d"
    },
    "CHN051007": {
      "name": "绵阳",
      "alpha": "m"
    },
    "CHN051008": {
      "name": "广元",
      "alpha": "g"
    },
    "CHN051009": {
      "name": "遂宁",
      "alpha": "s"
    },
    "CHN051010": {
      "name": "内江",
      "alpha": "n"
    },
    "CHN051011": {
      "name": "乐山",
      "alpha": "l"
    },
    "CHN051013": {
      "name": "南充",
      "alpha": "n"
    },
    "CHN051014": {
      "name": "眉山",
      "alpha": "m"
    },
    "CHN051015": {
      "name": "宜宾",
      "alpha": "y"
    },
    "CHN051016": {
      "name": "广安",
      "alpha": "g"
    },
    "CHN051017": {
      "name": "达州",
      "alpha": "d"
    },
    "CHN051018": {
      "name": "雅安",
      "alpha": "y"
    },
    "CHN051019": {
      "name": "巴中",
      "alpha": "b"
    },
    "CHN051020": {
      "name": "资阳",
      "alpha": "z"
    },
    "CHN051032": {
      "name": "阿坝",
      "alpha": "a"
    },
    "CHN051033": {
      "name": "甘孜",
      "alpha": "g"
    },
    "CHN051034": {
      "name": "凉山",
      "alpha": "l"
    },
    "CHN052001": {
      "name": "贵阳",
      "alpha": "g"
    },
    "CHN052002": {
      "name": "六盘水",
      "alpha": "l"
    },
    "CHN052003": {
      "name": "遵义",
      "alpha": "z"
    },
    "CHN052004": {
      "name": "安顺",
      "alpha": "a"
    },
    "CHN052022": {
      "name": "铜仁",
      "alpha": "t"
    },
    "CHN052023": {
      "name": "黔西南",
      "alpha": "q"
    },
    "CHN052024": {
      "name": "毕节",
      "alpha": "b"
    },
    "CHN052026": {
      "name": "黔东南",
      "alpha": "q"
    },
    "CHN052027": {
      "name": "黔南",
      "alpha": "q"
    },
    "CHN053001": {
      "name": "昆明",
      "alpha": "k"
    },
    "CHN053003": {
      "name": "曲靖",
      "alpha": "q"
    },
    "CHN053004": {
      "name": "玉溪",
      "alpha": "y"
    },
    "CHN053005": {
      "name": "保山",
      "alpha": "b"
    },
    "CHN053006": {
      "name": "昭通",
      "alpha": "z"
    },
    "CHN053007": {
      "name": "丽江",
      "alpha": "l"
    },
    "CHN053008": {
      "name": "普洱",
      "alpha": "p"
    },
    "CHN053009": {
      "name": "临沧",
      "alpha": "l"
    },
    "CHN053023": {
      "name": "楚雄",
      "alpha": "c"
    },
    "CHN053025": {
      "name": "红河",
      "alpha": "h"
    },
    "CHN053026": {
      "name": "文山",
      "alpha": "w"
    },
    "CHN053028": {
      "name": "西双版纳",
      "alpha": "x"
    },
    "CHN053029": {
      "name": "大理",
      "alpha": "d"
    },
    "CHN053031": {
      "name": "德宏",
      "alpha": "d"
    },
    "CHN053033": {
      "name": "怒江",
      "alpha": "n"
    },
    "CHN053034": {
      "name": "迪庆",
      "alpha": "d"
    },
    "CHN054001": {
      "name": "拉萨",
      "alpha": "l"
    },
    "CHN054021": {
      "name": "昌都",
      "alpha": "c"
    },
    "CHN054022": {
      "name": "山南",
      "alpha": "s"
    },
    "CHN054023": {
      "name": "日喀则",
      "alpha": "r"
    },
    "CHN054024": {
      "name": "那曲",
      "alpha": "n"
    },
    "CHN054025": {
      "name": "阿里",
      "alpha": "a"
    },
    "CHN054026": {
      "name": "林芝",
      "alpha": "l"
    },
    "CHN061001": {
      "name": "西安",
      "alpha": "x"
    },
    "CHN061002": {
      "name": "铜川",
      "alpha": "t"
    },
    "CHN061003": {
      "name": "宝鸡",
      "alpha": "b"
    },
    "CHN061004": {
      "name": "咸阳",
      "alpha": "x"
    },
    "CHN061005": {
      "name": "渭南",
      "alpha": "w"
    },
    "CHN061006": {
      "name": "延安",
      "alpha": "y"
    },
    "CHN061007": {
      "name": "汉中",
      "alpha": "h"
    },
    "CHN061008": {
      "name": "榆林",
      "alpha": "y"
    },
    "CHN061009": {
      "name": "安康",
      "alpha": "a"
    },
    "CHN061010": {
      "name": "商洛",
      "alpha": "s"
    },
    "CHN062001": {
      "name": "兰州市",
      "alpha": "l"
    },
    "CHN062002": {
      "name": "嘉峪关",
      "alpha": "j"
    },
    "CHN062003": {
      "name": "金昌",
      "alpha": "j"
    },
    "CHN062004": {
      "name": "白银",
      "alpha": "b"
    },
    "CHN062005": {
      "name": "天水",
      "alpha": "t"
    },
    "CHN062006": {
      "name": "武威",
      "alpha": "w"
    },
    "CHN062007": {
      "name": "张掖",
      "alpha": "z"
    },
    "CHN062008": {
      "name": "平凉",
      "alpha": "p"
    },
    "CHN062009": {
      "name": "酒泉",
      "alpha": "j"
    },
    "CHN062010": {
      "name": "庆阳",
      "alpha": "q"
    },
    "CHN062011": {
      "name": "定西",
      "alpha": "d"
    },
    "CHN062012": {
      "name": "陇南",
      "alpha": "l"
    },
    "CHN062029": {
      "name": "临夏",
      "alpha": "l"
    },
    "CHN062030": {
      "name": "甘南",
      "alpha": "g"
    },
    "CHN063001": {
      "name": "西宁",
      "alpha": "x"
    },
    "CHN063021": {
      "name": "海东",
      "alpha": "h"
    },
    "CHN063022": {
      "name": "海北",
      "alpha": "h"
    },
    "CHN063023": {
      "name": "黄南",
      "alpha": "h"
    },
    "CHN063025": {
      "name": "海南",
      "alpha": "h"
    },
    "CHN063026": {
      "name": "果洛",
      "alpha": "g"
    },
    "CHN063027": {
      "name": "玉树",
      "alpha": "y"
    },
    "CHN063028": {
      "name": "海西",
      "alpha": "h"
    },
    "CHN064001": {
      "name": "银川",
      "alpha": "y"
    },
    "CHN064002": {
      "name": "石嘴山",
      "alpha": "s"
    },
    "CHN064003": {
      "name": "吴忠",
      "alpha": "w"
    },
    "CHN064004": {
      "name": "固原",
      "alpha": "g"
    },
    "CHN064005": {
      "name": "中卫",
      "alpha": "z"
    },
    "CHN065001": {
      "name": "乌鲁木齐",
      "alpha": "w"
    },
    "CHN065002": {
      "name": "克拉玛依",
      "alpha": "k"
    },
    "CHN065021": {
      "name": "吐鲁番",
      "alpha": "t"
    },
    "CHN065022": {
      "name": "哈密",
      "alpha": "h"
    },
    "CHN065023": {
      "name": "昌吉",
      "alpha": "c"
    },
    "CHN065027": {
      "name": "博尔塔拉",
      "alpha": "b"
    },
    "CHN065028": {
      "name": "巴音郭楞",
      "alpha": "b"
    },
    "CHN065029": {
      "name": "阿克苏",
      "alpha": "a"
    },
    "CHN065030": {
      "name": "克孜勒苏",
      "alpha": "k"
    },
    "CHN065031": {
      "name": "喀什",
      "alpha": "k"
    },
    "CHN065032": {
      "name": "和田",
      "alpha": "h"
    },
    "CHN065040": {
      "name": "伊犁",
      "alpha": "y"
    },
    "CHN065042": {
      "name": "塔城",
      "alpha": "t"
    },
    "CHN065043": {
      "name": "阿勒泰",
      "alpha": "a"
    },
    "CHN065091": {
      "name": "石河子",
      "alpha": "s"
    },
    "CHN065092": {
      "name": "阿拉尔",
      "alpha": "a"
    },
    "CHN065093": {
      "name": "图木舒克",
      "alpha": "t"
    },
    "CHN065094": {
      "name": "五家渠",
      "alpha": "w"
    },
    "CHN065095": {
      "name": "北屯",
      "alpha": "b"
    },
    "CHN071001": {
      "name": "台北市",
      "alpha": "t"
    },
    "CHN071002": {
      "name": "高雄市",
      "alpha": "g"
    },
    "CHN071003": {
      "name": "基隆市",
      "alpha": "j"
    },
    "CHN071004": {
      "name": "台中市",
      "alpha": "t"
    },
    "CHN071005": {
      "name": "台南市",
      "alpha": "t"
    },
    "CHN071006": {
      "name": "新竹市",
      "alpha": "x"
    },
    "CHN071007": {
      "name": "嘉义市",
      "alpha": "j"
    },
    "CHN071008": {
      "name": "台北县",
      "alpha": "t"
    },
    "CHN071009": {
      "name": "宜兰县",
      "alpha": "y"
    },
    "CHN071010": {
      "name": "桃园县",
      "alpha": "t"
    },
    "CHN071011": {
      "name": "新竹县",
      "alpha": "x"
    },
    "CHN071012": {
      "name": "苗栗县",
      "alpha": "m"
    },
    "CHN071013": {
      "name": "台中县",
      "alpha": "t"
    },
    "CHN071014": {
      "name": "彰化县",
      "alpha": "z"
    },
    "CHN071015": {
      "name": "南投县",
      "alpha": "n"
    },
    "CHN071016": {
      "name": "云林县",
      "alpha": "y"
    },
    "CHN071017": {
      "name": "嘉义县",
      "alpha": "j"
    },
    "CHN071018": {
      "name": "台南县",
      "alpha": "t"
    },
    "CHN071019": {
      "name": "高雄县",
      "alpha": "g"
    },
    "CHN071020": {
      "name": "屏东县",
      "alpha": "p"
    },
    "CHN071021": {
      "name": "澎湖县",
      "alpha": "p"
    },
    "CHN071022": {
      "name": "台东县",
      "alpha": "t"
    },
    "CHN071023": {
      "name": "花莲县",
      "alpha": "h"
    },
    "CHN081HCW": {
      "name": "中西区",
      "alpha": "z"
    },
    "CHN081HEA": {
      "name": "东区",
      "alpha": "d"
    },
    "CHN081HSO": {
      "name": "南区",
      "alpha": "n"
    },
    "CHN081HWC": {
      "name": "湾仔区",
      "alpha": "w"
    },
    "CHN081KKC": {
      "name": "九龙城区",
      "alpha": "j"
    },
    "CHN081KKT": {
      "name": "观塘区",
      "alpha": "g"
    },
    "CHN081KSS": {
      "name": "深水埗区",
      "alpha": "s"
    },
    "CHN081KWT": {
      "name": "黄大仙区",
      "alpha": "h"
    },
    "CHN081KYT": {
      "name": "油尖旺区",
      "alpha": "y"
    },
    "CHN081NIS": {
      "name": "离岛区",
      "alpha": "l"
    },
    "CHN081NKT": {
      "name": "葵青区",
      "alpha": "k"
    },
    "CHN081NNO": {
      "name": "北区",
      "alpha": "b"
    },
    "CHN081NSK": {
      "name": "西贡区",
      "alpha": "x"
    },
    "CHN081NST": {
      "name": "沙田区",
      "alpha": "s"
    },
    "CHN081NTM": {
      "name": "屯门区",
      "alpha": "t"
    },
    "CHN081NTP": {
      "name": "大埔区",
      "alpha": "d"
    },
    "CHN081NTW": {
      "name": "荃湾区",
      "alpha": "q"
    },
    "CHN081NYL": {
      "name": "元朗区",
      "alpha": "y"
    },
    "CHN082ANT": {
      "name": "圣安多尼堂区",
      "alpha": "s"
    },
    "CHN082CAT": {
      "name": "大堂区",
      "alpha": "d"
    },
    "CHN082CLN": {
      "name": "路环",
      "alpha": "l"
    },
    "CHN082LAW": {
      "name": "望德堂区",
      "alpha": "w"
    },
    "CHN082LAZ": {
      "name": "风顺堂区",
      "alpha": "f"
    },
    "CHN082OLF": {
      "name": "花地玛堂区",
      "alpha": "h"
    },
    "CHN082TPA": {
      "name": "氹仔",
      "alpha": "z"
    }
  },
  "CIV": {
    "CIV0000AG": {
      "name": "阿涅比",
      "alpha": "a"
    },
    "CIV0000BF": {
      "name": "巴芬",
      "alpha": "b"
    },
    "CIV0000BS": {
      "name": "下萨桑德拉",
      "alpha": "x"
    },
    "CIV0000DE": {
      "name": "登盖莱",
      "alpha": "d"
    },
    "CIV0000DH": {
      "name": "山地",
      "alpha": "s"
    },
    "CIV0000FR": {
      "name": "弗罗马格尔",
      "alpha": "f"
    },
    "CIV0000HT": {
      "name": "萨桑德拉",
      "alpha": "s"
    },
    "CIV0000LC": {
      "name": "湖泊",
      "alpha": "h"
    },
    "CIV0000LG": {
      "name": "泻湖",
      "alpha": "x"
    },
    "CIV0000MC": {
      "name": "中科莫埃",
      "alpha": "z"
    },
    "CIV0000MR": {
      "name": "马拉韦",
      "alpha": "m"
    },
    "CIV0000MV": {
      "name": "中卡瓦利",
      "alpha": "z"
    },
    "CIV0000NC": {
      "name": "恩济－科莫埃",
      "alpha": "e"
    },
    "CIV0000SB": {
      "name": "南邦达马",
      "alpha": "n"
    },
    "CIV0000SC": {
      "name": "南科莫埃",
      "alpha": "n"
    },
    "CIV0000SV": {
      "name": "萨瓦纳",
      "alpha": "s"
    },
    "CIV0000VB": {
      "name": "邦达马河谷",
      "alpha": "b"
    },
    "CIV0000WR": {
      "name": "沃罗杜古",
      "alpha": "w"
    },
    "CIV0000ZA": {
      "name": "赞赞",
      "alpha": "z"
    }
  },
  "CMR": {
    "DZA000AAE": {
      "name": "安纳巴",
      "alpha": "a"
    },
    "DZA000ADE": {
      "name": "艾因·德夫拉",
      "alpha": "a"
    },
    "DZA000ADR": {
      "name": "阿德拉尔",
      "alpha": "a"
    },
    "DZA000ALG": {
      "name": "阿尔及尔",
      "alpha": "a"
    },
    "DZA000ATE": {
      "name": "艾因·蒂姆尚特",
      "alpha": "a"
    },
    "DZA000BAT": {
      "name": "巴特纳",
      "alpha": "b"
    },
    "DZA000BEC": {
      "name": "贝沙尔",
      "alpha": "b"
    },
    "DZA000BIS": {
      "name": "比斯克拉",
      "alpha": "b"
    },
    "DZA000BJA": {
      "name": "贝贾亚",
      "alpha": "b"
    },
    "DZA000BLI": {
      "name": "布利达",
      "alpha": "b"
    },
    "DZA000BOA": {
      "name": "布依拉",
      "alpha": "b"
    },
    "DZA000BOR": {
      "name": "布尔吉·布阿雷里吉",
      "alpha": "b"
    },
    "DZA000BOU": {
      "name": "布迈德斯",
      "alpha": "b"
    },
    "DZA000CHL": {
      "name": "谢里夫",
      "alpha": "x"
    },
    "DZA000CZL": {
      "name": "君士坦丁",
      "alpha": "j"
    },
    "DZA000DJE": {
      "name": "杰勒法",
      "alpha": "j"
    },
    "DZA000EBA": {
      "name": "贝伊德",
      "alpha": "b"
    },
    "DZA000EOU": {
      "name": "瓦德",
      "alpha": "w"
    },
    "DZA000ETA": {
      "name": "塔里夫",
      "alpha": "t"
    },
    "DZA000GHA": {
      "name": "盖尔达耶",
      "alpha": "g"
    },
    "DZA000GUE": {
      "name": "盖尔马",
      "alpha": "g"
    },
    "DZA000ILL": {
      "name": "伊利齐",
      "alpha": "y"
    },
    "DZA000IOU": {
      "name": "提济乌祖",
      "alpha": "t"
    },
    "DZA000JIJ": {
      "name": "吉杰尔",
      "alpha": "j"
    },
    "DZA000KHE": {
      "name": "罕西拉",
      "alpha": "h"
    },
    "DZA000LAG": {
      "name": "拉格瓦特",
      "alpha": "l"
    },
    "DZA000MED": {
      "name": "麦迪亚",
      "alpha": "m"
    },
    "DZA000MIL": {
      "name": "密拉",
      "alpha": "m"
    },
    "DZA000MOS": {
      "name": "莫斯塔加纳姆",
      "alpha": "m"
    },
    "DZA000MSI": {
      "name": "姆西拉",
      "alpha": "m"
    },
    "DZA000MUA": {
      "name": "马斯卡拉",
      "alpha": "m"
    },
    "DZA000NAA": {
      "name": "纳阿马",
      "alpha": "n"
    },
    "DZA000OEB": {
      "name": "乌姆布阿基",
      "alpha": "w"
    },
    "DZA000ORA": {
      "name": "奥兰",
      "alpha": "a"
    },
    "DZA000OUA": {
      "name": "瓦尔格拉",
      "alpha": "w"
    },
    "DZA000REL": {
      "name": "赫利赞",
      "alpha": "h"
    },
    "DZA000SAH": {
      "name": "苏克·阿赫拉斯",
      "alpha": "s"
    },
    "DZA000SAI": {
      "name": "赛伊达",
      "alpha": "s"
    },
    "CMR000ADA": {
      "name": "阿达马瓦",
      "alpha": "a"
    },
    "CMR000CEN": {
      "name": "中央",
      "alpha": "z"
    },
    "CMR000EST": {
      "name": "东部",
      "alpha": "d"
    },
    "CMR000EXN": {
      "name": "北端",
      "alpha": "b"
    },
    "CMR000LIT": {
      "name": "滨海",
      "alpha": "b"
    },
    "CMR000NOR": {
      "name": "北部",
      "alpha": "b"
    },
    "CMR000NOT": {
      "name": "西北",
      "alpha": "x"
    },
    "CMR000OUE": {
      "name": "西部",
      "alpha": "x"
    },
    "CMR000SOU": {
      "name": "西南",
      "alpha": "x"
    },
    "CMR000SUD": {
      "name": "南部",
      "alpha": "n"
    }
  },
  "COD": {},
  "COG": {},
  "COL": {
    "COL000AMZ": {
      "name": "亚马孙",
      "alpha": "y"
    },
    "COL000ANT": {
      "name": "安提奥基亚",
      "alpha": "a"
    },
    "COL000ARA": {
      "name": "阿劳卡",
      "alpha": "a"
    },
    "COL000ATL": {
      "name": "大西洋",
      "alpha": "d"
    },
    "COL000BDC": {
      "name": "波哥大首都区",
      "alpha": "b"
    },
    "COL000BOL": {
      "name": "博利瓦尔",
      "alpha": "b"
    },
    "COL000BOY": {
      "name": "博亚卡",
      "alpha": "b"
    },
    "COL000CAL": {
      "name": "卡尔达斯",
      "alpha": "k"
    },
    "COL000CAM": {
      "name": "昆迪纳马卡",
      "alpha": "k"
    },
    "COL000CAQ": {
      "name": "卡克塔",
      "alpha": "k"
    },
    "COL000CAS": {
      "name": "卡萨纳雷",
      "alpha": "k"
    },
    "COL000CAU": {
      "name": "考卡",
      "alpha": "k"
    },
    "COL000CES": {
      "name": "塞萨尔",
      "alpha": "s"
    },
    "COL000CHO": {
      "name": "乔科",
      "alpha": "q"
    },
    "COL000COR": {
      "name": "科尔多巴",
      "alpha": "k"
    },
    "COL000GJR": {
      "name": "瓜希拉",
      "alpha": "g"
    },
    "COL000GNA": {
      "name": "瓜伊尼亚",
      "alpha": "g"
    },
    "COL000GVR": {
      "name": "瓜维亚雷",
      "alpha": "g"
    },
    "COL000HUI": {
      "name": "乌伊拉",
      "alpha": "w"
    },
    "COL000MAG": {
      "name": "马格达雷那",
      "alpha": "m"
    },
    "COL000MET": {
      "name": "梅塔",
      "alpha": "m"
    },
    "COL000NAR": {
      "name": "纳里尼奥",
      "alpha": "n"
    },
    "COL000NDS": {
      "name": "北桑坦德",
      "alpha": "b"
    },
    "COL000PUT": {
      "name": "普图马约",
      "alpha": "p"
    },
    "COL000QUI": {
      "name": "金迪奥",
      "alpha": "j"
    },
    "COL000RIS": {
      "name": "利萨拉尔达",
      "alpha": "l"
    },
    "COL000SAN": {
      "name": "桑坦德",
      "alpha": "s"
    },
    "COL000SAP": {
      "name": "圣安德烈斯-普罗维登西亚",
      "alpha": "s"
    },
    "COL000SUC": {
      "name": "苏克雷",
      "alpha": "s"
    },
    "COL000TOL": {
      "name": "托利马",
      "alpha": "t"
    },
    "COL000VAU": {
      "name": "沃佩斯",
      "alpha": "w"
    },
    "COL000VDC": {
      "name": "考卡山谷",
      "alpha": "k"
    },
    "COL000VIC": {
      "name": "维查达",
      "alpha": "w"
    }
  },
  "CRI": {
    "CRI00000A": {
      "name": "阿拉胡埃拉",
      "alpha": "a"
    },
    "CRI00000C": {
      "name": "卡塔戈",
      "alpha": "k"
    },
    "CRI00000G": {
      "name": "瓜纳卡斯特",
      "alpha": "g"
    },
    "CRI00000H": {
      "name": "埃雷迪亚",
      "alpha": "a"
    },
    "CRI00000L": {
      "name": "利蒙",
      "alpha": "l"
    },
    "CRI00000P": {
      "name": "蓬塔雷纳斯",
      "alpha": "p"
    },
    "CRI0000SJ": {
      "name": "圣何塞",
      "alpha": "s"
    }
  },
  "CUB": {
    "CUB000001": {
      "name": "比那尔德里奥",
      "alpha": "b"
    },
    "CUB000002": {
      "name": "哈瓦那",
      "alpha": "h"
    },
    "CUB000003": {
      "name": "哈瓦那城",
      "alpha": "h"
    },
    "CUB000004": {
      "name": "马坦萨斯",
      "alpha": "m"
    },
    "CUB000005": {
      "name": "比亚克拉拉",
      "alpha": "b"
    },
    "CUB000006": {
      "name": "西恩富戈斯",
      "alpha": "x"
    },
    "CUB000007": {
      "name": "圣斯皮里图斯",
      "alpha": "s"
    },
    "CUB000008": {
      "name": "谢戈德阿维拉",
      "alpha": "x"
    },
    "CUB000009": {
      "name": "卡马圭",
      "alpha": "k"
    },
    "CUB000010": {
      "name": "拉斯图纳斯",
      "alpha": "l"
    },
    "CUB000011": {
      "name": "奥尔金",
      "alpha": "a"
    },
    "CUB000012": {
      "name": "格拉玛",
      "alpha": "g"
    },
    "CUB000013": {
      "name": "圣地亚哥",
      "alpha": "s"
    },
    "CUB000014": {
      "name": "关塔那摩",
      "alpha": "g"
    },
    "CUB000099": {
      "name": "青年岛特区",
      "alpha": "q"
    },
    "CUB000MAY": {
      "name": "马亚里",
      "alpha": "m"
    },
    "CUB000MZO": {
      "name": "曼萨尼罗",
      "alpha": "m"
    }
  },
  "CYP": {
    "CYP000001": {
      "name": "尼科西亚",
      "alpha": "n"
    },
    "CYP000002": {
      "name": "利马索尔",
      "alpha": "l"
    },
    "CYP000003": {
      "name": "拉纳卡",
      "alpha": "l"
    },
    "CYP000004": {
      "name": "法马古斯塔",
      "alpha": "f"
    },
    "CYP000005": {
      "name": "帕福斯",
      "alpha": "p"
    },
    "CYP000006": {
      "name": "凯里尼亚",
      "alpha": "k"
    }
  },
  "CZE": {
    "CZE0000JC": {
      "name": "南摩拉维亚",
      "alpha": "n"
    },
    "CZE0000KA": {
      "name": "卡罗维发利",
      "alpha": "k"
    },
    "CZE0000KR": {
      "name": "赫拉德茨-克拉洛韦",
      "alpha": "h"
    },
    "CZE0000LI": {
      "name": "利贝雷克",
      "alpha": "l"
    },
    "CZE0000MO": {
      "name": "摩拉维亚-西里西亚",
      "alpha": "m"
    },
    "CZE0000OL": {
      "name": "奥洛穆茨",
      "alpha": "a"
    },
    "CZE0000PA": {
      "name": "帕尔杜比采",
      "alpha": "p"
    },
    "CZE0000PL": {
      "name": "比尔森",
      "alpha": "b"
    },
    "CZE0000PR": {
      "name": "布拉格直辖市",
      "alpha": "b"
    },
    "CZE0000ST": {
      "name": "中捷克",
      "alpha": "z"
    },
    "CZE0000US": {
      "name": "乌斯季",
      "alpha": "w"
    },
    "CZE0000VY": {
      "name": "维索基纳",
      "alpha": "w"
    },
    "CZE0000ZL": {
      "name": "兹林",
      "alpha": "z"
    }
  },
  "DEU": {
    "DEU0000BE": {
      "name": "柏林",
      "alpha": "b"
    },
    "DEU0000HB": {
      "name": "不来梅",
      "alpha": "b"
    },
    "DEU0000HH": {
      "name": "汉堡",
      "alpha": "h"
    },
    "DEU000AGB": {
      "name": "奥格斯堡",
      "alpha": "a"
    },
    "DEU000ANS": {
      "name": "安斯巴格",
      "alpha": "a"
    },
    "DEU000ARN": {
      "name": "阿恩斯贝格",
      "alpha": "a"
    },
    "DEU000BFE": {
      "name": "比勒费尔德",
      "alpha": "b"
    },
    "DEU000BOM": {
      "name": "波鸿",
      "alpha": "b"
    },
    "DEU000BRW": {
      "name": "不伦瑞克",
      "alpha": "b"
    },
    "DEU000BYU": {
      "name": "拜伊罗特",
      "alpha": "b"
    },
    "DEU000CGN": {
      "name": "科隆",
      "alpha": "k"
    },
    "DEU000CHE": {
      "name": "开姆尼斯",
      "alpha": "k"
    },
    "DEU000DAR": {
      "name": "达姆施塔特",
      "alpha": "d"
    },
    "DEU000DES": {
      "name": "德绍",
      "alpha": "d"
    },
    "DEU000DET": {
      "name": "代特莫尔特",
      "alpha": "d"
    },
    "DEU000DRS": {
      "name": "德累斯顿",
      "alpha": "d"
    },
    "DEU000DUS": {
      "name": "杜塞尔多夫",
      "alpha": "d"
    },
    "DEU000ERF": {
      "name": "爱尔福特",
      "alpha": "a"
    },
    "DEU000FBG": {
      "name": "弗赖堡",
      "alpha": "f"
    },
    "DEU000FFO": {
      "name": "法兰克福",
      "alpha": "f"
    },
    "DEU000GBN": {
      "name": "吉森",
      "alpha": "j"
    },
    "DEU000HAE": {
      "name": "哈雷",
      "alpha": "h"
    },
    "DEU000HAJ": {
      "name": "汉诺威",
      "alpha": "h"
    },
    "DEU000KAE": {
      "name": "卡尔斯鲁厄",
      "alpha": "k"
    },
    "DEU000KAS": {
      "name": "卡塞尔",
      "alpha": "k"
    },
    "DEU000KEL": {
      "name": "基尔",
      "alpha": "j"
    },
    "DEU000KOB": {
      "name": "科布伦次",
      "alpha": "k"
    },
    "DEU000LBG": {
      "name": "吕讷堡",
      "alpha": "l"
    },
    "DEU000LDH": {
      "name": "兰茨胡特",
      "alpha": "l"
    },
    "DEU000LEJ": {
      "name": "莱比锡",
      "alpha": "l"
    },
    "DEU000MAG": {
      "name": "马格德堡",
      "alpha": "m"
    },
    "DEU000MAI": {
      "name": "美因兹",
      "alpha": "m"
    },
    "DEU000MHG": {
      "name": "曼海姆",
      "alpha": "m"
    },
    "DEU000MUC": {
      "name": "慕尼黑",
      "alpha": "m"
    },
    "DEU000MUN": {
      "name": "明斯特",
      "alpha": "m"
    },
    "DEU000NUE": {
      "name": "纽伦堡",
      "alpha": "n"
    },
    "DEU000POT": {
      "name": "波茨坦",
      "alpha": "b"
    },
    "DEU000STR": {
      "name": "斯图加特",
      "alpha": "s"
    },
    "DEU000SWH": {
      "name": "什未林",
      "alpha": "s"
    },
    "DEU000TRI": {
      "name": "特里尔",
      "alpha": "t"
    },
    "DEU000WIB": {
      "name": "威斯巴登",
      "alpha": "w"
    },
    "DEU000WUG": {
      "name": "维尔茨堡",
      "alpha": "w"
    }
  },
  "DJI": {
    "DJI00000K": {
      "name": "迪基勒区",
      "alpha": "d"
    },
    "DJI00000O": {
      "name": "奥博克区",
      "alpha": "a"
    },
    "DJI00000S": {
      "name": "阿里萨比赫区",
      "alpha": "a"
    },
    "DJI00000T": {
      "name": "塔朱拉区",
      "alpha": "t"
    }
  },
  "DNK": {
    "DNK0000AR": {
      "name": "奥胡斯",
      "alpha": "a"
    },
    "DNK0000BO": {
      "name": "博恩霍尔姆",
      "alpha": "b"
    },
    "DNK0000FY": {
      "name": "菲茵",
      "alpha": "f"
    },
    "DNK0000ST": {
      "name": "斯多斯特姆",
      "alpha": "s"
    },
    "DNK0000VS": {
      "name": "西希兰",
      "alpha": "x"
    },
    "DNK000CPH": {
      "name": "哥本哈根",
      "alpha": "g"
    },
    "DNK000FRE": {
      "name": "菲特烈堡",
      "alpha": "f"
    },
    "DNK000RIB": {
      "name": "里伯",
      "alpha": "l"
    },
    "DNK000RKE": {
      "name": "罗斯基勒",
      "alpha": "l"
    },
    "DNK000RKG": {
      "name": "灵克宾",
      "alpha": "l"
    },
    "DNK000VBI": {
      "name": "南日德兰",
      "alpha": "n"
    },
    "DNK000VEJ": {
      "name": "维厄勒",
      "alpha": "w"
    },
    "DNK000VIB": {
      "name": "维堡",
      "alpha": "w"
    },
    "DNK000VSV": {
      "name": "北日德兰",
      "alpha": "b"
    }
  },
  "DOM": {},
  "DZA": {
    "DZA000AAE": {
      "name": "安纳巴",
      "alpha": "a"
    },
    "DZA000ADE": {
      "name": "艾因·德夫拉",
      "alpha": "a"
    },
    "DZA000ADR": {
      "name": "阿德拉尔",
      "alpha": "a"
    },
    "DZA000ALG": {
      "name": "阿尔及尔",
      "alpha": "a"
    },
    "DZA000ATE": {
      "name": "艾因·蒂姆尚特",
      "alpha": "a"
    },
    "DZA000BAT": {
      "name": "巴特纳",
      "alpha": "b"
    },
    "DZA000BEC": {
      "name": "贝沙尔",
      "alpha": "b"
    },
    "DZA000BIS": {
      "name": "比斯克拉",
      "alpha": "b"
    },
    "DZA000BJA": {
      "name": "贝贾亚",
      "alpha": "b"
    },
    "DZA000BLI": {
      "name": "布利达",
      "alpha": "b"
    },
    "DZA000BOA": {
      "name": "布依拉",
      "alpha": "b"
    },
    "DZA000BOR": {
      "name": "布尔吉·布阿雷里吉",
      "alpha": "b"
    },
    "DZA000BOU": {
      "name": "布迈德斯",
      "alpha": "b"
    },
    "DZA000CHL": {
      "name": "谢里夫",
      "alpha": "x"
    },
    "DZA000CZL": {
      "name": "君士坦丁",
      "alpha": "j"
    },
    "DZA000DJE": {
      "name": "杰勒法",
      "alpha": "j"
    },
    "DZA000EBA": {
      "name": "贝伊德",
      "alpha": "b"
    },
    "DZA000EOU": {
      "name": "瓦德",
      "alpha": "w"
    },
    "DZA000ETA": {
      "name": "塔里夫",
      "alpha": "t"
    },
    "DZA000GHA": {
      "name": "盖尔达耶",
      "alpha": "g"
    },
    "DZA000GUE": {
      "name": "盖尔马",
      "alpha": "g"
    },
    "DZA000ILL": {
      "name": "伊利齐",
      "alpha": "y"
    },
    "DZA000IOU": {
      "name": "提济乌祖",
      "alpha": "t"
    },
    "DZA000JIJ": {
      "name": "吉杰尔",
      "alpha": "j"
    },
    "DZA000KHE": {
      "name": "罕西拉",
      "alpha": "h"
    },
    "DZA000LAG": {
      "name": "拉格瓦特",
      "alpha": "l"
    },
    "DZA000MED": {
      "name": "麦迪亚",
      "alpha": "m"
    },
    "DZA000MIL": {
      "name": "密拉",
      "alpha": "m"
    },
    "DZA000MOS": {
      "name": "莫斯塔加纳姆",
      "alpha": "m"
    },
    "DZA000MSI": {
      "name": "姆西拉",
      "alpha": "m"
    },
    "DZA000MUA": {
      "name": "马斯卡拉",
      "alpha": "m"
    },
    "DZA000NAA": {
      "name": "纳阿马",
      "alpha": "n"
    },
    "DZA000OEB": {
      "name": "乌姆布阿基",
      "alpha": "w"
    },
    "DZA000ORA": {
      "name": "奥兰",
      "alpha": "a"
    },
    "DZA000OUA": {
      "name": "瓦尔格拉",
      "alpha": "w"
    },
    "DZA000REL": {
      "name": "赫利赞",
      "alpha": "h"
    },
    "DZA000SAH": {
      "name": "苏克·阿赫拉斯",
      "alpha": "s"
    },
    "DZA000SAI": {
      "name": "赛伊达",
      "alpha": "s"
    },
    "DZA000SBA": {
      "name": "西迪贝勒阿贝斯",
      "alpha": "x"
    },
    "DZA000SET": {
      "name": "塞蒂夫",
      "alpha": "s"
    },
    "DZA000SKI": {
      "name": "斯基克达",
      "alpha": "s"
    },
    "DZA000TAM": {
      "name": "塔曼拉塞特",
      "alpha": "t"
    },
    "DZA000TEB": {
      "name": "特贝萨",
      "alpha": "t"
    },
    "DZA000TIA": {
      "name": "提亚雷特",
      "alpha": "t"
    },
    "DZA000TIN": {
      "name": "廷杜夫",
      "alpha": "t"
    },
    "DZA000TIP": {
      "name": "蒂巴扎",
      "alpha": "d"
    },
    "DZA000TIS": {
      "name": "蒂斯姆西勒特",
      "alpha": "d"
    },
    "DZA000TLE": {
      "name": "特莱姆森",
      "alpha": "t"
    }
  },
  "ECU": {
    "ECU00000A": {
      "name": "阿苏艾",
      "alpha": "a"
    },
    "ECU00000B": {
      "name": "玻利瓦尔",
      "alpha": "b"
    },
    "ECU00000C": {
      "name": "卡尔奇",
      "alpha": "k"
    },
    "ECU00000D": {
      "name": "纳波，奥雷利亚纳",
      "alpha": "n"
    },
    "ECU00000E": {
      "name": "埃斯梅拉尔达斯",
      "alpha": "a"
    },
    "ECU00000F": {
      "name": "卡尼亚尔",
      "alpha": "k"
    },
    "ECU00000G": {
      "name": "瓜亚斯",
      "alpha": "g"
    },
    "ECU00000H": {
      "name": "钦博拉索",
      "alpha": "q"
    },
    "ECU00000I": {
      "name": "因巴布拉",
      "alpha": "y"
    },
    "ECU00000L": {
      "name": "洛哈",
      "alpha": "l"
    },
    "ECU00000M": {
      "name": "马纳比",
      "alpha": "m"
    },
    "ECU00000O": {
      "name": "埃尔奥罗",
      "alpha": "a"
    },
    "ECU00000P": {
      "name": "皮钦查",
      "alpha": "p"
    },
    "ECU00000R": {
      "name": "洛斯里奥斯",
      "alpha": "l"
    },
    "ECU00000S": {
      "name": "莫罗纳－圣地亚哥",
      "alpha": "m"
    },
    "ECU00000T": {
      "name": "通古拉瓦",
      "alpha": "t"
    },
    "ECU00000U": {
      "name": "苏昆毕奥斯",
      "alpha": "s"
    },
    "ECU00000W": {
      "name": "加拉帕戈斯",
      "alpha": "j"
    },
    "ECU00000X": {
      "name": "科托帕希",
      "alpha": "k"
    },
    "ECU00000Y": {
      "name": "帕斯塔萨",
      "alpha": "p"
    },
    "ECU00000Z": {
      "name": "萨莫拉－钦奇佩",
      "alpha": "s"
    }
  },
  "EGY": {
    "EGY000ALY": {
      "name": "亚历山大",
      "alpha": "y"
    },
    "EGY000ASW": {
      "name": "阿斯旺",
      "alpha": "a"
    },
    "EGY000CAI": {
      "name": "开罗",
      "alpha": "k"
    },
    "EGY000GBY": {
      "name": "古尔代盖",
      "alpha": "g"
    },
    "EGY000SKH": {
      "name": "苏布拉开马",
      "alpha": "s"
    }
  },
  "ERI": {
    "ERI0000BR": {
      "name": "加什·巴尔卡",
      "alpha": "j"
    },
    "ERI0000DE": {
      "name": "南部",
      "alpha": "n"
    },
    "ERI0000DK": {
      "name": "南红海",
      "alpha": "n"
    },
    "ERI0000KE": {
      "name": "安塞巴",
      "alpha": "a"
    },
    "ERI0000MA": {
      "name": "中部",
      "alpha": "z"
    },
    "ERI0000SK": {
      "name": "北红海",
      "alpha": "b"
    }
  },
  "ESP": {
    "ESP000AGP": {
      "name": "马拉加",
      "alpha": "m"
    },
    "ESP000ALA": {
      "name": "阿拉瓦",
      "alpha": "a"
    },
    "ESP000ALB": {
      "name": "阿尔瓦塞特",
      "alpha": "a"
    },
    "ESP000ALC": {
      "name": "阿利坎特",
      "alpha": "a"
    },
    "ESP000ARL": {
      "name": "拉里奥哈",
      "alpha": "l"
    },
    "ESP000AST": {
      "name": "阿斯图利亚斯",
      "alpha": "a"
    },
    "ESP000AVI": {
      "name": "阿维拉",
      "alpha": "a"
    },
    "ESP000BCN": {
      "name": "巴塞罗那",
      "alpha": "b"
    },
    "ESP000BJZ": {
      "name": "巴达霍斯",
      "alpha": "b"
    },
    "ESP000BLR": {
      "name": "巴利阿里",
      "alpha": "b"
    },
    "ESP000BUR": {
      "name": "布尔戈斯",
      "alpha": "b"
    },
    "ESP000CAD": {
      "name": "加的斯",
      "alpha": "j"
    },
    "ESP000CAS": {
      "name": "卡斯特利翁",
      "alpha": "k"
    },
    "ESP000CCS": {
      "name": "卡塞雷斯",
      "alpha": "k"
    },
    "ESP000CIR": {
      "name": "卡斯蒂利亚",
      "alpha": "k"
    },
    "ESP000CUE": {
      "name": "昆卡",
      "alpha": "k"
    },
    "ESP000GRO": {
      "name": "赫罗纳",
      "alpha": "h"
    },
    "ESP000GRX": {
      "name": "格拉纳达",
      "alpha": "g"
    },
    "ESP000GUA": {
      "name": "瓜达拉哈拉",
      "alpha": "g"
    },
    "ESP000GUI": {
      "name": "吉普斯夸",
      "alpha": "j"
    },
    "ESP000HUC": {
      "name": "韦斯卡",
      "alpha": "w"
    },
    "ESP000HUV": {
      "name": "韦尔瓦",
      "alpha": "w"
    },
    "ESP000JAE": {
      "name": "哈恩",
      "alpha": "h"
    },
    "ESP000LCG": {
      "name": "拉科鲁尼亚",
      "alpha": "l"
    },
    "ESP000LEI": {
      "name": "阿尔梅里亚",
      "alpha": "a"
    },
    "ESP000LEN": {
      "name": "莱昂",
      "alpha": "l"
    },
    "ESP000LGO": {
      "name": "卢戈",
      "alpha": "l"
    },
    "ESP000LLE": {
      "name": "莱里达",
      "alpha": "l"
    },
    "ESP000LPA": {
      "name": "拉斯帕尔马斯",
      "alpha": "l"
    },
    "ESP000MAD": {
      "name": "马德里",
      "alpha": "m"
    },
    "ESP000MJV": {
      "name": "穆尔西亚",
      "alpha": "m"
    },
    "ESP000NVV": {
      "name": "纳瓦拉",
      "alpha": "n"
    },
    "ESP000ODB": {
      "name": "科尔多瓦",
      "alpha": "k"
    },
    "ESP000ORE": {
      "name": "奥伦塞",
      "alpha": "a"
    },
    "ESP000PAC": {
      "name": "帕伦西亚",
      "alpha": "p"
    },
    "ESP000PEV": {
      "name": "蓬特韦德拉",
      "alpha": "p"
    },
    "ESP000SCT": {
      "name": "圣克鲁斯-德特内里费",
      "alpha": "s"
    },
    "ESP000SDR": {
      "name": "桑坦德",
      "alpha": "s"
    },
    "ESP000SEG": {
      "name": "塞哥维亚",
      "alpha": "s"
    },
    "ESP000SLM": {
      "name": "萨拉曼卡",
      "alpha": "s"
    },
    "ESP000SOR": {
      "name": "索里亚",
      "alpha": "s"
    },
    "ESP000SVQ": {
      "name": "塞维利亚",
      "alpha": "s"
    },
    "ESP000TAR": {
      "name": "塔拉戈纳",
      "alpha": "t"
    },
    "ESP000TER": {
      "name": "特鲁埃尔",
      "alpha": "t"
    },
    "ESP000TOL": {
      "name": "托莱多",
      "alpha": "t"
    },
    "ESP000VLC": {
      "name": "巴伦西亚",
      "alpha": "b"
    },
    "ESP000VLL": {
      "name": "巴利亚多利德",
      "alpha": "b"
    },
    "ESP000VSE": {
      "name": "比斯开",
      "alpha": "b"
    },
    "ESP000ZAZ": {
      "name": "萨拉戈萨",
      "alpha": "s"
    },
    "ESP000ZMR": {
      "name": "萨莫拉",
      "alpha": "s"
    }
  },
  "EST": {
    "EST000037": {
      "name": "哈留",
      "alpha": "h"
    },
    "EST000039": {
      "name": "希尤",
      "alpha": "x"
    },
    "EST000044": {
      "name": "依达－维鲁",
      "alpha": "y"
    },
    "EST000049": {
      "name": "耶盖瓦",
      "alpha": "y"
    },
    "EST000051": {
      "name": "耶尔韦",
      "alpha": "y"
    },
    "EST000057": {
      "name": "里亚内",
      "alpha": "l"
    },
    "EST000059": {
      "name": "维鲁",
      "alpha": "w"
    },
    "EST000065": {
      "name": "贝尔瓦",
      "alpha": "b"
    },
    "EST000067": {
      "name": "帕尔努",
      "alpha": "p"
    },
    "EST000070": {
      "name": "拉普拉",
      "alpha": "l"
    },
    "EST000074": {
      "name": "萨雷",
      "alpha": "s"
    },
    "EST000078": {
      "name": "塔尔图",
      "alpha": "t"
    },
    "EST000082": {
      "name": "瓦尔加",
      "alpha": "w"
    },
    "EST000084": {
      "name": "维良地",
      "alpha": "w"
    },
    "EST000086": {
      "name": "沃鲁",
      "alpha": "w"
    }
  },
  "ETH": {
    "ETH0000AA": {
      "name": "亚的斯亚贝巴",
      "alpha": "y"
    },
    "ETH0000AF": {
      "name": "阿法尔",
      "alpha": "a"
    },
    "ETH0000AH": {
      "name": "阿姆哈拉",
      "alpha": "a"
    },
    "ETH0000BG": {
      "name": "宾香古尔",
      "alpha": "b"
    },
    "ETH0000DD": {
      "name": "德雷达瓦",
      "alpha": "d"
    },
    "ETH0000GB": {
      "name": "甘贝拉各族",
      "alpha": "g"
    },
    "ETH0000HR": {
      "name": "哈勒里民族",
      "alpha": "h"
    },
    "ETH0000OR": {
      "name": "奥罗米亚",
      "alpha": "a"
    },
    "ETH0000SM": {
      "name": "索马里",
      "alpha": "s"
    },
    "ETH0000SN": {
      "name": "南方各族",
      "alpha": "n"
    },
    "ETH0000TG": {
      "name": "提格雷",
      "alpha": "t"
    }
  },
  "FIN": {
    "FIN000ESP": {
      "name": "埃斯波",
      "alpha": "a"
    },
    "FIN000HEL": {
      "name": "赫尔辛基",
      "alpha": "h"
    },
    "FIN000HMY": {
      "name": "海门林纳",
      "alpha": "h"
    },
    "FIN000JOE": {
      "name": "约恩苏",
      "alpha": "y"
    },
    "FIN000KAJ": {
      "name": "卡亚尼",
      "alpha": "k"
    },
    "FIN000KOK": {
      "name": "科科拉",
      "alpha": "k"
    },
    "FIN000KTK": {
      "name": "科特卡",
      "alpha": "k"
    },
    "FIN000KUO": {
      "name": "库奥皮奥",
      "alpha": "k"
    },
    "FIN000LHI": {
      "name": "拉赫蒂",
      "alpha": "l"
    },
    "FIN000LPP": {
      "name": "拉彭兰塔",
      "alpha": "l"
    },
    "FIN000MHQ": {
      "name": "玛丽港",
      "alpha": "m"
    },
    "FIN000MIK": {
      "name": "米凯利",
      "alpha": "m"
    },
    "FIN000OLU": {
      "name": "奥卢",
      "alpha": "a"
    },
    "FIN000POR": {
      "name": "波里",
      "alpha": "b"
    },
    "FIN000PRV": {
      "name": "博尔沃",
      "alpha": "b"
    },
    "FIN000RVN": {
      "name": "罗瓦涅米",
      "alpha": "l"
    },
    "FIN000TKU": {
      "name": "图尔库",
      "alpha": "t"
    },
    "FIN000TMP": {
      "name": "坦佩雷",
      "alpha": "t"
    },
    "FIN000VAA": {
      "name": "瓦萨",
      "alpha": "w"
    },
    "FIN000VAT": {
      "name": "万塔",
      "alpha": "w"
    }
  },
  "FJI": {},
  "FLK": {},
  "FRA": {
    "FRA000AJA": {
      "name": "阿雅克修",
      "alpha": "a"
    },
    "FRA000AMI": {
      "name": "亚眠",
      "alpha": "y"
    },
    "FRA000ARL": {
      "name": "阿尔勒",
      "alpha": "a"
    },
    "FRA000BSN": {
      "name": "贝桑松",
      "alpha": "b"
    },
    "FRA000CFR": {
      "name": "卡昂",
      "alpha": "k"
    },
    "FRA000CSM": {
      "name": "沙隆",
      "alpha": "s"
    },
    "FRA000DIJ": {
      "name": "第戎",
      "alpha": "d"
    },
    "FRA000FRJ": {
      "name": "弗雷瑞斯",
      "alpha": "f"
    },
    "FRA000LIG": {
      "name": "利摩日",
      "alpha": "l"
    },
    "FRA000LIO": {
      "name": "里昂",
      "alpha": "l"
    },
    "FRA000LLE": {
      "name": "里尔",
      "alpha": "l"
    },
    "FRA000MPL": {
      "name": "蒙彼利埃",
      "alpha": "m"
    },
    "FRA000MRS": {
      "name": "马赛",
      "alpha": "m"
    },
    "FRA000MZM": {
      "name": "梅斯",
      "alpha": "m"
    },
    "FRA000NCE": {
      "name": "尼斯",
      "alpha": "n"
    },
    "FRA000NTE": {
      "name": "南特",
      "alpha": "n"
    },
    "FRA000ORR": {
      "name": "奥尔良",
      "alpha": "a"
    },
    "FRA000PAR": {
      "name": "巴黎",
      "alpha": "b"
    },
    "FRA000QXB": {
      "name": "艾克斯",
      "alpha": "a"
    },
    "FRA000RNS": {
      "name": "雷恩",
      "alpha": "l"
    },
    "FRA000TLS": {
      "name": "图卢兹",
      "alpha": "t"
    },
    "FRA000URO": {
      "name": "鲁昂",
      "alpha": "l"
    },
    "FRA000VAA": {
      "name": "瓦朗斯",
      "alpha": "w"
    }
  },
  "GAB": {
    "GAB0000ES": {
      "name": "河口",
      "alpha": "h"
    },
    "GAB0000HO": {
      "name": "上奥果韦",
      "alpha": "s"
    },
    "GAB0000MO": {
      "name": "中奥果韦",
      "alpha": "z"
    },
    "GAB0000NG": {
      "name": "恩古涅",
      "alpha": "e"
    },
    "GAB0000NY": {
      "name": "尼扬加",
      "alpha": "n"
    },
    "GAB0000OI": {
      "name": "奥果韦-伊温多",
      "alpha": "a"
    },
    "GAB0000OL": {
      "name": "奥果韦-洛洛",
      "alpha": "a"
    },
    "GAB0000OM": {
      "name": "滨海奥果韦",
      "alpha": "b"
    },
    "GAB0000WN": {
      "name": "沃勒-恩特姆",
      "alpha": "w"
    }
  },
  "GBR": {
    "GBRENGBAS": {
      "name": "巴斯",
      "alpha": "b"
    },
    "GBRENGBIR": {
      "name": "伯明翰",
      "alpha": "b"
    },
    "GBRENGBNH": {
      "name": "布莱顿与赫福",
      "alpha": "b"
    },
    "GBRENGBRD": {
      "name": "布拉德福德",
      "alpha": "b"
    },
    "GBRENGBST": {
      "name": "布里斯托尔",
      "alpha": "b"
    },
    "GBRENGCAM": {
      "name": "剑桥",
      "alpha": "j"
    },
    "GBRENGCAX": {
      "name": "卡莱尔",
      "alpha": "k"
    },
    "GBRENGCEG": {
      "name": "切斯特",
      "alpha": "q"
    },
    "GBRENGCNG": {
      "name": "坎特伯雷",
      "alpha": "k"
    },
    "GBRENGCOV": {
      "name": "考文垂",
      "alpha": "k"
    },
    "GBRENGCST": {
      "name": "奇切斯特",
      "alpha": "q"
    },
    "GBRENGDER": {
      "name": "德比",
      "alpha": "d"
    },
    "GBRENGDUR": {
      "name": "德罕",
      "alpha": "d"
    },
    "GBRENGELY": {
      "name": "伊利",
      "alpha": "y"
    },
    "GBRENGEXE": {
      "name": "埃克塞特",
      "alpha": "a"
    },
    "GBRENGGLO": {
      "name": "格洛斯特",
      "alpha": "g"
    },
    "GBRENGHAF": {
      "name": "赫里福德",
      "alpha": "h"
    },
    "GBRENGKUH": {
      "name": "赫尔河畔京斯敦",
      "alpha": "h"
    },
    "GBRENGLAN": {
      "name": "兰开斯特",
      "alpha": "l"
    },
    "GBRENGLCE": {
      "name": "列斯特",
      "alpha": "l"
    },
    "GBRENGLCN": {
      "name": "林肯",
      "alpha": "l"
    },
    "GBRENGLDS": {
      "name": "利茲",
      "alpha": "l"
    },
    "GBRENGLHF": {
      "name": "利奇菲尔德",
      "alpha": "l"
    },
    "GBRENGLIV": {
      "name": "利物浦",
      "alpha": "l"
    },
    "GBRENGLND": {
      "name": "伦敦",
      "alpha": "l"
    },
    "GBRENGMAN": {
      "name": "曼彻斯特",
      "alpha": "m"
    },
    "GBRENGNCL": {
      "name": "纽卡斯尔",
      "alpha": "n"
    },
    "GBRENGNGM": {
      "name": "诺丁汉",
      "alpha": "n"
    },
    "GBRENGNRW": {
      "name": "诺里奇",
      "alpha": "n"
    },
    "GBRENGOXF": {
      "name": "牛津",
      "alpha": "n"
    },
    "GBRENGPLY": {
      "name": "普利茅斯",
      "alpha": "p"
    },
    "GBRENGPOR": {
      "name": "朴茨茅斯",
      "alpha": "p"
    },
    "GBRENGPRE": {
      "name": "普雷斯顿",
      "alpha": "p"
    },
    "GBRENGPTE": {
      "name": "彼得伯勒",
      "alpha": "b"
    },
    "GBRENGRIP": {
      "name": "里彭",
      "alpha": "l"
    },
    "GBRENGSHE": {
      "name": "谢菲尔德",
      "alpha": "x"
    },
    "GBRENGSLF": {
      "name": "索福特",
      "alpha": "s"
    },
    "GBRENGSLS": {
      "name": "索尔斯堡",
      "alpha": "s"
    },
    "GBRENGSOT": {
      "name": "特伦特河畔斯多克",
      "alpha": "t"
    },
    "GBRENGSTH": {
      "name": "南安普敦",
      "alpha": "n"
    },
    "GBRENGSUN": {
      "name": "桑德兰",
      "alpha": "s"
    },
    "GBRENGTBL": {
      "name": "圣阿本斯",
      "alpha": "s"
    },
    "GBRENGTRU": {
      "name": "特鲁罗",
      "alpha": "t"
    },
    "GBRENGWKF": {
      "name": "韦克菲尔德",
      "alpha": "w"
    },
    "GBRENGWLS": {
      "name": "威尔斯",
      "alpha": "w"
    },
    "GBRENGWNE": {
      "name": "温彻斯特",
      "alpha": "w"
    },
    "GBRENGWOR": {
      "name": "伍斯特",
      "alpha": "w"
    },
    "GBRENGWOV": {
      "name": "伍尔弗汉普顿",
      "alpha": "w"
    },
    "GBRENGYOR": {
      "name": "约克",
      "alpha": "y"
    },
    "GBRNIRBFS": {
      "name": "贝尔法斯特",
      "alpha": "b"
    },
    "GBRNIRDRY": {
      "name": "德里",
      "alpha": "d"
    },
    "GBRNIRLSB": {
      "name": "利斯本",
      "alpha": "l"
    },
    "GBRNIRNYM": {
      "name": "纽里",
      "alpha": "n"
    },
    "GBRSCTABD": {
      "name": "阿伯丁",
      "alpha": "a"
    },
    "GBRSCTDND": {
      "name": "丹迪",
      "alpha": "d"
    },
    "GBRSCTEDH": {
      "name": "爱丁堡",
      "alpha": "a"
    },
    "GBRSCTGLG": {
      "name": "格拉斯哥",
      "alpha": "g"
    },
    "GBRSCTINV": {
      "name": "因弗内斯",
      "alpha": "y"
    },
    "GBRSCTSTG": {
      "name": "斯特灵",
      "alpha": "s"
    },
    "GBRWLSBAN": {
      "name": "班戈",
      "alpha": "b"
    },
    "GBRWLSCDF": {
      "name": "卡迪夫",
      "alpha": "k"
    },
    "GBRWLSNWP": {
      "name": "纽波特",
      "alpha": "n"
    },
    "GBRWLSSWA": {
      "name": "斯旺西",
      "alpha": "s"
    }
  },
  "GUF": {},
  "GHA": {
    "GHA0000AS": {
      "name": "阿散蒂",
      "alpha": "a"
    },
    "GHA0000BA": {
      "name": "布朗阿哈福",
      "alpha": "b"
    },
    "GHA0000CE": {
      "name": "中部",
      "alpha": "z"
    },
    "GHA0000EA": {
      "name": "东部",
      "alpha": "d"
    },
    "GHA0000GA": {
      "name": "大阿克拉",
      "alpha": "d"
    },
    "GHA0000NO": {
      "name": "北部",
      "alpha": "b"
    },
    "GHA0000UE": {
      "name": "上东部",
      "alpha": "s"
    },
    "GHA0000UW": {
      "name": "上西部",
      "alpha": "s"
    },
    "GHA0000VO": {
      "name": "沃尔特",
      "alpha": "w"
    },
    "GHA0000WE": {
      "name": "西部",
      "alpha": "x"
    },
    "GHA000OBU": {
      "name": "奥布阿西",
      "alpha": "a"
    }
  },
  "GIN": {
    "GIN000BOK": {
      "name": "博凯",
      "alpha": "b"
    },
    "GIN000CNK": {
      "name": "科纳克里",
      "alpha": "k"
    },
    "GIN000FRN": {
      "name": "法拉纳",
      "alpha": "f"
    },
    "GIN000KND": {
      "name": "金迪亚",
      "alpha": "j"
    },
    "GIN000KNK": {
      "name": "康康",
      "alpha": "k"
    },
    "GIN000LAB": {
      "name": "拉贝",
      "alpha": "l"
    },
    "GIN000MAM": {
      "name": "玛木",
      "alpha": "m"
    },
    "GIN000NZR": {
      "name": "恩泽雷科雷",
      "alpha": "e"
    }
  },
  "GMB": {},
  "GNB": {},
  "GRC": {
    "GRC0000CY": {
      "name": "基克拉迪",
      "alpha": "j"
    },
    "GRC0000DO": {
      "name": "多德卡尼斯",
      "alpha": "d"
    },
    "GRC000ATH": {
      "name": "雅典",
      "alpha": "y"
    },
    "GRC000CHQ": {
      "name": "干尼亚",
      "alpha": "g"
    },
    "GRC000HER": {
      "name": "伊拉克里翁",
      "alpha": "y"
    },
    "GRC000LES": {
      "name": "莱斯博斯",
      "alpha": "l"
    },
    "GRC000LST": {
      "name": "拉西锡",
      "alpha": "l"
    },
    "GRC000PRI": {
      "name": "比雷埃夫斯",
      "alpha": "b"
    },
    "GRC000RET": {
      "name": "雷西姆农",
      "alpha": "l"
    },
    "GRC000SMI": {
      "name": "萨摩斯",
      "alpha": "s"
    }
  },
  "GRL": {},
  "GTM": {
    "GTM0000AV": {
      "name": "上韦拉帕斯",
      "alpha": "s"
    },
    "GTM0000BV": {
      "name": "下韦拉帕斯",
      "alpha": "x"
    },
    "GTM0000CM": {
      "name": "奇马尔特南戈",
      "alpha": "q"
    },
    "GTM0000CQ": {
      "name": "奇基穆拉",
      "alpha": "q"
    },
    "GTM0000ES": {
      "name": "埃斯昆特拉",
      "alpha": "a"
    },
    "GTM0000GU": {
      "name": "危地马拉",
      "alpha": "w"
    },
    "GTM0000HU": {
      "name": "韦韦特南戈",
      "alpha": "w"
    },
    "GTM0000IZ": {
      "name": "伊萨瓦尔",
      "alpha": "y"
    },
    "GTM0000JA": {
      "name": "哈拉帕",
      "alpha": "h"
    },
    "GTM0000JU": {
      "name": "胡蒂亚帕",
      "alpha": "h"
    },
    "GTM0000PE": {
      "name": "佩滕",
      "alpha": "p"
    },
    "GTM0000PR": {
      "name": "埃尔普罗格雷索",
      "alpha": "a"
    },
    "GTM0000QC": {
      "name": "基切",
      "alpha": "j"
    },
    "GTM0000QZ": {
      "name": "克萨尔特南戈",
      "alpha": "k"
    },
    "GTM0000RE": {
      "name": "雷塔卢莱乌",
      "alpha": "l"
    },
    "GTM0000SM": {
      "name": "圣马科斯",
      "alpha": "s"
    },
    "GTM0000SO": {
      "name": "索洛拉",
      "alpha": "s"
    },
    "GTM0000SR": {
      "name": "圣罗莎",
      "alpha": "s"
    },
    "GTM0000ST": {
      "name": "萨卡特佩克斯",
      "alpha": "s"
    },
    "GTM0000SU": {
      "name": "苏奇特佩克斯",
      "alpha": "s"
    },
    "GTM0000TO": {
      "name": "托托尼卡潘",
      "alpha": "t"
    },
    "GTM0000ZA": {
      "name": "萨卡帕",
      "alpha": "s"
    },
    "GTM000MIX": {
      "name": "米克斯科",
      "alpha": "m"
    },
    "GTM000VIN": {
      "name": "新城",
      "alpha": "x"
    }
  },
  "GUY": {
    "GUY0000BW": {
      "name": "巴里马-瓦伊尼",
      "alpha": "b"
    },
    "GUY0000CM": {
      "name": "库尤尼-马扎鲁尼",
      "alpha": "k"
    },
    "GUY0000DM": {
      "name": "德梅拉拉-马海卡",
      "alpha": "d"
    },
    "GUY0000EC": {
      "name": "东伯比斯-科兰太因",
      "alpha": "d"
    },
    "GUY0000EW": {
      "name": "埃塞奎博群岛-西德梅拉拉",
      "alpha": "a"
    },
    "GUY0000MB": {
      "name": "马海卡-伯比斯",
      "alpha": "m"
    },
    "GUY0000PI": {
      "name": "波塔罗-锡帕鲁尼",
      "alpha": "b"
    },
    "GUY0000PM": {
      "name": "波默伦-苏佩纳姆",
      "alpha": "b"
    },
    "GUY0000UD": {
      "name": "上德梅拉拉-伯比斯",
      "alpha": "s"
    },
    "GUY0000UT": {
      "name": "上塔库图-上埃塞奎博",
      "alpha": "s"
    }
  },
  "HND": {
    "HND0000AT": {
      "name": "阿特兰蒂达",
      "alpha": "a"
    },
    "HND0000CH": {
      "name": "乔卢特卡",
      "alpha": "q"
    },
    "HND0000CL": {
      "name": "科隆",
      "alpha": "k"
    },
    "HND0000CM": {
      "name": "科马亚瓜",
      "alpha": "k"
    },
    "HND0000CP": {
      "name": "科潘",
      "alpha": "k"
    },
    "HND0000CR": {
      "name": "科尔特斯",
      "alpha": "k"
    },
    "HND0000FM": {
      "name": "弗朗西斯科-莫拉桑",
      "alpha": "f"
    },
    "HND0000GD": {
      "name": "格拉西亚斯-阿迪奥斯",
      "alpha": "g"
    },
    "HND0000IB": {
      "name": "海湾群岛",
      "alpha": "h"
    },
    "HND0000IN": {
      "name": "因蒂布卡",
      "alpha": "y"
    },
    "HND0000LE": {
      "name": "伦皮拉",
      "alpha": "l"
    },
    "HND0000OC": {
      "name": "奥科特佩克",
      "alpha": "a"
    },
    "HND0000OL": {
      "name": "奥兰乔",
      "alpha": "a"
    },
    "HND0000PA": {
      "name": "埃尔帕拉伊索",
      "alpha": "a"
    },
    "HND0000PZ": {
      "name": "拉巴斯",
      "alpha": "l"
    },
    "HND0000SB": {
      "name": "圣巴巴拉",
      "alpha": "s"
    },
    "HND0000VA": {
      "name": "山谷",
      "alpha": "s"
    },
    "HND0000YO": {
      "name": "约罗",
      "alpha": "y"
    },
    "HND000CHO": {
      "name": "乔罗马",
      "alpha": "q"
    }
  },
  "HRV": {
    "HRV000001": {
      "name": "萨格勒布",
      "alpha": "s"
    },
    "HRV000002": {
      "name": "克拉皮纳-扎戈列",
      "alpha": "k"
    },
    "HRV000003": {
      "name": "锡萨克-莫斯拉维纳",
      "alpha": "x"
    },
    "HRV000004": {
      "name": "卡尔洛瓦茨",
      "alpha": "k"
    },
    "HRV000005": {
      "name": "瓦拉日丁",
      "alpha": "w"
    },
    "HRV000006": {
      "name": "科普里夫尼察-克里热夫齐",
      "alpha": "k"
    },
    "HRV000007": {
      "name": "别洛瓦尔-比洛戈拉",
      "alpha": "b"
    },
    "HRV000008": {
      "name": "滨海和山区",
      "alpha": "b"
    },
    "HRV000009": {
      "name": "利卡-塞尼",
      "alpha": "l"
    },
    "HRV000010": {
      "name": "维罗维蒂察-波德拉维纳",
      "alpha": "w"
    },
    "HRV000011": {
      "name": "波热加-斯拉沃尼亚",
      "alpha": "b"
    },
    "HRV000012": {
      "name": "布罗德-波萨维纳",
      "alpha": "b"
    },
    "HRV000013": {
      "name": "扎达尔",
      "alpha": "z"
    },
    "HRV000014": {
      "name": "奥西耶克-巴拉尼亚",
      "alpha": "a"
    },
    "HRV000015": {
      "name": "希贝尼克-克宁",
      "alpha": "x"
    },
    "HRV000016": {
      "name": "武科瓦尔-斯里耶姆",
      "alpha": "w"
    },
    "HRV000017": {
      "name": "斯普利特-达尔马提亚",
      "alpha": "s"
    },
    "HRV000018": {
      "name": "伊斯特拉",
      "alpha": "y"
    },
    "HRV000019": {
      "name": "杜布罗夫斯克-内雷特瓦",
      "alpha": "d"
    },
    "HRV000020": {
      "name": "梅吉穆列",
      "alpha": "m"
    },
    "HRV000021": {
      "name": "萨格勒布市",
      "alpha": "s"
    }
  },
  "HTI": {},
  "HUN": {
    "HUN0000BA": {
      "name": "巴兰尼亚",
      "alpha": "b"
    },
    "HUN0000BE": {
      "name": "贝凯什",
      "alpha": "b"
    },
    "HUN0000BK": {
      "name": "巴奇-基什孔",
      "alpha": "b"
    },
    "HUN0000BU": {
      "name": "布达佩斯",
      "alpha": "b"
    },
    "HUN0000BZ": {
      "name": "包尔绍德-奥包乌伊-曾普伦",
      "alpha": "b"
    },
    "HUN0000CS": {
      "name": "琼格拉德",
      "alpha": "q"
    },
    "HUN0000FE": {
      "name": "费耶尔",
      "alpha": "f"
    },
    "HUN0000GS": {
      "name": "杰尔-莫松-肖普朗",
      "alpha": "j"
    },
    "HUN0000HB": {
      "name": "豪伊杜-比豪尔",
      "alpha": "h"
    },
    "HUN0000HE": {
      "name": "赫维什",
      "alpha": "h"
    },
    "HUN0000JN": {
      "name": "加兹-纳杰孔-索尔诺克",
      "alpha": "j"
    },
    "HUN0000KE": {
      "name": "科马罗姆",
      "alpha": "k"
    },
    "HUN0000NO": {
      "name": "诺格拉德",
      "alpha": "n"
    },
    "HUN0000PE": {
      "name": "佩斯",
      "alpha": "p"
    },
    "HUN0000SO": {
      "name": "绍莫吉",
      "alpha": "s"
    },
    "HUN0000SZ": {
      "name": "索博尔奇-索特马尔-贝拉格",
      "alpha": "s"
    },
    "HUN0000TO": {
      "name": "托尔瑙",
      "alpha": "t"
    },
    "HUN0000VA": {
      "name": "沃什",
      "alpha": "w"
    },
    "HUN0000VE": {
      "name": "维斯普雷姆",
      "alpha": "w"
    },
    "HUN0000ZA": {
      "name": "佐洛",
      "alpha": "z"
    }
  },
  "IDN": {
    "IDN0000AC": {
      "name": "亚齐",
      "alpha": "y"
    },
    "IDN0000BA": {
      "name": "巴厘",
      "alpha": "b"
    },
    "IDN0000BB": {
      "name": "邦加－勿里洞群岛",
      "alpha": "b"
    },
    "IDN0000BE": {
      "name": "明古鲁",
      "alpha": "m"
    },
    "IDN0000BT": {
      "name": "万丹",
      "alpha": "w"
    },
    "IDN0000IJ": {
      "name": "伊里安查亚",
      "alpha": "y"
    },
    "IDN0000JA": {
      "name": "占碑",
      "alpha": "z"
    },
    "IDN0000JB": {
      "name": "西爪哇",
      "alpha": "x"
    },
    "IDN0000JI": {
      "name": "东爪哇",
      "alpha": "d"
    },
    "IDN0000JK": {
      "name": "雅加达",
      "alpha": "y"
    },
    "IDN0000JT": {
      "name": "中爪哇",
      "alpha": "z"
    },
    "IDN0000KB": {
      "name": "大雅加达首都特区",
      "alpha": "d"
    },
    "IDN0000KI": {
      "name": "东加里曼丹",
      "alpha": "d"
    },
    "IDN0000KS": {
      "name": "南加里曼丹",
      "alpha": "n"
    },
    "IDN0000KT": {
      "name": "中加里曼丹",
      "alpha": "z"
    },
    "IDN0000LA": {
      "name": "楠榜",
      "alpha": "n"
    },
    "IDN0000MA": {
      "name": "马鲁古",
      "alpha": "m"
    },
    "IDN0000NB": {
      "name": "西努沙登加拉",
      "alpha": "x"
    },
    "IDN0000NT": {
      "name": "东努沙登加拉",
      "alpha": "d"
    },
    "IDN0000RI": {
      "name": "廖内",
      "alpha": "l"
    },
    "IDN0000SA": {
      "name": "北苏拉威西",
      "alpha": "b"
    },
    "IDN0000SG": {
      "name": "东南苏拉威西",
      "alpha": "d"
    },
    "IDN0000SN": {
      "name": "南苏拉威西",
      "alpha": "n"
    },
    "IDN0000SR": {
      "name": "西苏门答腊",
      "alpha": "x"
    },
    "IDN0000SS": {
      "name": "南苏门答腊",
      "alpha": "n"
    },
    "IDN0000ST": {
      "name": "中苏拉威西",
      "alpha": "z"
    },
    "IDN0000SU": {
      "name": "北苏门答腊",
      "alpha": "b"
    },
    "IDN0000YO": {
      "name": "日惹特区",
      "alpha": "r"
    }
  },
  "IND": {
    "IND000AJL": {
      "name": "艾藻尔",
      "alpha": "a"
    },
    "IND000BBI": {
      "name": "布巴内斯瓦尔",
      "alpha": "b"
    },
    "IND000BHO": {
      "name": "博帕尔",
      "alpha": "b"
    },
    "IND000BLR": {
      "name": "班加罗尔",
      "alpha": "b"
    },
    "IND000CCU": {
      "name": "加尔各答",
      "alpha": "j"
    },
    "IND000CJB": {
      "name": "哥印拜陀",
      "alpha": "g"
    },
    "IND000DAM": {
      "name": "达曼",
      "alpha": "d"
    },
    "IND000DIU": {
      "name": "第乌",
      "alpha": "d"
    },
    "IND000GTO": {
      "name": "甘托克",
      "alpha": "g"
    },
    "IND000ICD": {
      "name": "新德里",
      "alpha": "x"
    },
    "IND000IDR": {
      "name": "印多尔",
      "alpha": "y"
    },
    "IND000IMF": {
      "name": "因帕尔",
      "alpha": "y"
    },
    "IND000IXC": {
      "name": "昌迪加尔",
      "alpha": "c"
    },
    "IND000IXM": {
      "name": "马杜赖",
      "alpha": "m"
    },
    "IND000JAI": {
      "name": "斋普尔",
      "alpha": "z"
    },
    "IND000JDH": {
      "name": "焦特布尔",
      "alpha": "j"
    },
    "IND000JLR": {
      "name": "贾巴尔普尔",
      "alpha": "j"
    },
    "IND000JUC": {
      "name": "贾朗达尔",
      "alpha": "j"
    },
    "IND000KOM": {
      "name": "科希马",
      "alpha": "k"
    },
    "IND000KRK": {
      "name": "加里加尔",
      "alpha": "j"
    },
    "IND000KVA": {
      "name": "卡瓦拉蒂",
      "alpha": "k"
    },
    "IND000MAA": {
      "name": "金奈",
      "alpha": "j"
    },
    "IND000MAH": {
      "name": "马埃",
      "alpha": "m"
    },
    "IND000PNY": {
      "name": "本地治里",
      "alpha": "b"
    },
    "IND000SHL": {
      "name": "西隆",
      "alpha": "x"
    },
    "IND000SIL": {
      "name": "锡尔萨瓦",
      "alpha": "x"
    },
    "IND000SLR": {
      "name": "森伯尔布尔",
      "alpha": "s"
    },
    "IND000SRV": {
      "name": "亚南",
      "alpha": "y"
    },
    "IND000TRV": {
      "name": "特里凡得琅",
      "alpha": "t"
    },
    "IND000UDR": {
      "name": "乌代布尔",
      "alpha": "w"
    }
  },
  "IRL": {
    "IRL0000CK": {
      "name": "科克",
      "alpha": "k"
    },
    "IRL0000CL": {
      "name": "克莱尔",
      "alpha": "k"
    },
    "IRL0000CV": {
      "name": "卡范",
      "alpha": "k"
    },
    "IRL0000CW": {
      "name": "卡洛",
      "alpha": "k"
    },
    "IRL0000DB": {
      "name": "都柏林",
      "alpha": "d"
    },
    "IRL0000DG": {
      "name": "多内加尔",
      "alpha": "d"
    },
    "IRL0000GW": {
      "name": "戈尔韦",
      "alpha": "g"
    },
    "IRL0000KD": {
      "name": "基尔代尔",
      "alpha": "j"
    },
    "IRL0000KK": {
      "name": "基尔肯尼",
      "alpha": "j"
    },
    "IRL0000KR": {
      "name": "凯里",
      "alpha": "k"
    },
    "IRL0000LA": {
      "name": "崂斯",
      "alpha": "l"
    },
    "IRL0000LF": {
      "name": "朗福德",
      "alpha": "l"
    },
    "IRL0000LM": {
      "name": "利默里克",
      "alpha": "l"
    },
    "IRL0000LR": {
      "name": "利特里姆",
      "alpha": "l"
    },
    "IRL0000LT": {
      "name": "劳斯",
      "alpha": "l"
    },
    "IRL0000MG": {
      "name": "莫内根",
      "alpha": "m"
    },
    "IRL0000MT": {
      "name": "米斯",
      "alpha": "m"
    },
    "IRL0000MY": {
      "name": "梅奥",
      "alpha": "m"
    },
    "IRL0000OF": {
      "name": "奥法利",
      "alpha": "a"
    },
    "IRL0000RC": {
      "name": "罗斯康芒",
      "alpha": "l"
    },
    "IRL0000SL": {
      "name": "斯莱戈",
      "alpha": "s"
    },
    "IRL0000TP": {
      "name": "蒂珀雷里",
      "alpha": "d"
    },
    "IRL0000WF": {
      "name": "沃特福德",
      "alpha": "w"
    },
    "IRL0000WK": {
      "name": "威克洛",
      "alpha": "w"
    },
    "IRL0000WM": {
      "name": "西米斯",
      "alpha": "x"
    },
    "IRL0000WX": {
      "name": "韦克斯福德",
      "alpha": "w"
    }
  },
  "IRN": {},
  "IRQ": {},
  "ISL": {},
  "ISR": {
    "ISR00000J": {
      "name": "耶路撒冷",
      "alpha": "y"
    },
    "ISR000ASH": {
      "name": "阿什杜德",
      "alpha": "a"
    },
    "ISR000BAT": {
      "name": "贝特雁",
      "alpha": "b"
    },
    "ISR000BEV": {
      "name": "贝尔谢巴",
      "alpha": "b"
    },
    "ISR000HFA": {
      "name": "海法",
      "alpha": "h"
    },
    "ISR000HOL": {
      "name": "霍隆",
      "alpha": "h"
    },
    "ISR000NAT": {
      "name": "内坦亚",
      "alpha": "n"
    },
    "ISR000TLV": {
      "name": "特拉维夫",
      "alpha": "t"
    }
  },
  "ITA": {
    "ITA000ALE": {
      "name": "亚历山德里亚",
      "alpha": "y"
    },
    "ITA000AOI": {
      "name": "安科纳",
      "alpha": "a"
    },
    "ITA000AOT": {
      "name": "奥斯塔",
      "alpha": "a"
    },
    "ITA000ASP": {
      "name": "阿斯科利皮切诺",
      "alpha": "a"
    },
    "ITA000AST": {
      "name": "阿斯蒂",
      "alpha": "a"
    },
    "ITA000BDS": {
      "name": "布林迪西",
      "alpha": "b"
    },
    "ITA000BEN": {
      "name": "贝内文托",
      "alpha": "b"
    },
    "ITA000BGO": {
      "name": "贝加莫",
      "alpha": "b"
    },
    "ITA000BIE": {
      "name": "布拉",
      "alpha": "b"
    },
    "ITA000BLQ": {
      "name": "博洛尼亚",
      "alpha": "b"
    },
    "ITA000BRC": {
      "name": "布雷西亚",
      "alpha": "b"
    },
    "ITA000BRI": {
      "name": "巴里",
      "alpha": "b"
    },
    "ITA000CAG": {
      "name": "卡利亚里",
      "alpha": "k"
    },
    "ITA000CAX": {
      "name": "热那亚",
      "alpha": "r"
    },
    "ITA000CIY": {
      "name": "科摩",
      "alpha": "k"
    },
    "ITA000COB": {
      "name": "坎波巴索",
      "alpha": "k"
    },
    "ITA000CRV": {
      "name": "克罗托内",
      "alpha": "k"
    },
    "ITA000CST": {
      "name": "卡塞塔",
      "alpha": "k"
    },
    "ITA000CTA": {
      "name": "卡塔尼亚",
      "alpha": "k"
    },
    "ITA000CUN": {
      "name": "库内奥",
      "alpha": "k"
    },
    "ITA000FLR": {
      "name": "佛罗伦萨",
      "alpha": "f"
    },
    "ITA000FOG": {
      "name": "福贾",
      "alpha": "f"
    },
    "ITA000FRR": {
      "name": "费拉拉",
      "alpha": "f"
    },
    "ITA000ISE": {
      "name": "伊塞尔尼亚",
      "alpha": "y"
    },
    "ITA000LAQ": {
      "name": "拉奎拉",
      "alpha": "l"
    },
    "ITA000LCC": {
      "name": "莱切",
      "alpha": "l"
    },
    "ITA000LCO": {
      "name": "莱科",
      "alpha": "l"
    },
    "ITA000LIV": {
      "name": "里窝那",
      "alpha": "l"
    },
    "ITA000MCR": {
      "name": "马萨",
      "alpha": "m"
    },
    "ITA000MIL": {
      "name": "米兰",
      "alpha": "m"
    },
    "ITA000MOD": {
      "name": "摩德纳",
      "alpha": "m"
    },
    "ITA000MSN": {
      "name": "墨西拿",
      "alpha": "m"
    },
    "ITA000MTR": {
      "name": "马泰拉",
      "alpha": "m"
    },
    "ITA000MZA": {
      "name": "蒙扎",
      "alpha": "m"
    },
    "ITA000NAP": {
      "name": "那不勒斯",
      "alpha": "n"
    },
    "ITA000NVR": {
      "name": "诺瓦拉",
      "alpha": "n"
    },
    "ITA000OLB": {
      "name": "奥尔比亚",
      "alpha": "a"
    },
    "ITA000PAV": {
      "name": "帕维亚",
      "alpha": "p"
    },
    "ITA000PEG": {
      "name": "佩鲁贾",
      "alpha": "p"
    },
    "ITA000PMF": {
      "name": "帕尔马",
      "alpha": "p"
    },
    "ITA000PMO": {
      "name": "巴勒莫",
      "alpha": "b"
    },
    "ITA000PRD": {
      "name": "波代诺内",
      "alpha": "b"
    },
    "ITA000PSA": {
      "name": "比萨",
      "alpha": "b"
    },
    "ITA000QCS": {
      "name": "科森扎",
      "alpha": "k"
    },
    "ITA000QCZ": {
      "name": "卡坦扎罗",
      "alpha": "k"
    },
    "ITA000QNU": {
      "name": "努奥罗",
      "alpha": "n"
    },
    "ITA000QOS": {
      "name": "奥里斯塔诺",
      "alpha": "a"
    },
    "ITA000QPO": {
      "name": "波坦察",
      "alpha": "b"
    },
    "ITA000QSS": {
      "name": "萨萨里",
      "alpha": "s"
    },
    "ITA000REG": {
      "name": "雷焦卡拉布里亚",
      "alpha": "l"
    },
    "ITA000RNE": {
      "name": "雷焦艾米利亚",
      "alpha": "l"
    },
    "ITA000ROM": {
      "name": "罗马",
      "alpha": "l"
    },
    "ITA000SAL": {
      "name": "萨莱诺",
      "alpha": "s"
    },
    "ITA000SNA": {
      "name": "锡耶纳",
      "alpha": "x"
    },
    "ITA000SPE": {
      "name": "拉斯佩齐亚",
      "alpha": "l"
    },
    "ITA000SVN": {
      "name": "萨沃纳",
      "alpha": "s"
    },
    "ITA000SYR": {
      "name": "锡拉库扎",
      "alpha": "x"
    },
    "ITA000TAR": {
      "name": "塔兰托",
      "alpha": "t"
    },
    "ITA000TPS": {
      "name": "特拉帕尼",
      "alpha": "t"
    },
    "ITA000TRN": {
      "name": "都灵",
      "alpha": "d"
    },
    "ITA000TRS": {
      "name": "的里雅斯特",
      "alpha": "d"
    },
    "ITA000TRT": {
      "name": "特伦托",
      "alpha": "t"
    },
    "ITA000UDN": {
      "name": "乌迪内",
      "alpha": "w"
    },
    "ITA000VCE": {
      "name": "威尼斯",
      "alpha": "w"
    },
    "ITA000VIT": {
      "name": "维泰博",
      "alpha": "w"
    },
    "ITA000VRL": {
      "name": "韦尔切利",
      "alpha": "w"
    }
  },
  "JAM": {
    "JAM000AND": {
      "name": "圣安德鲁斯",
      "alpha": "s"
    },
    "JAM000ANN": {
      "name": "圣安娜",
      "alpha": "s"
    },
    "JAM000CAT": {
      "name": "圣凯瑟琳",
      "alpha": "s"
    },
    "JAM000CLA": {
      "name": "克拉伦登",
      "alpha": "k"
    },
    "JAM000ELI": {
      "name": "圣伊丽莎白",
      "alpha": "s"
    },
    "JAM000HAN": {
      "name": "汉诺威",
      "alpha": "h"
    },
    "JAM000JAM": {
      "name": "圣詹姆斯",
      "alpha": "s"
    },
    "JAM000KIN": {
      "name": "金斯敦",
      "alpha": "j"
    },
    "JAM000MAN": {
      "name": "曼彻斯特",
      "alpha": "m"
    },
    "JAM000MAR": {
      "name": "圣玛丽",
      "alpha": "s"
    },
    "JAM000POR": {
      "name": "波特兰",
      "alpha": "b"
    },
    "JAM000THO": {
      "name": "圣托马斯",
      "alpha": "s"
    },
    "JAM000TRL": {
      "name": "特里洛尼",
      "alpha": "t"
    },
    "JAM000WML": {
      "name": "西摩兰",
      "alpha": "x"
    }
  },
  "JOR": {
    "JOR0000AJ": {
      "name": "阿吉隆",
      "alpha": "a"
    },
    "JOR0000AM": {
      "name": "安曼",
      "alpha": "a"
    },
    "JOR0000AQ": {
      "name": "亚喀巴",
      "alpha": "y"
    },
    "JOR0000BA": {
      "name": "拜勒加",
      "alpha": "b"
    },
    "JOR0000IR": {
      "name": "伊尔比德",
      "alpha": "y"
    },
    "JOR0000JA": {
      "name": "杰拉什",
      "alpha": "j"
    },
    "JOR0000KA": {
      "name": "卡拉克",
      "alpha": "k"
    },
    "JOR0000MD": {
      "name": "马德巴",
      "alpha": "m"
    },
    "JOR0000MF": {
      "name": "马夫拉克",
      "alpha": "m"
    },
    "JOR0000MN": {
      "name": "马安",
      "alpha": "m"
    },
    "JOR0000RU": {
      "name": "鲁赛法",
      "alpha": "l"
    },
    "JOR0000TA": {
      "name": "塔菲拉",
      "alpha": "t"
    },
    "JOR0000ZA": {
      "name": "扎尔卡",
      "alpha": "z"
    }
  },
  "JPN": {
    "JPN000001": {
      "name": "北海道",
      "alpha": "b"
    },
    "JPN000002": {
      "name": "青森",
      "alpha": "q"
    },
    "JPN000003": {
      "name": "岩手",
      "alpha": "y"
    },
    "JPN000004": {
      "name": "宮城",
      "alpha": "c"
    },
    "JPN000005": {
      "name": "秋田",
      "alpha": "q"
    },
    "JPN000006": {
      "name": "山形",
      "alpha": "s"
    },
    "JPN000007": {
      "name": "福岛",
      "alpha": "f"
    },
    "JPN000008": {
      "name": "茨城",
      "alpha": "c"
    },
    "JPN000009": {
      "name": "枥木",
      "alpha": "l"
    },
    "JPN000010": {
      "name": "群马",
      "alpha": "q"
    },
    "JPN000011": {
      "name": "埼玉",
      "alpha": "y"
    },
    "JPN000012": {
      "name": "千叶",
      "alpha": "q"
    },
    "JPN000013": {
      "name": "东京",
      "alpha": "d"
    },
    "JPN000014": {
      "name": "神奈川",
      "alpha": "s"
    },
    "JPN000015": {
      "name": "新潟",
      "alpha": "x"
    },
    "JPN000016": {
      "name": "富山",
      "alpha": "f"
    },
    "JPN000017": {
      "name": "石川",
      "alpha": "s"
    },
    "JPN000018": {
      "name": "福井",
      "alpha": "f"
    },
    "JPN000019": {
      "name": "山梨",
      "alpha": "s"
    },
    "JPN000020": {
      "name": "长野",
      "alpha": "c"
    },
    "JPN000021": {
      "name": "岐阜",
      "alpha": "q"
    },
    "JPN000022": {
      "name": "静冈",
      "alpha": "j"
    },
    "JPN000023": {
      "name": "爱知",
      "alpha": "a"
    },
    "JPN000024": {
      "name": "三重",
      "alpha": "s"
    },
    "JPN000025": {
      "name": "滋贺",
      "alpha": "z"
    },
    "JPN000026": {
      "name": "京都",
      "alpha": "j"
    },
    "JPN000027": {
      "name": "大阪",
      "alpha": "d"
    },
    "JPN000028": {
      "name": "兵库",
      "alpha": "b"
    },
    "JPN000029": {
      "name": "奈良",
      "alpha": "n"
    },
    "JPN000030": {
      "name": "和歌山",
      "alpha": "h"
    },
    "JPN000031": {
      "name": "鸟取",
      "alpha": "n"
    },
    "JPN000032": {
      "name": "岛根",
      "alpha": "d"
    },
    "JPN000033": {
      "name": "冈山",
      "alpha": "g"
    },
    "JPN000034": {
      "name": "广岛",
      "alpha": "g"
    },
    "JPN000035": {
      "name": "山口",
      "alpha": "s"
    },
    "JPN000036": {
      "name": "徳岛",
      "alpha": "d"
    },
    "JPN000037": {
      "name": "香川",
      "alpha": "x"
    },
    "JPN000038": {
      "name": "爱媛",
      "alpha": "a"
    },
    "JPN000039": {
      "name": "高知",
      "alpha": "g"
    },
    "JPN000040": {
      "name": "福冈",
      "alpha": "f"
    },
    "JPN000041": {
      "name": "佐贺",
      "alpha": "z"
    },
    "JPN000042": {
      "name": "长崎",
      "alpha": "c"
    },
    "JPN000043": {
      "name": "熊本",
      "alpha": "x"
    },
    "JPN000044": {
      "name": "大分",
      "alpha": "d"
    },
    "JPN000045": {
      "name": "宫崎",
      "alpha": "g"
    },
    "JPN000046": {
      "name": "鹿儿岛",
      "alpha": "l"
    },
    "JPN000047": {
      "name": "冲绳",
      "alpha": "c"
    }
  },
  "KAZ": {
    "KAZ000AKM": {
      "name": "阿克莫拉",
      "alpha": "a"
    },
    "KAZ000AKS": {
      "name": "阿克苏",
      "alpha": "a"
    },
    "KAZ000AKT": {
      "name": "阿克托别",
      "alpha": "a"
    },
    "KAZ000ALA": {
      "name": "阿拉木图",
      "alpha": "a"
    },
    "KAZ000ARY": {
      "name": "阿雷斯",
      "alpha": "a"
    },
    "KAZ000AST": {
      "name": "阿斯塔纳市",
      "alpha": "a"
    },
    "KAZ000ATY": {
      "name": "阿特劳",
      "alpha": "a"
    },
    "KAZ000AYK": {
      "name": "阿尔卡累克",
      "alpha": "a"
    },
    "KAZ000BXH": {
      "name": "巴尔喀什",
      "alpha": "b"
    },
    "KAZ000DMB": {
      "name": "江布尔",
      "alpha": "j"
    },
    "KAZ000DZH": {
      "name": "杰兹卡兹甘",
      "alpha": "j"
    },
    "KAZ000EKB": {
      "name": "埃基巴斯图兹",
      "alpha": "a"
    },
    "KAZ000KAP": {
      "name": "卡普恰盖",
      "alpha": "k"
    },
    "KAZ000KAR": {
      "name": "卡拉干达",
      "alpha": "k"
    },
    "KAZ000KEN": {
      "name": "肯套",
      "alpha": "k"
    },
    "KAZ000KGT": {
      "name": "南哈萨克斯坦",
      "alpha": "n"
    },
    "KAZ000KST": {
      "name": "科斯塔奈",
      "alpha": "k"
    },
    "KAZ000KUR": {
      "name": "库尔恰托夫",
      "alpha": "k"
    },
    "KAZ000KZO": {
      "name": "卡拉扎尔",
      "alpha": "k"
    },
    "KAZ000KZY": {
      "name": "克孜勒奥尔达",
      "alpha": "k"
    },
    "KAZ000LEN": {
      "name": "列宁诺戈尔斯克",
      "alpha": "l"
    },
    "KAZ000LKK": {
      "name": "利萨科夫斯克",
      "alpha": "l"
    },
    "KAZ000MAN": {
      "name": "曼格斯套",
      "alpha": "m"
    },
    "KAZ000PAV": {
      "name": "巴甫洛达尔",
      "alpha": "b"
    },
    "KAZ000RUD": {
      "name": "鲁德内",
      "alpha": "l"
    },
    "KAZ000SAK": {
      "name": "沙赫京斯克",
      "alpha": "s"
    },
    "KAZ000SAR": {
      "name": "萨兰",
      "alpha": "s"
    },
    "KAZ000SEM": {
      "name": "塞梅伊",
      "alpha": "s"
    },
    "KAZ000SEV": {
      "name": "北哈萨克斯坦",
      "alpha": "b"
    },
    "KAZ000STE": {
      "name": "斯捷普诺戈尔斯克",
      "alpha": "s"
    },
    "KAZ000TEK": {
      "name": "铁克利",
      "alpha": "t"
    },
    "KAZ000TEM": {
      "name": "铁米尔套",
      "alpha": "t"
    },
    "KAZ000TUR": {
      "name": "突厥斯坦",
      "alpha": "t"
    },
    "KAZ000VOS": {
      "name": "东哈萨克斯坦",
      "alpha": "d"
    },
    "KAZ000ZAP": {
      "name": "西哈萨克斯坦",
      "alpha": "x"
    },
    "KAZ000ZHA": {
      "name": "扎纳奥津",
      "alpha": "z"
    },
    "KAZ000ZYR": {
      "name": "济良诺夫斯克",
      "alpha": "j"
    }
  },
  "KEN": {
    "KEN0000CE": {
      "name": "中央",
      "alpha": "z"
    },
    "KEN0000NA": {
      "name": "内罗毕",
      "alpha": "n"
    },
    "KEN000BAR": {
      "name": "巴林戈",
      "alpha": "b"
    },
    "KEN000BOM": {
      "name": "博美特",
      "alpha": "b"
    },
    "KEN000BUN": {
      "name": "邦戈马",
      "alpha": "b"
    },
    "KEN000BUS": {
      "name": "布希亚",
      "alpha": "b"
    },
    "KEN000EMA": {
      "name": "埃尔格约-马拉奎特",
      "alpha": "a"
    },
    "KEN000EMB": {
      "name": "恩布",
      "alpha": "e"
    },
    "KEN000GAS": {
      "name": "加里萨",
      "alpha": "j"
    },
    "KEN000HOB": {
      "name": "霍马湾",
      "alpha": "h"
    },
    "KEN000ISI": {
      "name": "伊希约洛",
      "alpha": "y"
    },
    "KEN000KAJ": {
      "name": "卡耶亚多",
      "alpha": "k"
    },
    "KEN000KAK": {
      "name": "卡卡梅加",
      "alpha": "k"
    },
    "KEN000KEY": {
      "name": "凯里乔",
      "alpha": "k"
    },
    "KEN000KIA": {
      "name": "基安布",
      "alpha": "j"
    },
    "KEN000KII": {
      "name": "基西",
      "alpha": "j"
    },
    "KEN000KIL": {
      "name": "基里菲",
      "alpha": "j"
    },
    "KEN000KIR": {
      "name": "基里尼亚加",
      "alpha": "j"
    },
    "KEN000KIS": {
      "name": "基苏木",
      "alpha": "j"
    },
    "KEN000KIT": {
      "name": "基图伊",
      "alpha": "j"
    },
    "KEN000KWA": {
      "name": "夸勒",
      "alpha": "k"
    },
    "KEN000LAI": {
      "name": "莱基皮亚",
      "alpha": "l"
    },
    "KEN000LAU": {
      "name": "拉木",
      "alpha": "l"
    },
    "KEN000MAC": {
      "name": "马查科斯",
      "alpha": "m"
    },
    "KEN000MAK": {
      "name": "马瓜尼",
      "alpha": "m"
    },
    "KEN000MAN": {
      "name": "曼德拉",
      "alpha": "m"
    },
    "KEN000MER": {
      "name": "梅鲁",
      "alpha": "m"
    },
    "KEN000MIG": {
      "name": "米戈利",
      "alpha": "m"
    },
    "KEN000MOM": {
      "name": "蒙巴萨",
      "alpha": "m"
    },
    "KEN000MUR": {
      "name": "穆兰卡",
      "alpha": "m"
    },
    "KEN000NAN": {
      "name": "南迪",
      "alpha": "n"
    },
    "KEN000NAR": {
      "name": "纳罗克",
      "alpha": "n"
    },
    "KEN000NIT": {
      "name": "尼蒂",
      "alpha": "n"
    },
    "KEN000NUU": {
      "name": "纳库鲁",
      "alpha": "n"
    },
    "KEN000NYE": {
      "name": "涅里",
      "alpha": "n"
    },
    "KEN000NYM": {
      "name": "尼亚米拉",
      "alpha": "n"
    },
    "KEN000NYN": {
      "name": "年达鲁阿",
      "alpha": "n"
    },
    "KEN000RBT": {
      "name": "马萨布布",
      "alpha": "m"
    },
    "KEN000SIA": {
      "name": "夏亚",
      "alpha": "x"
    },
    "KEN000TNZ": {
      "name": "特兰斯-恩佐亚",
      "alpha": "t"
    },
    "KEN000TRI": {
      "name": "塔纳河",
      "alpha": "t"
    },
    "KEN000TTA": {
      "name": "泰塔塔维塔",
      "alpha": "t"
    },
    "KEN000TUR": {
      "name": "图尔卡纳",
      "alpha": "t"
    },
    "KEN000UAS": {
      "name": "桑布卢",
      "alpha": "s"
    },
    "KEN000UGI": {
      "name": "瓦辛基苏",
      "alpha": "w"
    },
    "KEN000VIH": {
      "name": "韦希加",
      "alpha": "w"
    },
    "KEN000WJR": {
      "name": "瓦吉尔",
      "alpha": "w"
    },
    "KEN000WPO": {
      "name": "西波克特",
      "alpha": "x"
    }
  },
  "KGZ": {
    "KGZ00000B": {
      "name": "巴特肯",
      "alpha": "b"
    },
    "KGZ00000C": {
      "name": "楚河",
      "alpha": "c"
    },
    "KGZ00000J": {
      "name": "贾拉拉巴德",
      "alpha": "j"
    },
    "KGZ00000N": {
      "name": "纳伦",
      "alpha": "n"
    },
    "KGZ00000O": {
      "name": "奥什",
      "alpha": "a"
    },
    "KGZ00000T": {
      "name": "塔拉斯",
      "alpha": "t"
    },
    "KGZ00000Y": {
      "name": "伊塞克湖",
      "alpha": "y"
    },
    "KGZ0000GB": {
      "name": "比什凯克市",
      "alpha": "b"
    },
    "KGZ0000KJ": {
      "name": "科克扬加克",
      "alpha": "k"
    },
    "KGZ0000MS": {
      "name": "迈利赛",
      "alpha": "m"
    },
    "KGZ0000SU": {
      "name": "苏卢克图",
      "alpha": "s"
    },
    "KGZ0000TK": {
      "name": "塔什库梅尔",
      "alpha": "t"
    },
    "KGZ0000UG": {
      "name": "乌兹根",
      "alpha": "w"
    },
    "KGZ000KAN": {
      "name": "坎特",
      "alpha": "k"
    },
    "KGZ000KBA": {
      "name": "卡拉巴尔塔",
      "alpha": "k"
    },
    "KGZ000KKO": {
      "name": "卡拉库尔",
      "alpha": "k"
    }
  },
  "KHM": {
    "KHM0000BA": {
      "name": "马德望",
      "alpha": "m"
    },
    "KHM0000BM": {
      "name": "班迭棉吉",
      "alpha": "b"
    },
    "KHM0000KA": {
      "name": "西哈努克市",
      "alpha": "x"
    },
    "KHM0000KB": {
      "name": "白马市",
      "alpha": "b"
    },
    "KHM0000KH": {
      "name": "桔井",
      "alpha": "j"
    },
    "KHM0000KL": {
      "name": "干丹",
      "alpha": "g"
    },
    "KHM0000KM": {
      "name": "磅湛",
      "alpha": "b"
    },
    "KHM0000KO": {
      "name": "磅士卑",
      "alpha": "b"
    },
    "KHM0000OC": {
      "name": "奥多棉吉",
      "alpha": "a"
    },
    "KHM0000PG": {
      "name": "波罗勉",
      "alpha": "b"
    },
    "KHM0000PL": {
      "name": "拜林市",
      "alpha": "b"
    },
    "KHM0000PO": {
      "name": "菩萨",
      "alpha": "p"
    },
    "KHM0000PR": {
      "name": "柏威夏",
      "alpha": "b"
    },
    "KHM0000TK": {
      "name": "茶胶",
      "alpha": "c"
    },
    "KHM000KKZ": {
      "name": "戈公",
      "alpha": "g"
    },
    "KHM000KMT": {
      "name": "贡布",
      "alpha": "g"
    },
    "KHM000KZC": {
      "name": "磅清扬",
      "alpha": "b"
    },
    "KHM000KZK": {
      "name": "磅同",
      "alpha": "b"
    },
    "KHM000MWV": {
      "name": "蒙多基里",
      "alpha": "m"
    },
    "KHM000PNH": {
      "name": "金边市",
      "alpha": "j"
    },
    "KHM000RBE": {
      "name": "腊塔纳基里",
      "alpha": "l"
    },
    "KHM000REP": {
      "name": "暹粒",
      "alpha": "x"
    },
    "KHM000SVR": {
      "name": "柴桢",
      "alpha": "c"
    },
    "KHM000TNX": {
      "name": "上丁",
      "alpha": "s"
    }
  },
  "KOR": {
    "KOR027DSG": {
      "name": "达城郡",
      "alpha": "d"
    },
    "KOR027SUS": {
      "name": "寿城区",
      "alpha": "s"
    },
    "KOR027TAE": {
      "name": "大邱",
      "alpha": "d"
    },
    "KOR042CHC": {
      "name": "春川市",
      "alpha": "c"
    },
    "KOR042CWN": {
      "name": "铁原郡",
      "alpha": "t"
    },
    "KOR042GSG": {
      "name": "高城郡",
      "alpha": "g"
    },
    "KOR042HCH": {
      "name": "华川郡",
      "alpha": "h"
    },
    "KOR042HCN": {
      "name": "洪川郡",
      "alpha": "h"
    },
    "KOR042HSG": {
      "name": "横城郡",
      "alpha": "h"
    },
    "KOR042IJE": {
      "name": "麟蹄郡",
      "alpha": "l"
    },
    "KOR042JSE": {
      "name": "旌善郡",
      "alpha": "j"
    },
    "KOR042KAG": {
      "name": "江陵市",
      "alpha": "j"
    },
    "KOR042POG": {
      "name": "平昌郡",
      "alpha": "p"
    },
    "KOR042SHO": {
      "name": "束草市",
      "alpha": "s"
    },
    "KOR042SUK": {
      "name": "三陟市",
      "alpha": "s"
    },
    "KOR042TBK": {
      "name": "太白市",
      "alpha": "t"
    },
    "KOR042TGH": {
      "name": "东海市",
      "alpha": "d"
    },
    "KOR042WJU": {
      "name": "原州市",
      "alpha": "y"
    },
    "KOR042YGU": {
      "name": "杨口郡",
      "alpha": "y"
    },
    "KOR042YNY": {
      "name": "襄阳郡",
      "alpha": "x"
    },
    "KOR042YWL": {
      "name": "宁越郡",
      "alpha": "n"
    },
    "KOR043ADG": {
      "name": "安东市",
      "alpha": "a"
    },
    "KOR043BHA": {
      "name": "奉化郡",
      "alpha": "f"
    },
    "KOR043CDO": {
      "name": "淸道郡",
      "alpha": "d"
    },
    "KOR043CGK": {
      "name": "漆谷郡",
      "alpha": "q"
    },
    "KOR043CSG": {
      "name": "靑松郡",
      "alpha": "s"
    },
    "KOR043GJU": {
      "name": "庆州市",
      "alpha": "q"
    },
    "KOR043GRG": {
      "name": "高灵郡",
      "alpha": "g"
    },
    "KOR043GWI": {
      "name": "军威郡",
      "alpha": "j"
    },
    "KOR043GYS": {
      "name": "庆山市",
      "alpha": "q"
    },
    "KOR043KMC": {
      "name": "金泉市",
      "alpha": "j"
    },
    "KOR043KPO": {
      "name": "浦项市",
      "alpha": "p"
    },
    "KOR043KUM": {
      "name": "龟尾市",
      "alpha": "g"
    },
    "KOR043MGG": {
      "name": "闻庆市",
      "alpha": "w"
    },
    "KOR043SEJ": {
      "name": "星州郡",
      "alpha": "x"
    },
    "KOR043SJU": {
      "name": "尙州市",
      "alpha": "z"
    },
    "KOR043UJN": {
      "name": "蔚珍郡",
      "alpha": "w"
    },
    "KOR043ULG": {
      "name": "郁陵郡",
      "alpha": "y"
    },
    "KOR043USG": {
      "name": "义城郡",
      "alpha": "y"
    },
    "KOR043YCH": {
      "name": "永川市",
      "alpha": "y"
    },
    "KOR043YDK": {
      "name": "盈德郡",
      "alpha": "y"
    },
    "KOR043YEC": {
      "name": "醴泉郡",
      "alpha": "l"
    },
    "KOR043YEJ": {
      "name": "荣州市",
      "alpha": "r"
    },
    "KOR043YYG": {
      "name": "英阳郡",
      "alpha": "y"
    },
    "KOR044CHF": {
      "name": "鎭海市",
      "alpha": "h"
    },
    "KOR044CHW": {
      "name": "昌原市",
      "alpha": "c"
    },
    "KOR044CNG": {
      "name": "昌宁郡",
      "alpha": "c"
    },
    "KOR044GCH": {
      "name": "居昌郡",
      "alpha": "j"
    },
    "KOR044GSO": {
      "name": "固城郡",
      "alpha": "g"
    },
    "KOR044HAN": {
      "name": "咸安郡",
      "alpha": "x"
    },
    "KOR044HCE": {
      "name": "陜川郡",
      "alpha": "c"
    },
    "KOR044HDG": {
      "name": "河东郡",
      "alpha": "h"
    },
    "KOR044HIN": {
      "name": "晋州市",
      "alpha": "j"
    },
    "KOR044HYG": {
      "name": "咸阳郡",
      "alpha": "x"
    },
    "KOR044KJE": {
      "name": "巨济市",
      "alpha": "j"
    },
    "KOR044KMH": {
      "name": "金海市",
      "alpha": "j"
    },
    "KOR044MAS": {
      "name": "马山市",
      "alpha": "m"
    },
    "KOR044MIR": {
      "name": "密阳市",
      "alpha": "m"
    },
    "KOR044NHE": {
      "name": "南海郡",
      "alpha": "n"
    },
    "KOR044SAH": {
      "name": "泗川市",
      "alpha": "s"
    },
    "KOR044SCH": {
      "name": "山淸郡",
      "alpha": "s"
    },
    "KOR044TYG": {
      "name": "统营市",
      "alpha": "t"
    },
    "KOR044URG": {
      "name": "宜宁郡",
      "alpha": "y"
    },
    "KOR044YSN": {
      "name": "梁山市",
      "alpha": "l"
    },
    "KOR045BEN": {
      "name": "报恩郡",
      "alpha": "b"
    },
    "KOR045CHU": {
      "name": "忠州市",
      "alpha": "z"
    },
    "KOR045CJJ": {
      "name": "淸州市",
      "alpha": "z"
    },
    "KOR045CWO": {
      "name": "淸原郡",
      "alpha": "y"
    },
    "KOR045DYG": {
      "name": "丹阳郡",
      "alpha": "d"
    },
    "KOR045ESG": {
      "name": "阴城郡",
      "alpha": "y"
    },
    "KOR045GSN": {
      "name": "槐山郡",
      "alpha": "h"
    },
    "KOR045JCH": {
      "name": "堤川市",
      "alpha": "d"
    },
    "KOR045JCN": {
      "name": "鎭川郡",
      "alpha": "c"
    },
    "KOR045JYG": {
      "name": "曾坪郡",
      "alpha": "z"
    },
    "KOR045OCN": {
      "name": "沃川郡",
      "alpha": "w"
    },
    "KOR045YDG": {
      "name": "永同郡",
      "alpha": "y"
    },
    "KOR046ASA": {
      "name": "牙山市",
      "alpha": "y"
    },
    "KOR046BOR": {
      "name": "保宁市",
      "alpha": "b"
    },
    "KOR046BYO": {
      "name": "扶余郡",
      "alpha": "f"
    },
    "KOR046CHO": {
      "name": "天安市",
      "alpha": "t"
    },
    "KOR046CYG": {
      "name": "青阳郡",
      "alpha": "q"
    },
    "KOR046GOJ": {
      "name": "公州市",
      "alpha": "g"
    },
    "KOR046GSA": {
      "name": "锦山郡",
      "alpha": "j"
    },
    "KOR046GYE": {
      "name": "鸡龙市",
      "alpha": "j"
    },
    "KOR046HSE": {
      "name": "洪城郡",
      "alpha": "h"
    },
    "KOR046NSN": {
      "name": "论山市",
      "alpha": "l"
    },
    "KOR046SCE": {
      "name": "舒川郡",
      "alpha": "s"
    },
    "KOR046SSA": {
      "name": "瑞山市",
      "alpha": "r"
    },
    "KOR046TAN": {
      "name": "泰安郡",
      "alpha": "t"
    },
    "KOR046TJI": {
      "name": "唐津郡",
      "alpha": "t"
    },
    "KOR046YGI": {
      "name": "燕岐郡",
      "alpha": "y"
    },
    "KOR046YOS": {
      "name": "礼山郡",
      "alpha": "l"
    },
    "KOR047GCG": {
      "name": "高敞郡",
      "alpha": "g"
    },
    "KOR047GJE": {
      "name": "金堤市",
      "alpha": "j"
    },
    "KOR047IKS": {
      "name": "益山市",
      "alpha": "y"
    },
    "KOR047ISL": {
      "name": "任实郡",
      "alpha": "r"
    },
    "KOR047JAN": {
      "name": "鎭安郡",
      "alpha": "a"
    },
    "KOR047JEO": {
      "name": "井邑市",
      "alpha": "j"
    },
    "KOR047JNJ": {
      "name": "全州市",
      "alpha": "q"
    },
    "KOR047JSU": {
      "name": "长水郡",
      "alpha": "c"
    },
    "KOR047KUV": {
      "name": "群山市",
      "alpha": "q"
    },
    "KOR047MJU": {
      "name": "茂朱郡",
      "alpha": "m"
    },
    "KOR047NWN": {
      "name": "南原市",
      "alpha": "n"
    },
    "KOR047PUS": {
      "name": "扶安郡",
      "alpha": "f"
    },
    "KOR047SCG": {
      "name": "淳昌郡",
      "alpha": "c"
    },
    "KOR047WAJ": {
      "name": "完州郡",
      "alpha": "w"
    },
    "KOR048BSG": {
      "name": "宝城郡",
      "alpha": "b"
    },
    "KOR048DYA": {
      "name": "潭阳郡",
      "alpha": "t"
    },
    "KOR048GHG": {
      "name": "高兴郡",
      "alpha": "g"
    },
    "KOR048GJN": {
      "name": "康津郡",
      "alpha": "k"
    },
    "KOR048GRE": {
      "name": "求礼郡",
      "alpha": "q"
    },
    "KOR048GSE": {
      "name": "谷城郡",
      "alpha": "g"
    },
    "KOR048HAE": {
      "name": "海南郡",
      "alpha": "h"
    },
    "KOR048HPG": {
      "name": "咸平郡",
      "alpha": "x"
    },
    "KOR048HSN": {
      "name": "和顺郡",
      "alpha": "h"
    },
    "KOR048JDO": {
      "name": "珍岛郡",
      "alpha": "z"
    },
    "KOR048JHG": {
      "name": "长兴郡",
      "alpha": "c"
    },
    "KOR048JSN": {
      "name": "长城郡",
      "alpha": "c"
    },
    "KOR048KAN": {
      "name": "光阳市",
      "alpha": "g"
    },
    "KOR048MAN": {
      "name": "务安郡",
      "alpha": "w"
    },
    "KOR048MOK": {
      "name": "木浦市",
      "alpha": "m"
    },
    "KOR048NJU": {
      "name": "罗州市",
      "alpha": "l"
    },
    "KOR048SAN": {
      "name": "新安郡",
      "alpha": "x"
    },
    "KOR048SYS": {
      "name": "顺天市",
      "alpha": "s"
    },
    "KOR048WND": {
      "name": "莞岛郡",
      "alpha": "g"
    },
    "KOR048YAM": {
      "name": "灵岩郡",
      "alpha": "l"
    },
    "KOR048YGG": {
      "name": "灵光郡",
      "alpha": "l"
    },
    "KOR048YOS": {
      "name": "丽水市",
      "alpha": "l"
    },
    "KOR049ANY": {
      "name": "安养市",
      "alpha": "a"
    },
    "KOR049ASG": {
      "name": "安城市",
      "alpha": "a"
    },
    "KOR049ASN": {
      "name": "安山市",
      "alpha": "a"
    },
    "KOR049BCN": {
      "name": "富川市",
      "alpha": "f"
    },
    "KOR049DDC": {
      "name": "东豆川市",
      "alpha": "d"
    },
    "KOR049GCN": {
      "name": "果川市",
      "alpha": "g"
    },
    "KOR049GMG": {
      "name": "光明市",
      "alpha": "g"
    },
    "KOR049GMP": {
      "name": "金浦市",
      "alpha": "j"
    },
    "KOR049GPG": {
      "name": "加平郡",
      "alpha": "j"
    },
    "KOR049GRI": {
      "name": "九里市",
      "alpha": "j"
    },
    "KOR049GUN": {
      "name": "军浦市",
      "alpha": "j"
    },
    "KOR049GYG": {
      "name": "高阳市",
      "alpha": "g"
    },
    "KOR049HCH": {
      "name": "华城市",
      "alpha": "h"
    },
    "KOR049HNM": {
      "name": "河南市",
      "alpha": "h"
    },
    "KOR049ICE": {
      "name": "利川市",
      "alpha": "l"
    },
    "KOR049KWU": {
      "name": "广州市",
      "alpha": "g"
    },
    "KOR049NYU": {
      "name": "南杨州市",
      "alpha": "n"
    },
    "KOR049OSN": {
      "name": "乌山市",
      "alpha": "w"
    },
    "KOR049PJU": {
      "name": "坡州市",
      "alpha": "p"
    },
    "KOR049POC": {
      "name": "抱川市",
      "alpha": "b"
    },
    "KOR049PTK": {
      "name": "平泽市",
      "alpha": "p"
    },
    "KOR049SEO": {
      "name": "城南市",
      "alpha": "c"
    },
    "KOR049SHE": {
      "name": "始兴市",
      "alpha": "s"
    },
    "KOR049SUO": {
      "name": "水原市",
      "alpha": "s"
    },
    "KOR049UIJ": {
      "name": "议政府市",
      "alpha": "y"
    },
    "KOR049UWN": {
      "name": "仪旺市",
      "alpha": "y"
    },
    "KOR049YCN": {
      "name": "涟川郡",
      "alpha": "l"
    },
    "KOR049YJU": {
      "name": "骊州郡",
      "alpha": "l"
    },
    "KOR049YNG": {
      "name": "龙仁市",
      "alpha": "l"
    },
    "KOR049YPG": {
      "name": "扬平郡",
      "alpha": "y"
    },
    "KOR049YYU": {
      "name": "杨州市",
      "alpha": "y"
    }
  },
  "KWT": {},
  "LAO": {
    "LAO0000AT": {
      "name": "阿速坡",
      "alpha": "a"
    },
    "LAO0000BK": {
      "name": "博乔",
      "alpha": "b"
    },
    "LAO0000BL": {
      "name": "波里坎赛",
      "alpha": "b"
    },
    "LAO0000CH": {
      "name": "占巴塞",
      "alpha": "z"
    },
    "LAO0000HO": {
      "name": "华潘",
      "alpha": "h"
    },
    "LAO0000KH": {
      "name": "甘蒙",
      "alpha": "g"
    },
    "LAO0000LM": {
      "name": "琅南塔",
      "alpha": "l"
    },
    "LAO0000LP": {
      "name": "琅勃拉邦",
      "alpha": "l"
    },
    "LAO0000OU": {
      "name": "乌多姆赛",
      "alpha": "w"
    },
    "LAO0000PH": {
      "name": "丰沙里",
      "alpha": "f"
    },
    "LAO0000SL": {
      "name": "沙拉湾",
      "alpha": "s"
    },
    "LAO0000SV": {
      "name": "沙湾拿吉",
      "alpha": "s"
    },
    "LAO0000VI": {
      "name": "万象",
      "alpha": "w"
    },
    "LAO0000XA": {
      "name": "沙耶武里",
      "alpha": "s"
    },
    "LAO0000XE": {
      "name": "色贡",
      "alpha": "s"
    },
    "LAO0000XI": {
      "name": "川圹",
      "alpha": "c"
    },
    "LAO0000XN": {
      "name": "赛宋本行政特区",
      "alpha": "s"
    }
  },
  "LBN": {
    "LBN0000AS": {
      "name": "北部",
      "alpha": "b"
    },
    "LBN0000BA": {
      "name": "贝鲁特",
      "alpha": "b"
    },
    "LBN0000BI": {
      "name": "贝卡",
      "alpha": "b"
    },
    "LBN0000JA": {
      "name": "南部",
      "alpha": "n"
    },
    "LBN0000JL": {
      "name": "黎巴嫩山",
      "alpha": "l"
    },
    "LBN0000NA": {
      "name": "奈拜提耶市",
      "alpha": "n"
    }
  },
  "LBR": {
    "LBR0000BG": {
      "name": "邦",
      "alpha": "b"
    },
    "LBR0000BM": {
      "name": "博米",
      "alpha": "b"
    },
    "LBR0000CM": {
      "name": "大角山",
      "alpha": "d"
    },
    "LBR0000FT": {
      "name": "菲什敦",
      "alpha": "f"
    },
    "LBR0000GB": {
      "name": "大巴萨",
      "alpha": "d"
    },
    "LBR0000GG": {
      "name": "大吉德",
      "alpha": "d"
    },
    "LBR0000GK": {
      "name": "大克鲁",
      "alpha": "d"
    },
    "LBR0000LO": {
      "name": "洛法",
      "alpha": "l"
    },
    "LBR0000MG": {
      "name": "马吉比",
      "alpha": "m"
    },
    "LBR0000MO": {
      "name": "蒙特塞拉多",
      "alpha": "m"
    },
    "LBR0000MY": {
      "name": "马里兰",
      "alpha": "m"
    },
    "LBR0000NI": {
      "name": "宁巴",
      "alpha": "n"
    },
    "LBR0000RG": {
      "name": "吉河",
      "alpha": "j"
    },
    "LBR0000RI": {
      "name": "里弗塞斯",
      "alpha": "l"
    },
    "LBR0000SI": {
      "name": "锡诺",
      "alpha": "x"
    },
    "LBR000BOP": {
      "name": "博波卢",
      "alpha": "b"
    },
    "LBR000GBA": {
      "name": "巴波卢",
      "alpha": "b"
    }
  },
  "LBY": {},
  "LKA": {
    "LKA000ADP": {
      "name": "阿努拉德普勒",
      "alpha": "a"
    },
    "LKA000AMP": {
      "name": "安帕赖",
      "alpha": "a"
    },
    "LKA000BAD": {
      "name": "巴杜勒",
      "alpha": "b"
    },
    "LKA000BTC": {
      "name": "拜蒂克洛",
      "alpha": "b"
    },
    "LKA000CMB": {
      "name": "科伦坡",
      "alpha": "k"
    },
    "LKA000GAL": {
      "name": "加勒",
      "alpha": "j"
    },
    "LKA000GAM": {
      "name": "加姆珀哈",
      "alpha": "j"
    },
    "LKA000HBA": {
      "name": "汉班托特",
      "alpha": "h"
    },
    "LKA000JAF": {
      "name": "贾夫纳",
      "alpha": "j"
    },
    "LKA000KAN": {
      "name": "康提",
      "alpha": "k"
    },
    "LKA000KEG": {
      "name": "凯格勒",
      "alpha": "k"
    },
    "LKA000KIL": {
      "name": "基里诺奇",
      "alpha": "j"
    },
    "LKA000KLT": {
      "name": "卡卢特勒",
      "alpha": "k"
    },
    "LKA000KUR": {
      "name": "库鲁内格勒",
      "alpha": "k"
    },
    "LKA000MAA": {
      "name": "马特勒",
      "alpha": "m"
    },
    "LKA000MAN": {
      "name": "马纳尔",
      "alpha": "m"
    },
    "LKA000MAT": {
      "name": "马特莱",
      "alpha": "m"
    },
    "LKA000MON": {
      "name": "莫讷勒格勒",
      "alpha": "m"
    },
    "LKA000MUL": {
      "name": "穆莱蒂武",
      "alpha": "m"
    },
    "LKA000NUE": {
      "name": "努沃勒埃利耶",
      "alpha": "n"
    },
    "LKA000POL": {
      "name": "波隆纳鲁沃",
      "alpha": "b"
    },
    "LKA000PUT": {
      "name": "普塔勒姆",
      "alpha": "p"
    },
    "LKA000RAT": {
      "name": "拉特纳普勒",
      "alpha": "l"
    },
    "LKA000TRR": {
      "name": "亭可马里",
      "alpha": "t"
    },
    "LKA000VAV": {
      "name": "瓦武尼亚",
      "alpha": "w"
    }
  },
  "LSO": {
    "LSO00000A": {
      "name": "马塞卢",
      "alpha": "m"
    },
    "LSO00000B": {
      "name": "布塔布泰",
      "alpha": "b"
    },
    "LSO00000C": {
      "name": "莱里贝",
      "alpha": "l"
    },
    "LSO00000D": {
      "name": "伯里亚",
      "alpha": "b"
    },
    "LSO00000E": {
      "name": "马费滕",
      "alpha": "m"
    },
    "LSO00000F": {
      "name": "莫哈莱斯胡克",
      "alpha": "m"
    },
    "LSO00000G": {
      "name": "古廷",
      "alpha": "g"
    },
    "LSO00000H": {
      "name": "加查斯内克",
      "alpha": "j"
    },
    "LSO00000J": {
      "name": "莫霍特隆",
      "alpha": "m"
    },
    "LSO00000K": {
      "name": "塔巴采卡",
      "alpha": "t"
    }
  },
  "LTU": {
    "LTU0000AL": {
      "name": "阿利图斯",
      "alpha": "a"
    },
    "LTU0000KA": {
      "name": "考纳斯",
      "alpha": "k"
    },
    "LTU0000KL": {
      "name": "克莱佩达",
      "alpha": "k"
    },
    "LTU0000MA": {
      "name": "马里扬泊列",
      "alpha": "m"
    },
    "LTU0000PA": {
      "name": "帕涅韦日斯",
      "alpha": "p"
    },
    "LTU0000SI": {
      "name": "希奥利艾",
      "alpha": "x"
    },
    "LTU0000TA": {
      "name": "陶拉格",
      "alpha": "t"
    },
    "LTU0000TE": {
      "name": "特尔希艾",
      "alpha": "t"
    },
    "LTU0000UT": {
      "name": "乌田纳",
      "alpha": "w"
    },
    "LTU0000VI": {
      "name": "维尔纽斯",
      "alpha": "w"
    },
    "LTU000AKM": {
      "name": "亚克曼",
      "alpha": "y"
    }
  },
  "LUX": {
    "LUX0000DD": {
      "name": "迪基希",
      "alpha": "d"
    },
    "LUX0000GG": {
      "name": "格雷文马赫",
      "alpha": "g"
    },
    "LUX0000LL": {
      "name": "卢森堡",
      "alpha": "l"
    }
  },
  "LVA": {
    "LVA000AIZ": {
      "name": "爱兹克劳克雷",
      "alpha": "a"
    },
    "LVA000ALU": {
      "name": "阿卢克斯内",
      "alpha": "a"
    },
    "LVA000BAL": {
      "name": "巴尔维",
      "alpha": "b"
    },
    "LVA000BAU": {
      "name": "包斯卡",
      "alpha": "b"
    },
    "LVA000CES": {
      "name": "采西斯",
      "alpha": "c"
    },
    "LVA000DGR": {
      "name": "陶格夫皮尔斯",
      "alpha": "t"
    },
    "LVA000DOB": {
      "name": "多贝莱",
      "alpha": "d"
    },
    "LVA000GUL": {
      "name": "古尔贝内",
      "alpha": "g"
    },
    "LVA000JEK": {
      "name": "杰卡布皮尔斯",
      "alpha": "j"
    },
    "LVA000JGR": {
      "name": "叶尔加瓦",
      "alpha": "y"
    },
    "LVA000KRA": {
      "name": "克拉斯拉瓦",
      "alpha": "k"
    },
    "LVA000KUL": {
      "name": "库尔迪加",
      "alpha": "k"
    },
    "LVA000LIM": {
      "name": "林巴济",
      "alpha": "l"
    },
    "LVA000LPK": {
      "name": "利耶帕亚",
      "alpha": "l"
    },
    "LVA000LUD": {
      "name": "卢扎",
      "alpha": "l"
    },
    "LVA000MAD": {
      "name": "马多纳",
      "alpha": "m"
    },
    "LVA000OGR": {
      "name": "奥格雷",
      "alpha": "a"
    },
    "LVA000PRE": {
      "name": "普雷利",
      "alpha": "p"
    },
    "LVA000RGA": {
      "name": "里加",
      "alpha": "l"
    },
    "LVA000RZR": {
      "name": "雷泽克内",
      "alpha": "l"
    },
    "LVA000SAL": {
      "name": "萨尔杜斯",
      "alpha": "s"
    },
    "LVA000TAL": {
      "name": "塔尔西",
      "alpha": "t"
    },
    "LVA000TUK": {
      "name": "图库马",
      "alpha": "t"
    },
    "LVA000VLK": {
      "name": "瓦尔加",
      "alpha": "w"
    },
    "LVA000VLM": {
      "name": "瓦尔米耶拉",
      "alpha": "w"
    },
    "LVA000VSL": {
      "name": "文茨皮尔斯",
      "alpha": "w"
    }
  },
  "MAR": {
    "MAR000CBL": {
      "name": "卡萨布兰卡",
      "alpha": "k"
    },
    "MAR000FES": {
      "name": "非斯",
      "alpha": "f"
    },
    "MAR000MKN": {
      "name": "梅克内斯",
      "alpha": "m"
    },
    "MAR000MRK": {
      "name": "马拉喀什",
      "alpha": "m"
    },
    "MAR000OUJ": {
      "name": "乌季达",
      "alpha": "w"
    },
    "MAR000RSA": {
      "name": "拉巴特",
      "alpha": "l"
    },
    "MAR000TET": {
      "name": "得土安",
      "alpha": "d"
    },
    "MAR000TGR": {
      "name": "丹吉尔",
      "alpha": "d"
    },
    "MAR000WSH": {
      "name": "西撒哈拉",
      "alpha": "x"
    }
  },
  "MDA": {},
  "MDG": {
    "MDG0000AN": {
      "name": "塔那那利佛",
      "alpha": "t"
    },
    "MDG0000AS": {
      "name": "安齐拉纳纳",
      "alpha": "a"
    },
    "MDG0000FN": {
      "name": "菲亚纳兰楚阿",
      "alpha": "f"
    },
    "MDG0000MJ": {
      "name": "马哈赞加",
      "alpha": "m"
    },
    "MDG0000TL": {
      "name": "图利亚拉",
      "alpha": "t"
    },
    "MDG0000TM": {
      "name": "图阿马西拉",
      "alpha": "t"
    }
  },
  "MEX": {
    "MEX000ACA": {
      "name": "阿卡普尔科",
      "alpha": "a"
    },
    "MEX000AGU": {
      "name": "阿瓜斯卡连斯特",
      "alpha": "a"
    },
    "MEX000BJU": {
      "name": "华雷斯港",
      "alpha": "h"
    },
    "MEX000CAM": {
      "name": "埃佩切",
      "alpha": "a"
    },
    "MEX000CAR": {
      "name": "卡门",
      "alpha": "k"
    },
    "MEX000CHH": {
      "name": "奇瓦瓦",
      "alpha": "q"
    },
    "MEX000CHI": {
      "name": "奇尔潘辛戈",
      "alpha": "q"
    },
    "MEX000CLY": {
      "name": "塞拉亚",
      "alpha": "s"
    },
    "MEX000COA": {
      "name": "夸察夸拉克斯",
      "alpha": "k"
    },
    "MEX000COL": {
      "name": "科利马",
      "alpha": "k"
    },
    "MEX000CTM": {
      "name": "切图马尔",
      "alpha": "q"
    },
    "MEX000CUL": {
      "name": "库利阿坎",
      "alpha": "k"
    },
    "MEX000CVC": {
      "name": "库埃纳瓦卡",
      "alpha": "k"
    },
    "MEX000DUR": {
      "name": "杜兰戈",
      "alpha": "d"
    },
    "MEX000ESE": {
      "name": "恩塞纳达",
      "alpha": "e"
    },
    "MEX000GDL": {
      "name": "瓜达拉哈拉",
      "alpha": "g"
    },
    "MEX000GUA": {
      "name": "瓜纳华托",
      "alpha": "g"
    },
    "MEX000HMO": {
      "name": "埃莫西约",
      "alpha": "a"
    },
    "MEX000IRP": {
      "name": "伊拉普阿托",
      "alpha": "y"
    },
    "MEX000JAL": {
      "name": "哈拉帕",
      "alpha": "h"
    },
    "MEX000JUZ": {
      "name": "华雷斯",
      "alpha": "h"
    },
    "MEX000LAP": {
      "name": "拉巴斯",
      "alpha": "l"
    },
    "MEX000LEN": {
      "name": "莱昂",
      "alpha": "l"
    },
    "MEX000LMM": {
      "name": "洛斯莫奇斯",
      "alpha": "l"
    },
    "MEX000LOV": {
      "name": "蒙克洛瓦",
      "alpha": "m"
    },
    "MEX000MAM": {
      "name": "马塔莫罗斯",
      "alpha": "m"
    },
    "MEX000MEX": {
      "name": "墨西哥城",
      "alpha": "m"
    },
    "MEX000MID": {
      "name": "梅里达",
      "alpha": "m"
    },
    "MEX000MLM": {
      "name": "莫雷利亚",
      "alpha": "m"
    },
    "MEX000MTY": {
      "name": "蒙特雷",
      "alpha": "m"
    },
    "MEX000MXL": {
      "name": "墨西卡利",
      "alpha": "m"
    },
    "MEX000MZT": {
      "name": "马萨特兰",
      "alpha": "m"
    },
    "MEX000NLE": {
      "name": "新拉雷多",
      "alpha": "x"
    },
    "MEX000NOG": {
      "name": "诺加莱斯",
      "alpha": "n"
    },
    "MEX000OAX": {
      "name": "瓦哈卡",
      "alpha": "w"
    },
    "MEX000OBR": {
      "name": "奥夫雷贡城",
      "alpha": "a"
    },
    "MEX000ORI": {
      "name": "奥里萨巴",
      "alpha": "a"
    },
    "MEX000PAC": {
      "name": "帕丘卡",
      "alpha": "p"
    },
    "MEX000PRH": {
      "name": "波萨里卡",
      "alpha": "b"
    },
    "MEX000PUE": {
      "name": "普埃布拉",
      "alpha": "p"
    },
    "MEX000PVR": {
      "name": "巴亚尔塔港",
      "alpha": "b"
    },
    "MEX000QUE": {
      "name": "克雷塔罗",
      "alpha": "k"
    },
    "MEX000REX": {
      "name": "雷诺萨",
      "alpha": "l"
    },
    "MEX000SLP": {
      "name": "圣路易斯波托亚",
      "alpha": "s"
    },
    "MEX000SLW": {
      "name": "萨尔蒂约",
      "alpha": "s"
    },
    "MEX000TAM": {
      "name": "坦皮科",
      "alpha": "t"
    },
    "MEX000TAP": {
      "name": "塔帕丘拉",
      "alpha": "t"
    },
    "MEX000TCN": {
      "name": "特瓦坎",
      "alpha": "t"
    },
    "MEX000TGZ": {
      "name": "图斯特拉-古铁雷斯",
      "alpha": "t"
    },
    "MEX000TIJ": {
      "name": "蒂华纳",
      "alpha": "d"
    },
    "MEX000TLA": {
      "name": "特拉斯卡拉",
      "alpha": "t"
    },
    "MEX000TLC": {
      "name": "托卢卡",
      "alpha": "t"
    },
    "MEX000TPQ": {
      "name": "特皮克",
      "alpha": "t"
    },
    "MEX000TRC": {
      "name": "托雷翁",
      "alpha": "t"
    },
    "MEX000UPN": {
      "name": "乌鲁阿潘",
      "alpha": "w"
    },
    "MEX000VER": {
      "name": "韦拉克鲁斯",
      "alpha": "w"
    },
    "MEX000VHM": {
      "name": "巴利城",
      "alpha": "b"
    },
    "MEX000VIC": {
      "name": "维多利亚城",
      "alpha": "w"
    },
    "MEX000VSA": {
      "name": "比利亚埃尔莫萨",
      "alpha": "b"
    },
    "MEX000ZAC": {
      "name": "萨卡特卡斯",
      "alpha": "s"
    }
  },
  "MKD": {},
  "MLI": {
    "MLI0000CD": {
      "name": "巴马科首都区",
      "alpha": "b"
    },
    "MLI0000GA": {
      "name": "加奥",
      "alpha": "j"
    },
    "MLI0000KD": {
      "name": "基达尔",
      "alpha": "j"
    },
    "MLI0000KL": {
      "name": "库利科罗",
      "alpha": "k"
    },
    "MLI0000KY": {
      "name": "卡伊",
      "alpha": "k"
    },
    "MLI0000MP": {
      "name": "莫普提",
      "alpha": "m"
    },
    "MLI0000SG": {
      "name": "塞古",
      "alpha": "s"
    },
    "MLI0000SK": {
      "name": "锡卡索",
      "alpha": "x"
    },
    "MLI0000TB": {
      "name": "通布图",
      "alpha": "t"
    }
  },
  "MLT": {},
  "MMR": {
    "MMR0000AY": {
      "name": "伊洛瓦底省",
      "alpha": "y"
    },
    "MMR0000BG": {
      "name": "勃固省",
      "alpha": "b"
    },
    "MMR0000CH": {
      "name": "钦邦",
      "alpha": "q"
    },
    "MMR0000KC": {
      "name": "克钦邦",
      "alpha": "k"
    },
    "MMR0000KH": {
      "name": "克耶邦",
      "alpha": "k"
    },
    "MMR0000KN": {
      "name": "克伦邦",
      "alpha": "k"
    },
    "MMR0000MD": {
      "name": "曼德勒省",
      "alpha": "m"
    },
    "MMR0000MG": {
      "name": "马圭省",
      "alpha": "m"
    },
    "MMR0000MN": {
      "name": "孟邦",
      "alpha": "m"
    },
    "MMR0000RK": {
      "name": "若开邦",
      "alpha": "r"
    },
    "MMR0000SG": {
      "name": "实皆省",
      "alpha": "s"
    },
    "MMR0000SH": {
      "name": "掸邦",
      "alpha": "d"
    },
    "MMR0000TN": {
      "name": "德林达依省",
      "alpha": "d"
    },
    "MMR0000YG": {
      "name": "仰光省",
      "alpha": "y"
    }
  },
  "MNG": {
    "MNG000001": {
      "name": "乌兰巴托市",
      "alpha": "w"
    },
    "MNG000035": {
      "name": "鄂尔浑",
      "alpha": "e"
    },
    "MNG000037": {
      "name": "达尔汗乌勒",
      "alpha": "d"
    },
    "MNG000039": {
      "name": "肯特",
      "alpha": "k"
    },
    "MNG000041": {
      "name": "库苏古尔",
      "alpha": "k"
    },
    "MNG000043": {
      "name": "科布多",
      "alpha": "k"
    },
    "MNG000046": {
      "name": "乌布苏",
      "alpha": "w"
    },
    "MNG000047": {
      "name": "中央",
      "alpha": "z"
    },
    "MNG000049": {
      "name": "色楞格",
      "alpha": "s"
    },
    "MNG000051": {
      "name": "苏赫巴托尔",
      "alpha": "s"
    },
    "MNG000057": {
      "name": "扎布汗",
      "alpha": "z"
    },
    "MNG000059": {
      "name": "中戈壁",
      "alpha": "z"
    },
    "MNG000061": {
      "name": "东方",
      "alpha": "d"
    },
    "MNG000063": {
      "name": "东戈壁",
      "alpha": "d"
    },
    "MNG000064": {
      "name": "戈壁苏木贝尔",
      "alpha": "g"
    },
    "MNG000065": {
      "name": "戈壁阿尔泰",
      "alpha": "g"
    },
    "MNG000067": {
      "name": "布尔干",
      "alpha": "b"
    },
    "MNG000069": {
      "name": "巴彦洪格尔",
      "alpha": "b"
    },
    "MNG000071": {
      "name": "巴彦乌勒盖",
      "alpha": "b"
    },
    "MNG000073": {
      "name": "后杭爱",
      "alpha": "h"
    },
    "MNG000UMN": {
      "name": "南戈壁",
      "alpha": "n"
    },
    "MNG000UVO": {
      "name": "前杭爱",
      "alpha": "q"
    }
  },
  "MOZ": {},
  "MRT": {
    "MRT0000AD": {
      "name": "阿德拉尔",
      "alpha": "a"
    },
    "MRT0000AS": {
      "name": "阿萨巴",
      "alpha": "a"
    },
    "MRT0000BR": {
      "name": "卜拉克纳",
      "alpha": "b"
    },
    "MRT0000DN": {
      "name": "努瓦迪布湾",
      "alpha": "n"
    },
    "MRT0000GM": {
      "name": "吉迪马卡",
      "alpha": "j"
    },
    "MRT0000GO": {
      "name": "戈尔戈勒",
      "alpha": "g"
    },
    "MRT0000HC": {
      "name": "西胡德",
      "alpha": "x"
    },
    "MRT0000HG": {
      "name": "东胡德",
      "alpha": "d"
    },
    "MRT0000IN": {
      "name": "因希里",
      "alpha": "y"
    },
    "MRT0000NO": {
      "name": "努瓦克肖特特区",
      "alpha": "n"
    },
    "MRT0000TA": {
      "name": "塔甘特",
      "alpha": "t"
    },
    "MRT0000TR": {
      "name": "特拉扎",
      "alpha": "t"
    },
    "MRT0000TZ": {
      "name": "提里斯-宰穆尔",
      "alpha": "t"
    }
  },
  "MWI": {
    "MWI00000C": {
      "name": "中央区",
      "alpha": "z"
    },
    "MWI00000N": {
      "name": "北部区",
      "alpha": "b"
    },
    "MWI00000S": {
      "name": "南部区",
      "alpha": "n"
    }
  },
  "MYS": {
    "MYS0JHBAT": {
      "name": "峇株巴辖",
      "alpha": "z"
    },
    "MYS0JHJHB": {
      "name": "新山",
      "alpha": "x"
    },
    "MYS0JHKLA": {
      "name": "居銮",
      "alpha": "j"
    },
    "MYS0JHKTI": {
      "name": "哥打丁宜",
      "alpha": "g"
    },
    "MYS0JHMEP": {
      "name": "丰盛港",
      "alpha": "f"
    },
    "MYS0JHMUA": {
      "name": "麻坡",
      "alpha": "m"
    },
    "MYS0JHPOW": {
      "name": "笨珍",
      "alpha": "b"
    },
    "MYS0JHSGM": {
      "name": "昔加末",
      "alpha": "x"
    },
    "MYS0KDBLZ": {
      "name": "华玲",
      "alpha": "h"
    },
    "MYS0KDBMA": {
      "name": "万拉峇鲁",
      "alpha": "w"
    },
    "MYS0KDKLM": {
      "name": "居林",
      "alpha": "j"
    },
    "MYS0KDKMU": {
      "name": "瓜拉姆达",
      "alpha": "g"
    },
    "MYS0KDKOR": {
      "name": "哥打士打",
      "alpha": "g"
    },
    "MYS0KDKPA": {
      "name": "古邦巴素",
      "alpha": "g"
    },
    "MYS0KDLGK": {
      "name": "浮罗交怡",
      "alpha": "f"
    },
    "MYS0KDPEN": {
      "name": "笨筒",
      "alpha": "b"
    },
    "MYS0KDPGT": {
      "name": "巴东得腊",
      "alpha": "b"
    },
    "MYS0KLKUL": {
      "name": "吉隆坡",
      "alpha": "j"
    },
    "MYS0KNBAC": {
      "name": "登卓",
      "alpha": "d"
    },
    "MYS0KNGMU": {
      "name": "话望生",
      "alpha": "h"
    },
    "MYS0KNJEL": {
      "name": "日里",
      "alpha": "r"
    },
    "MYS0KNKBR": {
      "name": "哥打巴鲁",
      "alpha": "g"
    },
    "MYS0KNKUG": {
      "name": "瓜拉吉赖",
      "alpha": "g"
    },
    "MYS0KNMAC": {
      "name": "马樟",
      "alpha": "m"
    },
    "MYS0KNPMA": {
      "name": "巴西马",
      "alpha": "b"
    },
    "MYS0KNPPU": {
      "name": "巴西富地",
      "alpha": "b"
    },
    "MYS0KNTMR": {
      "name": "丹那美拉",
      "alpha": "d"
    },
    "MYS0KNTUM": {
      "name": "道北",
      "alpha": "d"
    },
    "MYS0LBLBU": {
      "name": "纳闽",
      "alpha": "n"
    },
    "MYS0LBVIC": {
      "name": "维多利亚",
      "alpha": "w"
    },
    "MYS0MLAOG": {
      "name": "亚罗牙也",
      "alpha": "y"
    },
    "MYS0MLJAS": {
      "name": "野新",
      "alpha": "y"
    },
    "MYS0MLMEL": {
      "name": "马六甲市",
      "alpha": "m"
    },
    "MYS0NSJEL": {
      "name": "日叻务",
      "alpha": "r"
    },
    "MYS0NSJEP": {
      "name": "仁保",
      "alpha": "r"
    },
    "MYS0NSKPI": {
      "name": "瓜拉庇劳",
      "alpha": "g"
    },
    "MYS0NSPDI": {
      "name": "波德申",
      "alpha": "b"
    },
    "MYS0NSREM": {
      "name": "林茂",
      "alpha": "l"
    },
    "MYS0NSSRB": {
      "name": "芙蓉",
      "alpha": "f"
    },
    "MYS0NSTAI": {
      "name": "淡边",
      "alpha": "d"
    },
    "MYS0PGBEN": {
      "name": "文冬",
      "alpha": "w"
    },
    "MYS0PGBER": {
      "name": "百乐",
      "alpha": "b"
    },
    "MYS0PGCAH": {
      "name": "金马仑高原",
      "alpha": "j"
    },
    "MYS0PGJER": {
      "name": "而连突",
      "alpha": "e"
    },
    "MYS0PGKUA": {
      "name": "关丹",
      "alpha": "g"
    },
    "MYS0PGKUL": {
      "name": "立卑",
      "alpha": "l"
    },
    "MYS0PGMAR": {
      "name": "马兰",
      "alpha": "m"
    },
    "MYS0PGPEK": {
      "name": "北根",
      "alpha": "b"
    },
    "MYS0PGRAU": {
      "name": "劳勿",
      "alpha": "l"
    },
    "MYS0PGTEM": {
      "name": "淡马鲁",
      "alpha": "d"
    },
    "MYS0PGTOM": {
      "name": "云冰",
      "alpha": "y"
    },
    "MYS0PHBMJ": {
      "name": "大山脚",
      "alpha": "d"
    },
    "MYS0PHBWH": {
      "name": "北海",
      "alpha": "b"
    },
    "MYS0PHNTE": {
      "name": "高渊",
      "alpha": "g"
    },
    "MYS0PHPEN": {
      "name": "槟城",
      "alpha": "b"
    },
    "MYS0PKBGA": {
      "name": "华都牙也",
      "alpha": "h"
    },
    "MYS0PKIPH": {
      "name": "怡保",
      "alpha": "y"
    },
    "MYS0PKKAR": {
      "name": "江沙",
      "alpha": "j"
    },
    "MYS0PKLUM": {
      "name": "紅土坎",
      "alpha": "t"
    },
    "MYS0PKSSP": {
      "name": "和丰",
      "alpha": "h"
    },
    "MYS0PKTAM": {
      "name": "丹绒马",
      "alpha": "d"
    },
    "MYS0PKTAS": {
      "name": "安顺",
      "alpha": "a"
    },
    "MYS0PKTPG": {
      "name": "太平",
      "alpha": "t"
    },
    "MYS0PSKGR": {
      "name": "加央",
      "alpha": "j"
    },
    "MYS0SBBEF": {
      "name": "保佛",
      "alpha": "b"
    },
    "MYS0SBBEL": {
      "name": "比鲁兰",
      "alpha": "b"
    },
    "MYS0SBBKI": {
      "name": "哥打基纳巴鲁",
      "alpha": "g"
    },
    "MYS0SBKBD": {
      "name": "古打毛律",
      "alpha": "g"
    },
    "MYS0SBKBT": {
      "name": "京那巴登岸",
      "alpha": "j"
    },
    "MYS0SBKEG": {
      "name": "根地咬",
      "alpha": "g"
    },
    "MYS0SBKMU": {
      "name": "哥打马鲁都",
      "alpha": "g"
    },
    "MYS0SBKPU": {
      "name": "瓜拉班尤",
      "alpha": "g"
    },
    "MYS0SBKUD": {
      "name": "古达",
      "alpha": "g"
    },
    "MYS0SBKUN": {
      "name": "古纳",
      "alpha": "g"
    },
    "MYS0SBLDU": {
      "name": "拿笃",
      "alpha": "n"
    },
    "MYS0SBNAB": {
      "name": "纳巴湾",
      "alpha": "n"
    },
    "MYS0SBPAP": {
      "name": "吧巴",
      "alpha": "b"
    },
    "MYS0SBPIT": {
      "name": "必达士",
      "alpha": "b"
    },
    "MYS0SBPMP": {
      "name": "兵南邦",
      "alpha": "b"
    },
    "MYS0SBRNU": {
      "name": "兰脑",
      "alpha": "l"
    },
    "MYS0SBSDK": {
      "name": "山打根",
      "alpha": "s"
    },
    "MYS0SBSMM": {
      "name": "仙本那",
      "alpha": "x"
    },
    "MYS0SBSPT": {
      "name": "西比陶",
      "alpha": "x"
    },
    "MYS0SBTAB": {
      "name": "担布南",
      "alpha": "d"
    },
    "MYS0SBTAW": {
      "name": "斗湖",
      "alpha": "d"
    },
    "MYS0SBTEN": {
      "name": "丹南",
      "alpha": "d"
    },
    "MYS0SBTUR": {
      "name": "斗亚兰",
      "alpha": "d"
    },
    "MYS0SLGOM": {
      "name": "鹅麦",
      "alpha": "e"
    },
    "MYS0SLHUL": {
      "name": "乌鲁冷岳",
      "alpha": "w"
    },
    "MYS0SLHUS": {
      "name": "乌鲁雪兰莪",
      "alpha": "w"
    },
    "MYS0SLKLG": {
      "name": "瓜拉冷岳",
      "alpha": "g"
    },
    "MYS0SLKSL": {
      "name": "瓜拉雪兰莪",
      "alpha": "g"
    },
    "MYS0SLPJA": {
      "name": "八打灵",
      "alpha": "b"
    },
    "MYS0SLSBM": {
      "name": "沙白安南",
      "alpha": "s"
    },
    "MYS0SLSEP": {
      "name": "雪邦",
      "alpha": "x"
    },
    "MYS0SRBTG": {
      "name": "木中",
      "alpha": "m"
    },
    "MYS0SRBTU": {
      "name": "民都鲁",
      "alpha": "m"
    },
    "MYS0SRKCH": {
      "name": "古晋",
      "alpha": "g"
    },
    "MYS0SRKPI": {
      "name": "加帛",
      "alpha": "j"
    },
    "MYS0SRLMN": {
      "name": "林梦",
      "alpha": "l"
    },
    "MYS0SRMKM": {
      "name": "木胶",
      "alpha": "m"
    },
    "MYS0SRMYY": {
      "name": "美里",
      "alpha": "m"
    },
    "MYS0SRSAM": {
      "name": "斯里阿曼",
      "alpha": "s"
    },
    "MYS0SRSAR": {
      "name": "泗里街",
      "alpha": "s"
    },
    "MYS0SRSBW": {
      "name": "泗务",
      "alpha": "s"
    },
    "MYS0SRSMH": {
      "name": "三马拉汉",
      "alpha": "s"
    },
    "MYS0TRBES": {
      "name": "勿述",
      "alpha": "w"
    },
    "MYS0TRDGN": {
      "name": "龙运",
      "alpha": "l"
    },
    "MYS0TRHUL": {
      "name": "乌鲁",
      "alpha": "w"
    },
    "MYS0TRKEM": {
      "name": "甘马挽",
      "alpha": "g"
    },
    "MYS0TRMAR": {
      "name": "马江",
      "alpha": "m"
    },
    "MYS0TRSET": {
      "name": "实兆",
      "alpha": "s"
    },
    "MYS0TRTGG": {
      "name": "瓜拉丁加奴",
      "alpha": "g"
    }
  },
  "NAM": {
    "NAM0000CA": {
      "name": "卡普里维",
      "alpha": "k"
    },
    "NAM0000ER": {
      "name": "埃龙戈",
      "alpha": "a"
    },
    "NAM0000HA": {
      "name": "哈达普",
      "alpha": "h"
    },
    "NAM0000KH": {
      "name": "霍马斯",
      "alpha": "h"
    },
    "NAM0000KR": {
      "name": "卡拉斯",
      "alpha": "k"
    },
    "NAM0000KU": {
      "name": "库内内",
      "alpha": "k"
    },
    "NAM0000KV": {
      "name": "奥卡万戈",
      "alpha": "a"
    },
    "NAM0000OJ": {
      "name": "奥乔宗蒂约巴",
      "alpha": "a"
    },
    "NAM0000OK": {
      "name": "奥马赫科",
      "alpha": "a"
    },
    "NAM0000ON": {
      "name": "奥沙纳",
      "alpha": "a"
    },
    "NAM0000OO": {
      "name": "奥希科托",
      "alpha": "a"
    },
    "NAM0000OT": {
      "name": "奥姆沙蒂",
      "alpha": "a"
    },
    "NAM0000OW": {
      "name": "奥汉圭纳",
      "alpha": "a"
    }
  },
  "NCL": {},
  "NER": {
    "NER000AJY": {
      "name": "阿加德兹",
      "alpha": "a"
    },
    "NER000DIF": {
      "name": "迪法",
      "alpha": "d"
    },
    "NER000DSS": {
      "name": "多索",
      "alpha": "d"
    },
    "NER000MFQ": {
      "name": "马拉迪",
      "alpha": "m"
    },
    "NER000NIM": {
      "name": "尼亚美市",
      "alpha": "n"
    },
    "NER000THZ": {
      "name": "塔瓦",
      "alpha": "t"
    },
    "NER000TIL": {
      "name": "蒂拉贝里",
      "alpha": "d"
    },
    "NER000ZND": {
      "name": "津德尔",
      "alpha": "j"
    }
  },
  "NGA": {
    "NGA000ABV": {
      "name": "阿比亚",
      "alpha": "a"
    },
    "NGA000IBA": {
      "name": "伊巴丹",
      "alpha": "y"
    },
    "NGA000KAN": {
      "name": "卡诺",
      "alpha": "k"
    },
    "NGA000LOS": {
      "name": "拉各斯",
      "alpha": "l"
    },
    "NGA000OGB": {
      "name": "奥博莫绍",
      "alpha": "a"
    }
  },
  "NIC": {
    "NIC0000AN": {
      "name": "北大西洋",
      "alpha": "b"
    },
    "NIC0000AS": {
      "name": "南大西洋",
      "alpha": "n"
    },
    "NIC0000BO": {
      "name": "博阿科",
      "alpha": "b"
    },
    "NIC0000CA": {
      "name": "卡拉索",
      "alpha": "k"
    },
    "NIC0000CD": {
      "name": "奇南德加",
      "alpha": "q"
    },
    "NIC0000CT": {
      "name": "琼塔莱斯",
      "alpha": "q"
    },
    "NIC0000ES": {
      "name": "埃斯特利",
      "alpha": "a"
    },
    "NIC0000GR": {
      "name": "格拉纳达",
      "alpha": "g"
    },
    "NIC0000JI": {
      "name": "希诺特加",
      "alpha": "x"
    },
    "NIC0000LE": {
      "name": "莱昂",
      "alpha": "l"
    },
    "NIC0000MD": {
      "name": "马德里斯",
      "alpha": "m"
    },
    "NIC0000MN": {
      "name": "马那瓜",
      "alpha": "m"
    },
    "NIC0000MS": {
      "name": "马萨亚",
      "alpha": "m"
    },
    "NIC0000MT": {
      "name": "马塔加尔帕",
      "alpha": "m"
    },
    "NIC0000NS": {
      "name": "新塞哥维亚",
      "alpha": "x"
    },
    "NIC0000RV": {
      "name": "里瓦斯",
      "alpha": "l"
    },
    "NIC0000SJ": {
      "name": "圣胡安河",
      "alpha": "s"
    }
  },
  "NLD": {
    "NLD000AER": {
      "name": "阿尔梅勒",
      "alpha": "a"
    },
    "NLD000AME": {
      "name": "阿默斯福特",
      "alpha": "a"
    },
    "NLD000AMS": {
      "name": "阿姆斯特丹",
      "alpha": "a"
    },
    "NLD000APE": {
      "name": "阿珀尔多伦",
      "alpha": "a"
    },
    "NLD000ARN": {
      "name": "阿纳姆",
      "alpha": "a"
    },
    "NLD000ASS": {
      "name": "阿森",
      "alpha": "a"
    },
    "NLD000BRD": {
      "name": "布雷达",
      "alpha": "b"
    },
    "NLD000DOR": {
      "name": "多德雷赫特",
      "alpha": "d"
    },
    "NLD000EDE": {
      "name": "埃德",
      "alpha": "a"
    },
    "NLD000EIN": {
      "name": "埃因霍芬",
      "alpha": "a"
    },
    "NLD000EMM": {
      "name": "埃门",
      "alpha": "a"
    },
    "NLD000ENS": {
      "name": "恩斯赫德",
      "alpha": "e"
    },
    "NLD000GRQ": {
      "name": "格罗宁根",
      "alpha": "g"
    },
    "NLD000HAG": {
      "name": "海牙",
      "alpha": "h"
    },
    "NLD000HFD": {
      "name": "霍夫多尔普",
      "alpha": "h"
    },
    "NLD000HRA": {
      "name": "哈勒姆",
      "alpha": "h"
    },
    "NLD000HTB": {
      "name": "斯海尔托亨博思",
      "alpha": "s"
    },
    "NLD000LEY": {
      "name": "莱利斯塔德",
      "alpha": "l"
    },
    "NLD000LID": {
      "name": "莱顿",
      "alpha": "l"
    },
    "NLD000LWR": {
      "name": "吕伐登",
      "alpha": "l"
    },
    "NLD000MDL": {
      "name": "米德尔堡",
      "alpha": "m"
    },
    "NLD000MST": {
      "name": "马斯特里赫特",
      "alpha": "m"
    },
    "NLD000NIJ": {
      "name": "奈梅亨",
      "alpha": "n"
    },
    "NLD000RTM": {
      "name": "鹿特丹",
      "alpha": "l"
    },
    "NLD000TLB": {
      "name": "蒂尔堡",
      "alpha": "d"
    },
    "NLD000UTC": {
      "name": "乌得勒支",
      "alpha": "w"
    },
    "NLD000ZTM": {
      "name": "佐特尔梅",
      "alpha": "z"
    },
    "NLD000ZWO": {
      "name": "兹沃勒",
      "alpha": "z"
    }
  },
  "NOR": {
    "NOR000001": {
      "name": "东福尔",
      "alpha": "d"
    },
    "NOR000002": {
      "name": "阿克什胡斯",
      "alpha": "a"
    },
    "NOR000003": {
      "name": "奥斯陆市",
      "alpha": "a"
    },
    "NOR000004": {
      "name": "海德马克",
      "alpha": "h"
    },
    "NOR000005": {
      "name": "奥普兰",
      "alpha": "a"
    },
    "NOR000006": {
      "name": "布斯克吕",
      "alpha": "b"
    },
    "NOR000007": {
      "name": "西福尔",
      "alpha": "x"
    },
    "NOR000008": {
      "name": "泰勒马克",
      "alpha": "t"
    },
    "NOR000009": {
      "name": "东阿格德尔",
      "alpha": "d"
    },
    "NOR000010": {
      "name": "西阿格德尔",
      "alpha": "x"
    },
    "NOR000011": {
      "name": "罗加兰",
      "alpha": "l"
    },
    "NOR000012": {
      "name": "霍达兰",
      "alpha": "h"
    },
    "NOR000014": {
      "name": "松恩－菲尤拉讷",
      "alpha": "s"
    },
    "NOR000015": {
      "name": "默勒－鲁姆斯达尔",
      "alpha": "m"
    },
    "NOR000016": {
      "name": "南特伦德拉格",
      "alpha": "n"
    },
    "NOR000017": {
      "name": "北特伦德拉格",
      "alpha": "b"
    },
    "NOR000018": {
      "name": "诺尔兰",
      "alpha": "n"
    },
    "NOR000019": {
      "name": "特罗姆斯",
      "alpha": "t"
    },
    "NOR000020": {
      "name": "芬马克",
      "alpha": "f"
    }
  },
  "NPL": {
    "NPL0000BA": {
      "name": "巴格马蒂",
      "alpha": "b"
    },
    "NPL0000BH": {
      "name": "佩里",
      "alpha": "p"
    },
    "NPL0000DH": {
      "name": "道拉吉里",
      "alpha": "d"
    },
    "NPL0000GA": {
      "name": "甘达基",
      "alpha": "g"
    },
    "NPL0000JA": {
      "name": "贾纳克布尔",
      "alpha": "j"
    },
    "NPL0000KA": {
      "name": "格尔纳利",
      "alpha": "g"
    },
    "NPL0000KO": {
      "name": "戈西",
      "alpha": "g"
    },
    "NPL0000LU": {
      "name": "蓝毗尼",
      "alpha": "l"
    },
    "NPL0000MA": {
      "name": "马哈卡利",
      "alpha": "m"
    },
    "NPL0000ME": {
      "name": "梅吉",
      "alpha": "m"
    },
    "NPL0000NA": {
      "name": "纳拉亚尼",
      "alpha": "n"
    },
    "NPL0000RA": {
      "name": "拉布蒂",
      "alpha": "l"
    },
    "NPL0000SA": {
      "name": "萨加玛塔",
      "alpha": "s"
    },
    "NPL0000SE": {
      "name": "塞蒂",
      "alpha": "s"
    }
  },
  "NZL": {
    "NZL000AUK": {
      "name": "奥克兰",
      "alpha": "a"
    },
    "NZL000BHE": {
      "name": "布莱尼姆",
      "alpha": "b"
    },
    "NZL000CHC": {
      "name": "克赖斯特彻奇",
      "alpha": "k"
    },
    "NZL000DUD": {
      "name": "达尼丁",
      "alpha": "d"
    },
    "NZL000FNR": {
      "name": "北远",
      "alpha": "b"
    },
    "NZL000GIS": {
      "name": "吉斯伯恩",
      "alpha": "j"
    },
    "NZL000GMN": {
      "name": "格雷茅斯",
      "alpha": "g"
    },
    "NZL000HAS": {
      "name": "黑斯廷斯",
      "alpha": "h"
    },
    "NZL000HLZ": {
      "name": "哈密尔顿",
      "alpha": "h"
    },
    "NZL000IVC": {
      "name": "因弗卡吉尔",
      "alpha": "y"
    },
    "NZL000KAI": {
      "name": "凯帕拉",
      "alpha": "k"
    },
    "NZL000MNK": {
      "name": "马努考",
      "alpha": "m"
    },
    "NZL000NPE": {
      "name": "内皮尔",
      "alpha": "n"
    },
    "NZL000NPL": {
      "name": "新普利茅斯",
      "alpha": "x"
    },
    "NZL000NSH": {
      "name": "北岸",
      "alpha": "b"
    },
    "NZL000NSN": {
      "name": "纳尔逊",
      "alpha": "n"
    },
    "NZL000PMR": {
      "name": "北帕默斯顿",
      "alpha": "b"
    },
    "NZL000RMD": {
      "name": "里士满",
      "alpha": "l"
    },
    "NZL000STR": {
      "name": "斯特拉特福德",
      "alpha": "s"
    },
    "NZL000TAU": {
      "name": "陶马鲁努伊",
      "alpha": "t"
    },
    "NZL000WAE": {
      "name": "怀塔科拉",
      "alpha": "h"
    },
    "NZL000WAG": {
      "name": "旺格努伊",
      "alpha": "w"
    },
    "NZL000WHK": {
      "name": "瓦卡塔尼",
      "alpha": "w"
    },
    "NZL000WRE": {
      "name": "旺阿雷",
      "alpha": "w"
    }
  },
  "OMN": {
    "OMN0000BA": {
      "name": "巴提奈地区",
      "alpha": "b"
    },
    "OMN0000DA": {
      "name": "内地地区",
      "alpha": "n"
    },
    "OMN0000MA": {
      "name": "马斯喀特省",
      "alpha": "m"
    },
    "OMN0000MU": {
      "name": "穆桑达姆省",
      "alpha": "m"
    },
    "OMN0000SH": {
      "name": "东部地区",
      "alpha": "d"
    },
    "OMN0000WU": {
      "name": "中部地区",
      "alpha": "z"
    },
    "OMN0000ZA": {
      "name": "达希莱地区",
      "alpha": "d"
    },
    "OMN0000ZU": {
      "name": "佐法尔省",
      "alpha": "z"
    }
  },
  "PAK": {
    "PAK000GUJ": {
      "name": "故吉软瓦拉",
      "alpha": "g"
    },
    "PAK000HDD": {
      "name": "海德拉巴",
      "alpha": "h"
    },
    "PAK000ISB": {
      "name": "伊斯兰堡",
      "alpha": "y"
    },
    "PAK000KCT": {
      "name": "卡拉奇",
      "alpha": "k"
    },
    "PAK000LHE": {
      "name": "拉合尔",
      "alpha": "l"
    },
    "PAK000LYP": {
      "name": "费萨拉巴德",
      "alpha": "f"
    },
    "PAK000MUX": {
      "name": "木尔坦",
      "alpha": "m"
    },
    "PAK000PEW": {
      "name": "白沙瓦",
      "alpha": "b"
    },
    "PAK000RWP": {
      "name": "拉瓦尔品第",
      "alpha": "l"
    }
  },
  "PAN": {},
  "PER": {
    "PER0000AM": {
      "name": "亚马孙",
      "alpha": "y"
    },
    "PER0000AN": {
      "name": "安卡什",
      "alpha": "a"
    },
    "PER0000AP": {
      "name": "阿普里马克",
      "alpha": "a"
    },
    "PER0000AR": {
      "name": "阿雷基帕",
      "alpha": "a"
    },
    "PER0000AY": {
      "name": "阿亚库乔",
      "alpha": "a"
    },
    "PER0000CJ": {
      "name": "卡哈马卡",
      "alpha": "k"
    },
    "PER0000CL": {
      "name": "卡亚俄",
      "alpha": "k"
    },
    "PER0000CU": {
      "name": "库斯科",
      "alpha": "k"
    },
    "PER0000HO": {
      "name": "瓦努科",
      "alpha": "w"
    },
    "PER0000HV": {
      "name": "万卡维利卡",
      "alpha": "w"
    },
    "PER0000IC": {
      "name": "伊卡",
      "alpha": "y"
    },
    "PER0000JU": {
      "name": "胡宁",
      "alpha": "h"
    },
    "PER0000LD": {
      "name": "拉利伯塔德",
      "alpha": "l"
    },
    "PER0000LI": {
      "name": "利马",
      "alpha": "l"
    },
    "PER0000LO": {
      "name": "洛雷托",
      "alpha": "l"
    },
    "PER0000LY": {
      "name": "兰巴耶克",
      "alpha": "l"
    },
    "PER0000MD": {
      "name": "马德雷德迪奥斯",
      "alpha": "m"
    },
    "PER0000MO": {
      "name": "莫克瓜",
      "alpha": "m"
    },
    "PER0000PA": {
      "name": "帕斯科",
      "alpha": "p"
    },
    "PER0000PI": {
      "name": "皮乌拉",
      "alpha": "p"
    },
    "PER0000PU": {
      "name": "普诺",
      "alpha": "p"
    },
    "PER0000SM": {
      "name": "圣马丁",
      "alpha": "s"
    },
    "PER0000TA": {
      "name": "塔克纳",
      "alpha": "t"
    },
    "PER0000TU": {
      "name": "通贝斯",
      "alpha": "t"
    },
    "PER0000UC": {
      "name": "乌卡亚利",
      "alpha": "w"
    },
    "PER000CHI": {
      "name": "钦查阿尔塔",
      "alpha": "q"
    },
    "PER000CHM": {
      "name": "钦博特",
      "alpha": "q"
    },
    "PER000JUL": {
      "name": "胡利亚卡",
      "alpha": "h"
    },
    "PER000SUL": {
      "name": "苏拉纳",
      "alpha": "s"
    }
  },
  "PHL": {
    "PHL000CAO": {
      "name": "卡卢坎",
      "alpha": "k"
    },
    "PHL000CEB": {
      "name": "宿务",
      "alpha": "s"
    },
    "PHL000DOR": {
      "name": "达沃",
      "alpha": "d"
    },
    "PHL000MNL": {
      "name": "马尼拉",
      "alpha": "m"
    }
  },
  "PNG": {
    "PNG0000BV": {
      "name": "布干维尔",
      "alpha": "b"
    },
    "PNG0000EB": {
      "name": "东新不列颠",
      "alpha": "d"
    },
    "PNG0000EH": {
      "name": "东部高地",
      "alpha": "d"
    },
    "PNG0000EN": {
      "name": "恩加",
      "alpha": "e"
    },
    "PNG0000ES": {
      "name": "东塞皮克",
      "alpha": "d"
    },
    "PNG0000GU": {
      "name": "海湾",
      "alpha": "h"
    },
    "PNG0000MB": {
      "name": "米尔恩湾",
      "alpha": "m"
    },
    "PNG0000MD": {
      "name": "马当",
      "alpha": "m"
    },
    "PNG0000MN": {
      "name": "马努斯",
      "alpha": "m"
    },
    "PNG0000MR": {
      "name": "莫罗贝",
      "alpha": "m"
    },
    "PNG0000NC": {
      "name": "莫尔兹比港",
      "alpha": "m"
    },
    "PNG0000NI": {
      "name": "新爱尔兰",
      "alpha": "x"
    },
    "PNG0000NO": {
      "name": "北部",
      "alpha": "b"
    },
    "PNG0000SA": {
      "name": "桑道恩",
      "alpha": "s"
    },
    "PNG0000SH": {
      "name": "南部高地",
      "alpha": "n"
    },
    "PNG0000SI": {
      "name": "钦布",
      "alpha": "q"
    },
    "PNG0000WB": {
      "name": "西新不列颠",
      "alpha": "x"
    },
    "PNG0000WE": {
      "name": "西部",
      "alpha": "x"
    },
    "PNG0000WH": {
      "name": "西部高地",
      "alpha": "x"
    }
  },
  "POL": {
    "POL000BAP": {
      "name": "比亚瓦波德拉斯卡",
      "alpha": "b"
    },
    "POL000BIA": {
      "name": "比亚维斯托克",
      "alpha": "b"
    },
    "POL000BYT": {
      "name": "比托姆",
      "alpha": "b"
    },
    "POL000BZG": {
      "name": "比得哥什",
      "alpha": "b"
    },
    "POL000CHO": {
      "name": "海乌姆",
      "alpha": "h"
    },
    "POL000CHZ": {
      "name": "霍茹夫",
      "alpha": "h"
    },
    "POL000CIE": {
      "name": "切哈努夫",
      "alpha": "q"
    },
    "POL000DAB": {
      "name": "达布罗瓦戈尼察",
      "alpha": "d"
    },
    "POL000ELB": {
      "name": "埃尔布隆格",
      "alpha": "a"
    },
    "POL000GDN": {
      "name": "格但斯克",
      "alpha": "g"
    },
    "POL000GDY": {
      "name": "格丁尼亚",
      "alpha": "g"
    },
    "POL000GOW": {
      "name": "大波兰地区戈茹夫",
      "alpha": "d"
    },
    "POL000GRU": {
      "name": "格鲁琼兹",
      "alpha": "g"
    },
    "POL000GWC": {
      "name": "格利维采",
      "alpha": "g"
    },
    "POL000IEG": {
      "name": "绿山城",
      "alpha": "l"
    },
    "POL000JAW": {
      "name": "雅沃兹诺",
      "alpha": "y"
    },
    "POL000JEG": {
      "name": "耶莱尼亚古拉",
      "alpha": "y"
    },
    "POL000KAL": {
      "name": "卡利什",
      "alpha": "k"
    },
    "POL000KLC": {
      "name": "凯尔采",
      "alpha": "k"
    },
    "POL000KON": {
      "name": "科宁",
      "alpha": "k"
    },
    "POL000KRK": {
      "name": "克拉科夫",
      "alpha": "k"
    },
    "POL000KRO": {
      "name": "克罗斯诺",
      "alpha": "k"
    },
    "POL000KTW": {
      "name": "卡托维兹",
      "alpha": "k"
    },
    "POL000LEG": {
      "name": "莱格尼察",
      "alpha": "l"
    },
    "POL000LEZ": {
      "name": "莱什诺",
      "alpha": "l"
    },
    "POL000LOD": {
      "name": "罗兹",
      "alpha": "l"
    },
    "POL000LUL": {
      "name": "卢布林",
      "alpha": "l"
    },
    "POL000MYL": {
      "name": "米什洛维采",
      "alpha": "m"
    },
    "POL000NOW": {
      "name": "新松奇",
      "alpha": "x"
    },
    "POL000OLS": {
      "name": "奥尔什丁",
      "alpha": "a"
    },
    "POL000OPO": {
      "name": "波莱",
      "alpha": "b"
    },
    "POL000OSS": {
      "name": "奥斯特罗文卡",
      "alpha": "a"
    },
    "POL000OSZ": {
      "name": "科沙林",
      "alpha": "k"
    },
    "POL000PIL": {
      "name": "皮瓦",
      "alpha": "p"
    },
    "POL000PIO": {
      "name": "彼得库夫",
      "alpha": "b"
    },
    "POL000PLO": {
      "name": "普沃茨克",
      "alpha": "p"
    },
    "POL000POZ": {
      "name": "波兹南",
      "alpha": "b"
    },
    "POL000PRZ": {
      "name": "普热梅希尔",
      "alpha": "p"
    },
    "POL000QEP": {
      "name": "塔尔诺布热格",
      "alpha": "t"
    },
    "POL000QOY": {
      "name": "沃姆扎",
      "alpha": "w"
    },
    "POL000RDM": {
      "name": "拉多姆",
      "alpha": "l"
    },
    "POL000RDS": {
      "name": "鲁达",
      "alpha": "l"
    },
    "POL000RZE": {
      "name": "热舒夫",
      "alpha": "r"
    },
    "POL000SDC": {
      "name": "谢德尔采",
      "alpha": "x"
    },
    "POL000SIR": {
      "name": "谢拉兹",
      "alpha": "x"
    },
    "POL000SKI": {
      "name": "斯凯尔涅维采",
      "alpha": "s"
    },
    "POL000SLP": {
      "name": "斯武普斯克",
      "alpha": "s"
    },
    "POL000SOP": {
      "name": "索波特",
      "alpha": "s"
    },
    "POL000SOW": {
      "name": "希米亚诺维采",
      "alpha": "x"
    },
    "POL000SWC": {
      "name": "索斯诺维茨",
      "alpha": "s"
    },
    "POL000SWI": {
      "name": "希维诺乌伊希切",
      "alpha": "x"
    },
    "POL000SWL": {
      "name": "苏瓦乌基",
      "alpha": "s"
    },
    "POL000SWT": {
      "name": "希维托赫洛维采",
      "alpha": "x"
    },
    "POL000SZZ": {
      "name": "什切青",
      "alpha": "s"
    },
    "POL000TAR": {
      "name": "塔尔努夫",
      "alpha": "t"
    },
    "POL000TOR": {
      "name": "托伦",
      "alpha": "t"
    },
    "POL000TYY": {
      "name": "特切",
      "alpha": "t"
    },
    "POL000WAW": {
      "name": "华沙",
      "alpha": "h"
    },
    "POL000WLO": {
      "name": "弗沃茨瓦韦克",
      "alpha": "f"
    },
    "POL000WRO": {
      "name": "弗罗茨瓦夫",
      "alpha": "f"
    },
    "POL000WZH": {
      "name": "瓦乌布日赫",
      "alpha": "w"
    },
    "POL000ZAB": {
      "name": "扎布热",
      "alpha": "z"
    },
    "POL000ZAM": {
      "name": "扎莫希奇",
      "alpha": "z"
    }
  },
  "PRI": {},
  "PRK": {
    "PRK000CHO": {
      "name": "清津",
      "alpha": "q"
    },
    "PRK000FNJ": {
      "name": "平壤",
      "alpha": "p"
    },
    "PRK000HAE": {
      "name": "海州",
      "alpha": "h"
    },
    "PRK000HAM": {
      "name": "咸兴",
      "alpha": "x"
    },
    "PRK000HYE": {
      "name": "惠山",
      "alpha": "h"
    },
    "PRK000KAN": {
      "name": "江界",
      "alpha": "j"
    },
    "PRK000KSN": {
      "name": "开城",
      "alpha": "k"
    },
    "PRK000NAM": {
      "name": "南浦",
      "alpha": "n"
    },
    "PRK000NAS": {
      "name": "罗先",
      "alpha": "l"
    },
    "PRK000SAR": {
      "name": "沙里院",
      "alpha": "s"
    },
    "PRK000SII": {
      "name": "新义州",
      "alpha": "x"
    },
    "PRK000WON": {
      "name": "元山",
      "alpha": "y"
    }
  },
  "PRT": {
    "PRT000AAT": {
      "name": "上阿连特茹",
      "alpha": "s"
    },
    "PRT000AES": {
      "name": "万福",
      "alpha": "w"
    },
    "PRT000ALC": {
      "name": "中阿连特茹",
      "alpha": "z"
    },
    "PRT000ALL": {
      "name": "滨海阿连特茹",
      "alpha": "b"
    },
    "PRT000ATM": {
      "name": "上特拉斯山",
      "alpha": "s"
    },
    "PRT000BAL": {
      "name": "下阿连特茹",
      "alpha": "x"
    },
    "PRT000BIN": {
      "name": "内贝拉北",
      "alpha": "n"
    },
    "PRT000BIS": {
      "name": "内贝拉南",
      "alpha": "n"
    },
    "PRT000BMO": {
      "name": "下蒙德古",
      "alpha": "x"
    },
    "PRT000BVO": {
      "name": "下伏日",
      "alpha": "x"
    },
    "PRT000CAV": {
      "name": "卡瓦多",
      "alpha": "k"
    },
    "PRT000CLB": {
      "name": "科瓦贝拉",
      "alpha": "k"
    },
    "PRT000EDV": {
      "name": "恩特拉杜罗伏日",
      "alpha": "e"
    },
    "PRT000FAO": {
      "name": "法鲁",
      "alpha": "f"
    },
    "PRT000FUN": {
      "name": "丰沙尔",
      "alpha": "f"
    },
    "PRT000LIS": {
      "name": "里斯本",
      "alpha": "l"
    },
    "PRT000LTE": {
      "name": "利巴特茹",
      "alpha": "l"
    },
    "PRT000MDR": {
      "name": "杜罗",
      "alpha": "d"
    },
    "PRT000MLI": {
      "name": "米尼奥-利马",
      "alpha": "m"
    },
    "PRT000MTE": {
      "name": "梅地奥特茹",
      "alpha": "m"
    },
    "PRT000OES": {
      "name": "西部",
      "alpha": "x"
    },
    "PRT000PDL": {
      "name": "蓬塔德尔加达",
      "alpha": "p"
    },
    "PRT000PIN": {
      "name": "内皮尼亚尔北",
      "alpha": "n"
    },
    "PRT000PIS": {
      "name": "内皮尼亚尔南",
      "alpha": "n"
    },
    "PRT000PLT": {
      "name": "滨海皮尼亚尔",
      "alpha": "b"
    },
    "PRT000PSE": {
      "name": "塞图巴尔半岛",
      "alpha": "s"
    },
    "PRT000SES": {
      "name": "山后",
      "alpha": "s"
    },
    "PRT000TAM": {
      "name": "塔梅加",
      "alpha": "t"
    },
    "PRT000VDP": {
      "name": "波尔图",
      "alpha": "b"
    }
  },
  "PRY": {
    "PRY0000AG": {
      "name": "上巴拉圭",
      "alpha": "s"
    },
    "PRY0000AM": {
      "name": "阿曼拜",
      "alpha": "a"
    },
    "PRY0000AN": {
      "name": "上巴拉那",
      "alpha": "s"
    },
    "PRY0000AS": {
      "name": "亚松森特别区",
      "alpha": "y"
    },
    "PRY0000BO": {
      "name": "博克龙",
      "alpha": "b"
    },
    "PRY0000CC": {
      "name": "康塞普西翁",
      "alpha": "k"
    },
    "PRY0000CD": {
      "name": "科迪勒拉",
      "alpha": "k"
    },
    "PRY0000CE": {
      "name": "中央",
      "alpha": "z"
    },
    "PRY0000CG": {
      "name": "卡瓜苏",
      "alpha": "k"
    },
    "PRY0000CN": {
      "name": "卡嫩迪尤",
      "alpha": "k"
    },
    "PRY0000CZ": {
      "name": "卡萨帕",
      "alpha": "k"
    },
    "PRY0000GU": {
      "name": "瓜伊拉",
      "alpha": "g"
    },
    "PRY0000IT": {
      "name": "伊塔普亚",
      "alpha": "y"
    },
    "PRY0000MI": {
      "name": "米西奥内斯",
      "alpha": "m"
    },
    "PRY0000NE": {
      "name": "涅恩布库",
      "alpha": "n"
    },
    "PRY0000PA": {
      "name": "巴拉瓜里",
      "alpha": "b"
    },
    "PRY0000PH": {
      "name": "阿耶斯总统省",
      "alpha": "a"
    },
    "PRY0000SP": {
      "name": "圣佩德罗",
      "alpha": "s"
    }
  },
  "QAT": {
    "QAT0000DW": {
      "name": "多哈",
      "alpha": "d"
    },
    "QAT0000GW": {
      "name": "古韦里耶",
      "alpha": "g"
    },
    "QAT0000JB": {
      "name": "杰里扬拜特奈",
      "alpha": "j"
    },
    "QAT0000JM": {
      "name": "朱迈利耶",
      "alpha": "z"
    },
    "QAT0000KR": {
      "name": "豪尔",
      "alpha": "h"
    },
    "QAT0000MS": {
      "name": "北部",
      "alpha": "b"
    },
    "QAT0000RN": {
      "name": "赖扬",
      "alpha": "l"
    },
    "QAT0000UL": {
      "name": "乌姆锡拉勒",
      "alpha": "w"
    },
    "QAT0000WK": {
      "name": "沃克拉",
      "alpha": "w"
    }
  },
  "ROU": {
    "ROU0000AD": {
      "name": "亚厉山德里亚",
      "alpha": "y"
    },
    "ROU0000AL": {
      "name": "阿尔巴尤利亚",
      "alpha": "a"
    },
    "ROU0000AR": {
      "name": "阿拉德",
      "alpha": "a"
    },
    "ROU0000BA": {
      "name": "巴克乌",
      "alpha": "b"
    },
    "ROU0000BC": {
      "name": "布加勒斯特",
      "alpha": "b"
    },
    "ROU0000BL": {
      "name": "布勒伊拉",
      "alpha": "b"
    },
    "ROU0000BM": {
      "name": "巴亚马雷",
      "alpha": "b"
    },
    "ROU0000BN": {
      "name": "比斯特里察",
      "alpha": "b"
    },
    "ROU0000BO": {
      "name": "博托沙尼",
      "alpha": "b"
    },
    "ROU0000BS": {
      "name": "布拉索夫",
      "alpha": "b"
    },
    "ROU0000BZ": {
      "name": "布泽乌",
      "alpha": "b"
    },
    "ROU0000CN": {
      "name": "克卢日纳波卡",
      "alpha": "k"
    },
    "ROU0000CR": {
      "name": "克勒拉希",
      "alpha": "k"
    },
    "ROU0000CT": {
      "name": "康斯坦察",
      "alpha": "k"
    },
    "ROU0000DE": {
      "name": "德瓦",
      "alpha": "d"
    },
    "ROU0000DO": {
      "name": "克拉约瓦",
      "alpha": "k"
    },
    "ROU0000DT": {
      "name": "德罗贝塔-塞维林堡",
      "alpha": "d"
    },
    "ROU0000FO": {
      "name": "福克沙尼",
      "alpha": "f"
    },
    "ROU0000GG": {
      "name": "久尔久",
      "alpha": "j"
    },
    "ROU0000GL": {
      "name": "加拉茨",
      "alpha": "j"
    },
    "ROU0000IS": {
      "name": "雅西",
      "alpha": "y"
    },
    "ROU0000MC": {
      "name": "梅尔库里亚丘克",
      "alpha": "m"
    },
    "ROU0000OR": {
      "name": "奥拉迪亚",
      "alpha": "a"
    },
    "ROU0000PI": {
      "name": "皮特什蒂",
      "alpha": "p"
    },
    "ROU0000PL": {
      "name": "普洛耶什蒂",
      "alpha": "p"
    },
    "ROU0000PN": {
      "name": "皮亚特拉尼亚姆茨",
      "alpha": "p"
    },
    "ROU0000RE": {
      "name": "雷希察",
      "alpha": "l"
    },
    "ROU0000SB": {
      "name": "斯洛博齐亚",
      "alpha": "s"
    },
    "ROU0000SG": {
      "name": "圣格奥尔基",
      "alpha": "s"
    },
    "ROU0000SM": {
      "name": "萨图·马雷",
      "alpha": "s"
    },
    "ROU0000SO": {
      "name": "锡比乌",
      "alpha": "x"
    },
    "ROU0000ST": {
      "name": "斯拉蒂纳",
      "alpha": "s"
    },
    "ROU0000SU": {
      "name": "苏恰瓦",
      "alpha": "s"
    },
    "ROU0000TA": {
      "name": "特尔戈维什泰",
      "alpha": "t"
    },
    "ROU0000TI": {
      "name": "蒂米什瓦拉",
      "alpha": "d"
    },
    "ROU0000TJ": {
      "name": "特尔古日乌",
      "alpha": "t"
    },
    "ROU0000TM": {
      "name": "特尔古穆列什",
      "alpha": "t"
    },
    "ROU0000TU": {
      "name": "图尔恰",
      "alpha": "t"
    },
    "ROU0000VA": {
      "name": "瓦斯卢伊",
      "alpha": "w"
    },
    "ROU0000VI": {
      "name": "勒姆尼库沃尔恰",
      "alpha": "l"
    },
    "ROU0000ZA": {
      "name": "扎勒乌",
      "alpha": "z"
    }
  },
  "RUS": {
    "RUS0000IN": {
      "name": "马加斯",
      "alpha": "m"
    },
    "RUS000ABA": {
      "name": "阿巴坎",
      "alpha": "a"
    },
    "RUS000AGI": {
      "name": "阿金斯科耶",
      "alpha": "a"
    },
    "RUS000ARK": {
      "name": "阿尔汉格尔斯克",
      "alpha": "a"
    },
    "RUS000AST": {
      "name": "阿斯特拉罕",
      "alpha": "a"
    },
    "RUS000BAX": {
      "name": "巴尔瑙尔",
      "alpha": "b"
    },
    "RUS000BBZ": {
      "name": "比罗比詹",
      "alpha": "b"
    },
    "RUS000BEL": {
      "name": "别尔哥罗德",
      "alpha": "b"
    },
    "RUS000BQS": {
      "name": "布拉戈维申斯克",
      "alpha": "b"
    },
    "RUS000BRY": {
      "name": "布良斯克",
      "alpha": "b"
    },
    "RUS000CHE": {
      "name": "车里雅宾斯克",
      "alpha": "c"
    },
    "RUS000CHI": {
      "name": "赤塔",
      "alpha": "c"
    },
    "RUS000CKS": {
      "name": "切尔克斯克",
      "alpha": "q"
    },
    "RUS000COK": {
      "name": "伯力",
      "alpha": "b"
    },
    "RUS000CSY": {
      "name": "切博克萨雷",
      "alpha": "q"
    },
    "RUS000DYR": {
      "name": "阿纳德尔",
      "alpha": "a"
    },
    "RUS000ESL": {
      "name": "埃利斯塔",
      "alpha": "a"
    },
    "RUS000GOA": {
      "name": "戈尔诺－阿尔泰斯克",
      "alpha": "g"
    },
    "RUS000GOJ": {
      "name": "下诺夫哥罗德",
      "alpha": "x"
    },
    "RUS000GRV": {
      "name": "格罗兹尼",
      "alpha": "g"
    },
    "RUS000IJK": {
      "name": "伊热夫斯克",
      "alpha": "y"
    },
    "RUS000IKT": {
      "name": "伊尔库茨克",
      "alpha": "y"
    },
    "RUS000IVO": {
      "name": "伊万诺沃",
      "alpha": "y"
    },
    "RUS000JAK": {
      "name": "雅库茨克",
      "alpha": "y"
    },
    "RUS000JAR": {
      "name": "雅罗斯拉夫尔",
      "alpha": "y"
    },
    "RUS000JEK": {
      "name": "叶卡捷林堡",
      "alpha": "y"
    },
    "RUS000JSA": {
      "name": "南萨哈林斯克",
      "alpha": "n"
    },
    "RUS000KEM": {
      "name": "克麦罗沃",
      "alpha": "k"
    },
    "RUS000KGD": {
      "name": "加里宁格勒",
      "alpha": "j"
    },
    "RUS000KHM": {
      "name": "汉特－曼西斯克",
      "alpha": "h"
    },
    "RUS000KIR": {
      "name": "基洛夫",
      "alpha": "j"
    },
    "RUS000KLF": {
      "name": "卡卢加",
      "alpha": "k"
    },
    "RUS000KOS": {
      "name": "科斯特罗马",
      "alpha": "k"
    },
    "RUS000KRO": {
      "name": "库尔干",
      "alpha": "k"
    },
    "RUS000KRR": {
      "name": "克拉斯诺达尔",
      "alpha": "k"
    },
    "RUS000KUD": {
      "name": "库德姆卡尔",
      "alpha": "k"
    },
    "RUS000KYA": {
      "name": "克拉斯诺亚尔斯克",
      "alpha": "k"
    },
    "RUS000KYZ": {
      "name": "克孜勒",
      "alpha": "k"
    },
    "RUS000KZN": {
      "name": "喀山",
      "alpha": "k"
    },
    "RUS000LIP": {
      "name": "利佩茨克",
      "alpha": "l"
    },
    "RUS000LNX": {
      "name": "斯摩棱斯克",
      "alpha": "s"
    },
    "RUS000MAG": {
      "name": "马加丹",
      "alpha": "m"
    },
    "RUS000MAY": {
      "name": "迈科普",
      "alpha": "m"
    },
    "RUS000MCX": {
      "name": "马哈奇卡拉",
      "alpha": "m"
    },
    "RUS000MMK": {
      "name": "摩尔曼斯克",
      "alpha": "m"
    },
    "RUS000MOW": {
      "name": "莫斯科",
      "alpha": "m"
    },
    "RUS000NAL": {
      "name": "纳尔奇克",
      "alpha": "n"
    },
    "RUS000NNM": {
      "name": "纳里扬马尔",
      "alpha": "n"
    },
    "RUS000NVS": {
      "name": "新西伯利亚",
      "alpha": "x"
    },
    "RUS000OMS": {
      "name": "鄂木斯克",
      "alpha": "e"
    },
    "RUS000ORE": {
      "name": "奥伦堡",
      "alpha": "a"
    },
    "RUS000ORL": {
      "name": "奥廖尔",
      "alpha": "a"
    },
    "RUS000PAL": {
      "name": "帕拉纳",
      "alpha": "p"
    },
    "RUS000PER": {
      "name": "彼尔姆",
      "alpha": "b"
    },
    "RUS000PES": {
      "name": "彼得罗扎沃茨克",
      "alpha": "b"
    },
    "RUS000PKC": {
      "name": "彼得罗巴甫洛夫斯克",
      "alpha": "b"
    },
    "RUS000PNZ": {
      "name": "奔萨",
      "alpha": "b"
    },
    "RUS000PSK": {
      "name": "普斯科夫",
      "alpha": "p"
    },
    "RUS000ROS": {
      "name": "顿河畔罗斯托夫",
      "alpha": "d"
    },
    "RUS000RYA": {
      "name": "梁赞",
      "alpha": "l"
    },
    "RUS000SAM": {
      "name": "萨马拉",
      "alpha": "s"
    },
    "RUS000SAR": {
      "name": "萨拉托夫",
      "alpha": "s"
    },
    "RUS000SCW": {
      "name": "瑟克特夫卡尔",
      "alpha": "s"
    },
    "RUS000SKX": {
      "name": "萨兰斯克",
      "alpha": "s"
    },
    "RUS000SLY": {
      "name": "萨列哈尔德",
      "alpha": "s"
    },
    "RUS000SPE": {
      "name": "圣彼得堡",
      "alpha": "s"
    },
    "RUS000STA": {
      "name": "斯塔夫罗波尔",
      "alpha": "s"
    },
    "RUS000TAM": {
      "name": "坦波夫",
      "alpha": "t"
    },
    "RUS000TOM": {
      "name": "托木斯克",
      "alpha": "t"
    },
    "RUS000TUL": {
      "name": "图拉",
      "alpha": "t"
    },
    "RUS000TVE": {
      "name": "特维尔",
      "alpha": "t"
    },
    "RUS000TYU": {
      "name": "秋明",
      "alpha": "q"
    },
    "RUS000UFA": {
      "name": "乌法",
      "alpha": "w"
    },
    "RUS000ULY": {
      "name": "乌里扬诺夫斯克",
      "alpha": "w"
    },
    "RUS000UOB": {
      "name": "乌斯季奥尔登斯基",
      "alpha": "w"
    },
    "RUS000URS": {
      "name": "库尔斯克",
      "alpha": "k"
    },
    "RUS000UUD": {
      "name": "乌兰乌德",
      "alpha": "w"
    },
    "RUS000VLA": {
      "name": "弗拉季高加索",
      "alpha": "f"
    },
    "RUS000VLG": {
      "name": "沃洛格达",
      "alpha": "w"
    },
    "RUS000VMR": {
      "name": "弗拉基米尔",
      "alpha": "f"
    },
    "RUS000VOG": {
      "name": "伏尔加格勒",
      "alpha": "f"
    },
    "RUS000VOR": {
      "name": "沃罗涅什",
      "alpha": "w"
    },
    "RUS000VUS": {
      "name": "诺夫哥罗德",
      "alpha": "n"
    },
    "RUS000VVO": {
      "name": "海参崴",
      "alpha": "h"
    },
    "RUS000YOL": {
      "name": "约什卡尔奥拉",
      "alpha": "y"
    }
  },
  "RWA": {
    "RWA0000BU": {
      "name": "布塔雷",
      "alpha": "b"
    },
    "RWA0000BY": {
      "name": "比温巴",
      "alpha": "b"
    },
    "RWA0000CY": {
      "name": "尚古古",
      "alpha": "s"
    },
    "RWA0000GK": {
      "name": "吉孔戈罗",
      "alpha": "j"
    },
    "RWA0000GS": {
      "name": "吉塞尼",
      "alpha": "j"
    },
    "RWA0000GT": {
      "name": "吉塔拉马",
      "alpha": "j"
    },
    "RWA0000KA": {
      "name": "卡布加",
      "alpha": "k"
    },
    "RWA0000KG": {
      "name": "基本古",
      "alpha": "j"
    },
    "RWA0000KR": {
      "name": "基加利-恩加利",
      "alpha": "j"
    },
    "RWA0000KV": {
      "name": "基加利市",
      "alpha": "j"
    },
    "RWA0000KY": {
      "name": "基布耶",
      "alpha": "j"
    },
    "RWA0000NY": {
      "name": "恩延扎",
      "alpha": "e"
    },
    "RWA0000RH": {
      "name": "鲁汉戈",
      "alpha": "l"
    },
    "RWA0000RU": {
      "name": "鲁亨盖里",
      "alpha": "l"
    },
    "RWA0000RW": {
      "name": "卢瓦马加纳",
      "alpha": "l"
    },
    "RWA0000UM": {
      "name": "乌姆塔拉",
      "alpha": "w"
    }
  },
  "SAU": {
    "SAU0000BH": {
      "name": "巴哈",
      "alpha": "b"
    },
    "SAU0000HL": {
      "name": "哈伊勒",
      "alpha": "h"
    },
    "SAU0000JZ": {
      "name": "吉赞",
      "alpha": "j"
    },
    "SAU0000ML": {
      "name": "麦加",
      "alpha": "m"
    },
    "SAU0000NR": {
      "name": "纳季兰",
      "alpha": "n"
    },
    "SAU0000RD": {
      "name": "利雅得",
      "alpha": "l"
    },
    "SAU0000TB": {
      "name": "塔布克",
      "alpha": "t"
    },
    "SAU000AHB": {
      "name": "艾卜哈",
      "alpha": "a"
    },
    "SAU000AKH": {
      "name": "海耶",
      "alpha": "h"
    },
    "SAU000ARA": {
      "name": "阿尔阿尔",
      "alpha": "a"
    },
    "SAU000BUR": {
      "name": "布赖代",
      "alpha": "b"
    },
    "SAU000DAM": {
      "name": "达曼",
      "alpha": "d"
    },
    "SAU000HBT": {
      "name": "哈费尔巴廷",
      "alpha": "h"
    },
    "SAU000HFF": {
      "name": "胡富夫",
      "alpha": "h"
    },
    "SAU000JBI": {
      "name": "朱拜勒",
      "alpha": "z"
    },
    "SAU000JED": {
      "name": "吉达",
      "alpha": "j"
    },
    "SAU000KMX": {
      "name": "海米斯穆谢特",
      "alpha": "h"
    },
    "SAU000MBR": {
      "name": "姆巴拉兹",
      "alpha": "m"
    },
    "SAU000MED": {
      "name": "麦地那",
      "alpha": "m"
    },
    "SAU000SAK": {
      "name": "塞卡卡",
      "alpha": "s"
    },
    "SAU000TAR": {
      "name": "塔伊夫",
      "alpha": "t"
    },
    "SAU000YNB": {
      "name": "延布",
      "alpha": "y"
    }
  },
  "SDN": {
    "SDN000ANB": {
      "name": "上尼罗",
      "alpha": "s"
    },
    "SDN000ASH": {
      "name": "北部",
      "alpha": "b"
    },
    "SDN000GKU": {
      "name": "科尔多凡",
      "alpha": "k"
    },
    "SDN000KRT": {
      "name": "喀土穆",
      "alpha": "k"
    },
    "SDN000SBG": {
      "name": "加扎勒河",
      "alpha": "j"
    },
    "SDN000SDA": {
      "name": "达尔富尔",
      "alpha": "d"
    },
    "SDN000SHA": {
      "name": "东部",
      "alpha": "d"
    },
    "SDN000SIS": {
      "name": "赤道",
      "alpha": "c"
    },
    "SDN000WDH": {
      "name": "中部",
      "alpha": "z"
    }
  },
  "SEN": {
    "SEN0000DA": {
      "name": "达喀尔",
      "alpha": "d"
    },
    "SEN0000DI": {
      "name": "久尔贝勒",
      "alpha": "j"
    },
    "SEN0000FA": {
      "name": "法蒂克",
      "alpha": "f"
    },
    "SEN0000KA": {
      "name": "考拉克",
      "alpha": "k"
    },
    "SEN0000KO": {
      "name": "科尔达",
      "alpha": "k"
    },
    "SEN0000LO": {
      "name": "卢加",
      "alpha": "l"
    },
    "SEN0000MA": {
      "name": "马塔姆",
      "alpha": "m"
    },
    "SEN0000SL": {
      "name": "圣路易",
      "alpha": "s"
    },
    "SEN0000TA": {
      "name": "坦巴昆达",
      "alpha": "t"
    },
    "SEN0000TH": {
      "name": "捷斯",
      "alpha": "j"
    },
    "SEN0000ZI": {
      "name": "济金绍尔",
      "alpha": "j"
    }
  },
  "SLB": {
    "SLB0000CE": {
      "name": "中部群岛",
      "alpha": "z"
    },
    "SLB0000CH": {
      "name": "乔伊索",
      "alpha": "q"
    },
    "SLB0000GC": {
      "name": "瓜达尔卡纳尔",
      "alpha": "g"
    },
    "SLB0000HO": {
      "name": "霍尼亚拉",
      "alpha": "h"
    },
    "SLB0000IS": {
      "name": "伊萨贝尔",
      "alpha": "y"
    },
    "SLB0000MK": {
      "name": "马基拉",
      "alpha": "m"
    },
    "SLB0000ML": {
      "name": "马莱塔",
      "alpha": "m"
    },
    "SLB0000RB": {
      "name": "拉纳尔和贝罗纳",
      "alpha": "l"
    },
    "SLB0000TM": {
      "name": "泰莫图",
      "alpha": "t"
    },
    "SLB0000WE": {
      "name": "西部",
      "alpha": "x"
    }
  },
  "SLE": {
    "SLE00000E": {
      "name": "东部",
      "alpha": "d"
    },
    "SLE00000N": {
      "name": "北部",
      "alpha": "b"
    },
    "SLE00000S": {
      "name": "南部",
      "alpha": "n"
    },
    "SLE00000W": {
      "name": "西部区",
      "alpha": "x"
    }
  },
  "SLV": {
    "SLV0000AH": {
      "name": "阿瓦查潘",
      "alpha": "a"
    },
    "SLV0000CA": {
      "name": "卡瓦尼亚斯",
      "alpha": "k"
    },
    "SLV0000CH": {
      "name": "查拉特南戈",
      "alpha": "c"
    },
    "SLV0000CS": {
      "name": "中南",
      "alpha": "z"
    },
    "SLV0000CU": {
      "name": "库斯卡特兰",
      "alpha": "k"
    },
    "SLV0000DE": {
      "name": "德尔加多",
      "alpha": "d"
    },
    "SLV0000IL": {
      "name": "伊洛潘戈",
      "alpha": "y"
    },
    "SLV0000KN": {
      "name": "基埃-恩特姆",
      "alpha": "j"
    },
    "SLV0000LB": {
      "name": "拉利伯塔德",
      "alpha": "l"
    },
    "SLV0000LI": {
      "name": "滨海",
      "alpha": "b"
    },
    "SLV0000MO": {
      "name": "莫拉桑",
      "alpha": "m"
    },
    "SLV0000PZ": {
      "name": "拉巴斯",
      "alpha": "l"
    },
    "SLV0000SA": {
      "name": "圣安娜",
      "alpha": "s"
    },
    "SLV0000SM": {
      "name": "圣米格尔",
      "alpha": "s"
    },
    "SLV0000SO": {
      "name": "松索纳特",
      "alpha": "s"
    },
    "SLV0000SS": {
      "name": "圣萨尔瓦多",
      "alpha": "s"
    },
    "SLV0000SV": {
      "name": "圣维森特",
      "alpha": "s"
    },
    "SLV0000UN": {
      "name": "拉乌尼翁",
      "alpha": "l"
    },
    "SLV0000US": {
      "name": "乌苏卢坦",
      "alpha": "w"
    },
    "SLV0000WN": {
      "name": "韦莱-恩萨斯",
      "alpha": "w"
    },
    "SLV000APO": {
      "name": "阿波帕",
      "alpha": "a"
    },
    "SLV000MEJ": {
      "name": "梅基卡诺斯",
      "alpha": "m"
    },
    "SLV000SOY": {
      "name": "索亚潘戈",
      "alpha": "s"
    }
  },
  "SOM": {},
  "SUR": {
    "SUR0000BR": {
      "name": "布罗科蓬多",
      "alpha": "b"
    },
    "SUR0000CM": {
      "name": "科默韦讷",
      "alpha": "k"
    },
    "SUR0000CR": {
      "name": "科罗尼",
      "alpha": "k"
    },
    "SUR0000MA": {
      "name": "马罗韦讷",
      "alpha": "m"
    },
    "SUR0000NI": {
      "name": "尼克里",
      "alpha": "n"
    },
    "SUR0000PA": {
      "name": "帕拉",
      "alpha": "p"
    },
    "SUR0000PM": {
      "name": "帕拉马里博",
      "alpha": "p"
    },
    "SUR0000SA": {
      "name": "萨拉马卡",
      "alpha": "s"
    },
    "SUR0000SI": {
      "name": "西帕里韦尼",
      "alpha": "x"
    },
    "SUR0000WA": {
      "name": "瓦尼卡",
      "alpha": "w"
    }
  },
  "SVK": {
    "SVK000BBY": {
      "name": "班斯卡-比斯特里察",
      "alpha": "b"
    },
    "SVK000BTS": {
      "name": "布拉迪斯拉发",
      "alpha": "b"
    },
    "SVK000KOR": {
      "name": "科希策",
      "alpha": "k"
    },
    "SVK000NRA": {
      "name": "尼特拉",
      "alpha": "n"
    },
    "SVK000POV": {
      "name": "普雷绍夫",
      "alpha": "p"
    },
    "SVK000RIL": {
      "name": "日利纳",
      "alpha": "r"
    },
    "SVK000TNA": {
      "name": "特尔纳瓦",
      "alpha": "t"
    },
    "SVK000TRE": {
      "name": "特伦钦",
      "alpha": "t"
    }
  },
  "SVN": {
    "SVN000DLJ": {
      "name": "多雷尼",
      "alpha": "d"
    },
    "SVN000GSK": {
      "name": "戈里",
      "alpha": "g"
    },
    "SVN000GSZ": {
      "name": "戈雷尼",
      "alpha": "g"
    },
    "SVN000KOR": {
      "name": "科洛",
      "alpha": "k"
    },
    "SVN000NKR": {
      "name": "诺特拉尼",
      "alpha": "n"
    },
    "SVN000OKR": {
      "name": "奥巴尔诺-克拉",
      "alpha": "a"
    },
    "SVN000OSR": {
      "name": "奥斯雷德涅斯洛文",
      "alpha": "a"
    },
    "SVN000POD": {
      "name": "波德拉夫",
      "alpha": "b"
    },
    "SVN000POM": {
      "name": "波穆尔",
      "alpha": "b"
    },
    "SVN000SAV": {
      "name": "萨维尼",
      "alpha": "s"
    },
    "SVN000SPO": {
      "name": "斯波德涅波萨夫",
      "alpha": "s"
    },
    "SVN000ZAS": {
      "name": "扎萨夫",
      "alpha": "z"
    }
  },
  "SWE": {
    "SWE00000C": {
      "name": "乌普萨拉",
      "alpha": "w"
    },
    "SWE00000D": {
      "name": "南曼兰",
      "alpha": "n"
    },
    "SWE00000F": {
      "name": "延雪平",
      "alpha": "y"
    },
    "SWE00000G": {
      "name": "克鲁努贝里",
      "alpha": "k"
    },
    "SWE00000H": {
      "name": "卡尔马",
      "alpha": "k"
    },
    "SWE00000I": {
      "name": "哥得兰",
      "alpha": "g"
    },
    "SWE00000K": {
      "name": "布莱金厄",
      "alpha": "b"
    },
    "SWE00000M": {
      "name": "斯科耐",
      "alpha": "s"
    },
    "SWE00000N": {
      "name": "哈兰",
      "alpha": "h"
    },
    "SWE00000O": {
      "name": "西约特兰",
      "alpha": "x"
    },
    "SWE00000S": {
      "name": "韦姆兰",
      "alpha": "w"
    },
    "SWE00000T": {
      "name": "厄勒布鲁",
      "alpha": "e"
    },
    "SWE00000U": {
      "name": "西曼兰",
      "alpha": "x"
    },
    "SWE00000X": {
      "name": "耶夫勒堡",
      "alpha": "y"
    },
    "SWE00000Y": {
      "name": "西诺尔兰",
      "alpha": "x"
    },
    "SWE00000Z": {
      "name": "耶姆特兰",
      "alpha": "y"
    },
    "SWE0000AB": {
      "name": "斯德哥尔摩",
      "alpha": "s"
    },
    "SWE0000AC": {
      "name": "西博滕",
      "alpha": "x"
    },
    "SWE0000BD": {
      "name": "北博滕",
      "alpha": "b"
    },
    "SWE000DLN": {
      "name": "达拉纳",
      "alpha": "d"
    },
    "SWE000UGL": {
      "name": "东约特兰",
      "alpha": "d"
    }
  },
  "SWZ": {},
  "SYR": {
    "SYR0000DA": {
      "name": "德拉",
      "alpha": "d"
    },
    "SYR0000DI": {
      "name": "大马士革市",
      "alpha": "d"
    },
    "SYR0000DZ": {
      "name": "代尔祖尔",
      "alpha": "d"
    },
    "SYR0000GH": {
      "name": "加布",
      "alpha": "j"
    },
    "SYR0000HA": {
      "name": "哈塞克",
      "alpha": "h"
    },
    "SYR0000HI": {
      "name": "霍姆斯",
      "alpha": "h"
    },
    "SYR0000HL": {
      "name": "阿勒颇",
      "alpha": "a"
    },
    "SYR0000HM": {
      "name": "哈马",
      "alpha": "h"
    },
    "SYR0000ID": {
      "name": "伊德利卜",
      "alpha": "y"
    },
    "SYR0000LA": {
      "name": "拉塔基亚",
      "alpha": "l"
    },
    "SYR0000QA": {
      "name": "卡米什利",
      "alpha": "k"
    },
    "SYR0000QU": {
      "name": "库奈特拉",
      "alpha": "k"
    },
    "SYR0000RD": {
      "name": "大马士革",
      "alpha": "d"
    },
    "SYR0000RQ": {
      "name": "拉卡",
      "alpha": "l"
    },
    "SYR0000SU": {
      "name": "苏韦达",
      "alpha": "s"
    },
    "SYR0000TA": {
      "name": "塔尔图斯",
      "alpha": "t"
    }
  },
  "TCD": {},
  "TGO": {
    "TGO00000C": {
      "name": "中部区",
      "alpha": "z"
    },
    "TGO00000K": {
      "name": "卡拉区",
      "alpha": "k"
    },
    "TGO00000M": {
      "name": "滨海区",
      "alpha": "b"
    },
    "TGO00000P": {
      "name": "高原区",
      "alpha": "g"
    },
    "TGO00000S": {
      "name": "草原区",
      "alpha": "c"
    }
  },
  "THA": {
    "THA000010": {
      "name": "曼谷",
      "alpha": "m"
    },
    "THA000011": {
      "name": "北揽",
      "alpha": "b"
    },
    "THA000012": {
      "name": "暖武里",
      "alpha": "n"
    },
    "THA000013": {
      "name": "巴吞他尼",
      "alpha": "b"
    },
    "THA000014": {
      "name": "大城",
      "alpha": "d"
    },
    "THA000015": {
      "name": "红统",
      "alpha": "h"
    },
    "THA000016": {
      "name": "华富里",
      "alpha": "h"
    },
    "THA000017": {
      "name": "信武里",
      "alpha": "x"
    },
    "THA000018": {
      "name": "猜那",
      "alpha": "c"
    },
    "THA000019": {
      "name": "北标",
      "alpha": "b"
    },
    "THA000020": {
      "name": "春武里",
      "alpha": "c"
    },
    "THA000021": {
      "name": "拉农",
      "alpha": "l"
    },
    "THA000022": {
      "name": "尖竹汶",
      "alpha": "j"
    },
    "THA000023": {
      "name": "达叻",
      "alpha": "d"
    },
    "THA000024": {
      "name": "北柳",
      "alpha": "b"
    },
    "THA000025": {
      "name": "巴真",
      "alpha": "b"
    },
    "THA000026": {
      "name": "那空那育",
      "alpha": "n"
    },
    "THA000027": {
      "name": "沙缴",
      "alpha": "s"
    },
    "THA000031": {
      "name": "武里南",
      "alpha": "w"
    },
    "THA000032": {
      "name": "素林",
      "alpha": "s"
    },
    "THA000033": {
      "name": "四色菊",
      "alpha": "s"
    },
    "THA000034": {
      "name": "乌汶",
      "alpha": "w"
    },
    "THA000035": {
      "name": "耶梭通",
      "alpha": "y"
    },
    "THA000036": {
      "name": "猜也奔",
      "alpha": "c"
    },
    "THA000037": {
      "name": "安纳乍能",
      "alpha": "a"
    },
    "THA000039": {
      "name": "廊莫那浦",
      "alpha": "l"
    },
    "THA000040": {
      "name": "孔敬",
      "alpha": "k"
    },
    "THA000041": {
      "name": "乌隆",
      "alpha": "w"
    },
    "THA000042": {
      "name": "黎",
      "alpha": "l"
    },
    "THA000043": {
      "name": "廊开",
      "alpha": "l"
    },
    "THA000044": {
      "name": "玛哈沙拉堪",
      "alpha": "m"
    },
    "THA000045": {
      "name": "黎逸",
      "alpha": "l"
    },
    "THA000046": {
      "name": "加拉信",
      "alpha": "j"
    },
    "THA000047": {
      "name": "色军",
      "alpha": "s"
    },
    "THA000048": {
      "name": "那空帕农",
      "alpha": "n"
    },
    "THA000049": {
      "name": "莫达汉",
      "alpha": "m"
    },
    "THA000050": {
      "name": "清迈",
      "alpha": "q"
    },
    "THA000051": {
      "name": "南奔",
      "alpha": "n"
    },
    "THA000053": {
      "name": "程逸",
      "alpha": "c"
    },
    "THA000054": {
      "name": "帕",
      "alpha": "p"
    },
    "THA000055": {
      "name": "难",
      "alpha": "n"
    },
    "THA000056": {
      "name": "帕尧",
      "alpha": "p"
    },
    "THA000057": {
      "name": "清莱",
      "alpha": "q"
    },
    "THA000058": {
      "name": "夜丰颂",
      "alpha": "y"
    },
    "THA000060": {
      "name": "北榄坡",
      "alpha": "b"
    },
    "THA000061": {
      "name": "乌泰他尼",
      "alpha": "w"
    },
    "THA000062": {
      "name": "甘烹碧",
      "alpha": "g"
    },
    "THA000063": {
      "name": "达",
      "alpha": "d"
    },
    "THA000064": {
      "name": "素可泰",
      "alpha": "s"
    },
    "THA000065": {
      "name": "彭世洛",
      "alpha": "p"
    },
    "THA000066": {
      "name": "披集",
      "alpha": "p"
    },
    "THA000070": {
      "name": "叻丕",
      "alpha": "l"
    },
    "THA000071": {
      "name": "北碧",
      "alpha": "b"
    },
    "THA000072": {
      "name": "素攀武里",
      "alpha": "s"
    },
    "THA000073": {
      "name": "佛统",
      "alpha": "f"
    },
    "THA000074": {
      "name": "龙仔厝",
      "alpha": "l"
    },
    "THA000075": {
      "name": "夜功",
      "alpha": "y"
    },
    "THA000076": {
      "name": "碧差汶",
      "alpha": "b"
    },
    "THA000077": {
      "name": "巴蜀",
      "alpha": "b"
    },
    "THA000078": {
      "name": "佛丕",
      "alpha": "f"
    },
    "THA000080": {
      "name": "洛坤",
      "alpha": "l"
    },
    "THA000081": {
      "name": "甲米",
      "alpha": "j"
    },
    "THA000082": {
      "name": "攀牙",
      "alpha": "p"
    },
    "THA000083": {
      "name": "普吉",
      "alpha": "p"
    },
    "THA000084": {
      "name": "素叻",
      "alpha": "s"
    },
    "THA000085": {
      "name": "罗勇",
      "alpha": "l"
    },
    "THA000086": {
      "name": "春蓬",
      "alpha": "c"
    },
    "THA000090": {
      "name": "宋卡",
      "alpha": "s"
    },
    "THA000091": {
      "name": "沙敦",
      "alpha": "s"
    },
    "THA000092": {
      "name": "董里",
      "alpha": "d"
    },
    "THA000093": {
      "name": "博达伦",
      "alpha": "b"
    },
    "THA000094": {
      "name": "北大年",
      "alpha": "b"
    },
    "THA000095": {
      "name": "也拉",
      "alpha": "y"
    },
    "THA000096": {
      "name": "陶公",
      "alpha": "t"
    }
  },
  "TJK": {
    "TJK000DYU": {
      "name": "杜尚别",
      "alpha": "d"
    },
    "TJK000ISF": {
      "name": "伊斯法拉",
      "alpha": "y"
    },
    "TJK000KAN": {
      "name": "卡尼巴达姆",
      "alpha": "k"
    },
    "TJK000KHO": {
      "name": "霍罗格",
      "alpha": "h"
    },
    "TJK000KHU": {
      "name": "苦盏",
      "alpha": "k"
    },
    "TJK000KLB": {
      "name": "库洛布",
      "alpha": "k"
    },
    "TJK000KOF": {
      "name": "科法尔尼洪",
      "alpha": "k"
    },
    "TJK000KTJ": {
      "name": "库尔干-秋别",
      "alpha": "k"
    },
    "TJK000NUR": {
      "name": "努雷克",
      "alpha": "n"
    },
    "TJK000PJK": {
      "name": "彭吉肯特",
      "alpha": "p"
    },
    "TJK000RGU": {
      "name": "洛贡",
      "alpha": "l"
    },
    "TJK000SBA": {
      "name": "萨班特",
      "alpha": "s"
    },
    "TJK000TBS": {
      "name": "塔博沙尔",
      "alpha": "t"
    },
    "TJK000TSZ": {
      "name": "图尔孙扎德",
      "alpha": "t"
    },
    "TJK000UTJ": {
      "name": "乌拉秋别",
      "alpha": "w"
    }
  },
  "TKM": {
    "TKM00000A": {
      "name": "阿哈尔",
      "alpha": "a"
    },
    "TKM00000B": {
      "name": "巴尔坎",
      "alpha": "b"
    },
    "TKM00000D": {
      "name": "达沙古兹",
      "alpha": "d"
    },
    "TKM00000L": {
      "name": "列巴普",
      "alpha": "l"
    },
    "TKM00000M": {
      "name": "马雷",
      "alpha": "m"
    },
    "TKM000ASB": {
      "name": "阿什哈巴德市",
      "alpha": "a"
    },
    "TKM000NEB": {
      "name": "涅比特达格",
      "alpha": "n"
    }
  },
  "TLS": {
    "TLS0000AL": {
      "name": "阿伊莱乌",
      "alpha": "a"
    },
    "TLS0000AM": {
      "name": "安贝诺",
      "alpha": "a"
    },
    "TLS0000AN": {
      "name": "阿伊纳罗",
      "alpha": "a"
    },
    "TLS0000BA": {
      "name": "包考",
      "alpha": "b"
    },
    "TLS0000BO": {
      "name": "博博纳罗",
      "alpha": "b"
    },
    "TLS0000DI": {
      "name": "帝力",
      "alpha": "d"
    },
    "TLS0000ER": {
      "name": "埃尔梅拉",
      "alpha": "a"
    },
    "TLS0000KO": {
      "name": "科瓦利马",
      "alpha": "k"
    },
    "TLS0000LA": {
      "name": "劳滕",
      "alpha": "l"
    },
    "TLS0000LI": {
      "name": "利基卡",
      "alpha": "l"
    },
    "TLS0000MF": {
      "name": "马努法伊",
      "alpha": "m"
    },
    "TLS0000MT": {
      "name": "马纳图托",
      "alpha": "m"
    },
    "TLS0000VI": {
      "name": "维克克",
      "alpha": "w"
    }
  },
  "TTO": {},
  "TUN": {
    "TUN0000AR": {
      "name": "艾尔亚奈",
      "alpha": "a"
    },
    "TUN0000BA": {
      "name": "本阿鲁斯",
      "alpha": "b"
    },
    "TUN0000BI": {
      "name": "比塞大",
      "alpha": "b"
    },
    "TUN0000BJ": {
      "name": "巴杰",
      "alpha": "b"
    },
    "TUN0000GB": {
      "name": "加贝斯",
      "alpha": "j"
    },
    "TUN0000GF": {
      "name": "加夫萨",
      "alpha": "j"
    },
    "TUN0000JE": {
      "name": "坚杜拜",
      "alpha": "j"
    },
    "TUN0000KB": {
      "name": "吉比利",
      "alpha": "j"
    },
    "TUN0000KR": {
      "name": "凯鲁万",
      "alpha": "k"
    },
    "TUN0000KS": {
      "name": "卡塞林",
      "alpha": "k"
    },
    "TUN0000LK": {
      "name": "卡夫",
      "alpha": "k"
    },
    "TUN0000ME": {
      "name": "梅德宁",
      "alpha": "m"
    },
    "TUN0000MH": {
      "name": "马赫迪耶",
      "alpha": "m"
    },
    "TUN0000MN": {
      "name": "马努巴",
      "alpha": "m"
    },
    "TUN0000MO": {
      "name": "莫纳斯提尔",
      "alpha": "m"
    },
    "TUN0000NA": {
      "name": "纳布勒",
      "alpha": "n"
    },
    "TUN0000SD": {
      "name": "西迪布济德",
      "alpha": "x"
    },
    "TUN0000SF": {
      "name": "斯法克斯",
      "alpha": "s"
    },
    "TUN0000SL": {
      "name": "锡勒亚奈",
      "alpha": "x"
    },
    "TUN0000SO": {
      "name": "苏塞",
      "alpha": "s"
    },
    "TUN0000TA": {
      "name": "泰塔温",
      "alpha": "t"
    },
    "TUN0000TO": {
      "name": "托泽尔",
      "alpha": "t"
    },
    "TUN0000TU": {
      "name": "突尼斯",
      "alpha": "t"
    },
    "TUN0000ZA": {
      "name": "宰格万",
      "alpha": "z"
    }
  },
  "TUR": {
    "TUR000ADA": {
      "name": "阿达纳",
      "alpha": "a"
    },
    "TUR000ADI": {
      "name": "阿德亚曼",
      "alpha": "a"
    },
    "TUR000AFY": {
      "name": "阿菲永",
      "alpha": "a"
    },
    "TUR000AGR": {
      "name": "阿勒",
      "alpha": "a"
    },
    "TUR000AKS": {
      "name": "阿克萨赖",
      "alpha": "a"
    },
    "TUR000AMA": {
      "name": "阿马西亚",
      "alpha": "a"
    },
    "TUR000ANK": {
      "name": "安卡拉",
      "alpha": "a"
    },
    "TUR000ANT": {
      "name": "安塔利亚",
      "alpha": "a"
    },
    "TUR000ARD": {
      "name": "阿尔达罕",
      "alpha": "a"
    },
    "TUR000ART": {
      "name": "阿尔特温",
      "alpha": "a"
    },
    "TUR000AYI": {
      "name": "艾登",
      "alpha": "a"
    },
    "TUR000BAL": {
      "name": "巴勒克埃西尔",
      "alpha": "b"
    },
    "TUR000BAR": {
      "name": "巴尔腾",
      "alpha": "b"
    },
    "TUR000BAT": {
      "name": "巴特曼",
      "alpha": "b"
    },
    "TUR000BAY": {
      "name": "巴伊布尔特",
      "alpha": "b"
    },
    "TUR000BIL": {
      "name": "比莱吉克",
      "alpha": "b"
    },
    "TUR000BIN": {
      "name": "宾格尔",
      "alpha": "b"
    },
    "TUR000BIT": {
      "name": "比特利斯",
      "alpha": "b"
    },
    "TUR000BOL": {
      "name": "博卢",
      "alpha": "b"
    },
    "TUR000BRD": {
      "name": "布尔杜尔",
      "alpha": "b"
    },
    "TUR000BRS": {
      "name": "布尔萨",
      "alpha": "b"
    },
    "TUR000CKL": {
      "name": "恰纳卡莱",
      "alpha": "q"
    },
    "TUR000CKR": {
      "name": "昌克勒",
      "alpha": "c"
    },
    "TUR000COR": {
      "name": "乔鲁姆",
      "alpha": "q"
    },
    "TUR000DEN": {
      "name": "代尼兹利",
      "alpha": "d"
    },
    "TUR000DIY": {
      "name": "迪亚巴克尔",
      "alpha": "d"
    },
    "TUR000EDI": {
      "name": "埃迪尔内",
      "alpha": "a"
    },
    "TUR000ELA": {
      "name": "埃拉泽",
      "alpha": "a"
    },
    "TUR000ESK": {
      "name": "埃斯基谢希尔",
      "alpha": "a"
    },
    "TUR000EZC": {
      "name": "埃尔津詹",
      "alpha": "a"
    },
    "TUR000EZR": {
      "name": "埃尔祖鲁姆",
      "alpha": "a"
    },
    "TUR000GAZ": {
      "name": "加济安泰普",
      "alpha": "j"
    },
    "TUR000GIR": {
      "name": "吉雷松",
      "alpha": "j"
    },
    "TUR000GMS": {
      "name": "居米什哈内",
      "alpha": "j"
    },
    "TUR000HKR": {
      "name": "哈卡里",
      "alpha": "h"
    },
    "TUR000HTY": {
      "name": "哈塔伊",
      "alpha": "h"
    },
    "TUR000ICE": {
      "name": "伊切尔",
      "alpha": "y"
    },
    "TUR000IGD": {
      "name": "伊迪尔",
      "alpha": "y"
    },
    "TUR000ISP": {
      "name": "伊斯帕尔塔",
      "alpha": "y"
    },
    "TUR000IST": {
      "name": "伊斯坦布尔",
      "alpha": "y"
    },
    "TUR000IZM": {
      "name": "伊兹密尔",
      "alpha": "y"
    },
    "TUR000KAH": {
      "name": "卡赫拉曼马拉什",
      "alpha": "k"
    },
    "TUR000KAS": {
      "name": "卡斯塔莫努",
      "alpha": "k"
    },
    "TUR000KAY": {
      "name": "开塞利",
      "alpha": "k"
    },
    "TUR000KLR": {
      "name": "柯克拉雷利",
      "alpha": "k"
    },
    "TUR000KLS": {
      "name": "基利斯",
      "alpha": "j"
    },
    "TUR000KOC": {
      "name": "科贾埃利",
      "alpha": "k"
    },
    "TUR000KON": {
      "name": "科尼亚",
      "alpha": "k"
    },
    "TUR000KRB": {
      "name": "卡拉比克",
      "alpha": "k"
    },
    "TUR000KRH": {
      "name": "克尔谢希尔",
      "alpha": "k"
    },
    "TUR000KRK": {
      "name": "克勒克卡莱",
      "alpha": "k"
    },
    "TUR000KRM": {
      "name": "卡拉曼",
      "alpha": "k"
    },
    "TUR000KRS": {
      "name": "卡尔斯",
      "alpha": "k"
    },
    "TUR000KUT": {
      "name": "屈塔希亚",
      "alpha": "q"
    },
    "TUR000MAL": {
      "name": "马拉蒂亚",
      "alpha": "m"
    },
    "TUR000MAN": {
      "name": "马尼萨",
      "alpha": "m"
    },
    "TUR000MAR": {
      "name": "马尔丁",
      "alpha": "m"
    },
    "TUR000MUG": {
      "name": "穆拉",
      "alpha": "m"
    },
    "TUR000MUS": {
      "name": "穆什",
      "alpha": "m"
    },
    "TUR000NEV": {
      "name": "内夫谢希尔",
      "alpha": "n"
    },
    "TUR000NIG": {
      "name": "尼代",
      "alpha": "n"
    },
    "TUR000ORD": {
      "name": "奥尔杜",
      "alpha": "a"
    },
    "TUR000RIZ": {
      "name": "里泽",
      "alpha": "l"
    },
    "TUR000SAK": {
      "name": "萨卡里亚",
      "alpha": "s"
    },
    "TUR000SAM": {
      "name": "萨姆松",
      "alpha": "s"
    },
    "TUR000SII": {
      "name": "锡尔特",
      "alpha": "x"
    },
    "TUR000SIN": {
      "name": "锡诺普",
      "alpha": "x"
    },
    "TUR000SIR": {
      "name": "锡尔纳克",
      "alpha": "x"
    },
    "TUR000SIV": {
      "name": "锡瓦斯",
      "alpha": "x"
    },
    "TUR000TEL": {
      "name": "泰基尔达",
      "alpha": "t"
    },
    "TUR000TOK": {
      "name": "托卡特",
      "alpha": "t"
    },
    "TUR000TRA": {
      "name": "特拉布宗",
      "alpha": "t"
    },
    "TUR000TUN": {
      "name": "通杰利",
      "alpha": "t"
    },
    "TUR000URF": {
      "name": "拉飞",
      "alpha": "l"
    },
    "TUR000USK": {
      "name": "乌萨克",
      "alpha": "w"
    },
    "TUR000VAN": {
      "name": "凡",
      "alpha": "f"
    },
    "TUR000YOZ": {
      "name": "约兹加特",
      "alpha": "y"
    },
    "TUR000ZON": {
      "name": "宗古尔达克",
      "alpha": "z"
    }
  },
  "TZA": {
    "TZA0000AR": {
      "name": "阿鲁沙",
      "alpha": "a"
    },
    "TZA0000DO": {
      "name": "多多马",
      "alpha": "d"
    },
    "TZA0000DS": {
      "name": "达累斯萨拉姆",
      "alpha": "d"
    },
    "TZA0000IR": {
      "name": "伊林加",
      "alpha": "y"
    },
    "TZA0000KA": {
      "name": "卡盖拉",
      "alpha": "k"
    },
    "TZA0000KI": {
      "name": "基戈马",
      "alpha": "j"
    },
    "TZA0000KJ": {
      "name": "乞力马扎罗",
      "alpha": "q"
    },
    "TZA0000LN": {
      "name": "林迪",
      "alpha": "l"
    },
    "TZA0000MB": {
      "name": "姆贝亚",
      "alpha": "m"
    },
    "TZA0000MM": {
      "name": "桑给巴尔市和西",
      "alpha": "s"
    },
    "TZA0000MO": {
      "name": "莫洛戈罗",
      "alpha": "m"
    },
    "TZA0000MR": {
      "name": "马腊",
      "alpha": "m"
    },
    "TZA0000MT": {
      "name": "姆特瓦拉",
      "alpha": "m"
    },
    "TZA0000MW": {
      "name": "姆万扎",
      "alpha": "m"
    },
    "TZA0000MY": {
      "name": "曼亚拉",
      "alpha": "m"
    },
    "TZA0000PN": {
      "name": "奔巴北",
      "alpha": "b"
    },
    "TZA0000PS": {
      "name": "奔巴南",
      "alpha": "b"
    },
    "TZA0000PW": {
      "name": "滨海",
      "alpha": "b"
    },
    "TZA0000RK": {
      "name": "鲁夸",
      "alpha": "l"
    },
    "TZA0000RV": {
      "name": "鲁伍马",
      "alpha": "l"
    },
    "TZA0000SH": {
      "name": "欣延加",
      "alpha": "x"
    },
    "TZA0000SI": {
      "name": "辛吉达",
      "alpha": "x"
    },
    "TZA0000TB": {
      "name": "塔波拉",
      "alpha": "t"
    },
    "TZA0000TN": {
      "name": "坦噶",
      "alpha": "t"
    },
    "TZA0000UN": {
      "name": "桑给巴尔北",
      "alpha": "s"
    },
    "TZA0000US": {
      "name": "桑给巴尔南",
      "alpha": "s"
    },
    "TZA0000ZN": {
      "name": "桑给巴尔",
      "alpha": "s"
    }
  },
  "UGA": {
    "UGA000ADJ": {
      "name": "阿朱马尼",
      "alpha": "a"
    },
    "UGA000APC": {
      "name": "阿帕克",
      "alpha": "a"
    },
    "UGA000ARU": {
      "name": "阿鲁阿",
      "alpha": "a"
    },
    "UGA000BSH": {
      "name": "布谢尼",
      "alpha": "b"
    },
    "UGA000BUG": {
      "name": "布吉里",
      "alpha": "b"
    },
    "UGA000BUN": {
      "name": "本迪布焦",
      "alpha": "b"
    },
    "UGA000BUS": {
      "name": "布西亚",
      "alpha": "b"
    },
    "UGA000GUL": {
      "name": "古卢",
      "alpha": "g"
    },
    "UGA000HOI": {
      "name": "霍伊马",
      "alpha": "h"
    },
    "UGA000IGA": {
      "name": "伊甘加",
      "alpha": "y"
    },
    "UGA000JIN": {
      "name": "金贾",
      "alpha": "j"
    },
    "UGA000KAB": {
      "name": "卡贝拉马伊多",
      "alpha": "k"
    },
    "UGA000KAL": {
      "name": "卡兰加拉",
      "alpha": "k"
    },
    "UGA000KAM": {
      "name": "卡姆文盖",
      "alpha": "k"
    },
    "UGA000KAN": {
      "name": "卡农古",
      "alpha": "k"
    },
    "UGA000KAR": {
      "name": "卡巴罗莱",
      "alpha": "k"
    },
    "UGA000KAS": {
      "name": "卡塞塞",
      "alpha": "k"
    },
    "UGA000KAY": {
      "name": "卡永加",
      "alpha": "k"
    },
    "UGA000KBA": {
      "name": "基巴莱",
      "alpha": "j"
    },
    "UGA000KBL": {
      "name": "卡巴莱",
      "alpha": "k"
    },
    "UGA000KIB": {
      "name": "基博加",
      "alpha": "j"
    },
    "UGA000KIS": {
      "name": "基索罗",
      "alpha": "j"
    },
    "UGA000KIT": {
      "name": "基特古姆",
      "alpha": "j"
    },
    "UGA000KML": {
      "name": "卡穆利",
      "alpha": "k"
    },
    "UGA000KMP": {
      "name": "坎帕拉",
      "alpha": "k"
    },
    "UGA000KOT": {
      "name": "科蒂多",
      "alpha": "k"
    },
    "UGA000KPC": {
      "name": "卡普乔鲁瓦",
      "alpha": "k"
    },
    "UGA000KTK": {
      "name": "卡塔奎",
      "alpha": "k"
    },
    "UGA000KUM": {
      "name": "库米",
      "alpha": "k"
    },
    "UGA000KYE": {
      "name": "基恩乔乔",
      "alpha": "j"
    },
    "UGA000LIR": {
      "name": "利拉",
      "alpha": "l"
    },
    "UGA000LUW": {
      "name": "卢韦罗",
      "alpha": "l"
    },
    "UGA000MAS": {
      "name": "马萨卡",
      "alpha": "m"
    },
    "UGA000MAY": {
      "name": "马尤盖",
      "alpha": "m"
    },
    "UGA000MBA": {
      "name": "姆巴莱",
      "alpha": "m"
    },
    "UGA000MBR": {
      "name": "姆巴拉拉",
      "alpha": "m"
    },
    "UGA000MOY": {
      "name": "莫约",
      "alpha": "m"
    },
    "UGA000MPI": {
      "name": "姆皮吉",
      "alpha": "m"
    },
    "UGA000MRT": {
      "name": "莫罗托",
      "alpha": "m"
    },
    "UGA000MSN": {
      "name": "马辛迪",
      "alpha": "m"
    },
    "UGA000MUB": {
      "name": "穆本德",
      "alpha": "m"
    },
    "UGA000MUK": {
      "name": "穆科诺",
      "alpha": "m"
    },
    "UGA000NAK": {
      "name": "纳卡皮里皮里特",
      "alpha": "n"
    },
    "UGA000NEB": {
      "name": "内比",
      "alpha": "n"
    },
    "UGA000NKS": {
      "name": "纳卡松戈拉",
      "alpha": "n"
    },
    "UGA000NTU": {
      "name": "恩通加莫",
      "alpha": "e"
    },
    "UGA000PAD": {
      "name": "帕德尔",
      "alpha": "p"
    },
    "UGA000PAL": {
      "name": "帕利萨",
      "alpha": "p"
    },
    "UGA000RAK": {
      "name": "拉卡伊",
      "alpha": "l"
    },
    "UGA000RUK": {
      "name": "鲁昆吉里",
      "alpha": "l"
    },
    "UGA000SEM": {
      "name": "森巴布莱",
      "alpha": "s"
    },
    "UGA000SIR": {
      "name": "锡龙科",
      "alpha": "x"
    },
    "UGA000SOR": {
      "name": "索罗提",
      "alpha": "s"
    },
    "UGA000TOR": {
      "name": "托罗罗",
      "alpha": "t"
    },
    "UGA000WAK": {
      "name": "瓦基索",
      "alpha": "w"
    },
    "UGA000YUM": {
      "name": "永贝",
      "alpha": "y"
    }
  },
  "UKR": {
    "UKR000005": {
      "name": "文尼察",
      "alpha": "w"
    },
    "UKR000007": {
      "name": "沃伦",
      "alpha": "w"
    },
    "UKR000009": {
      "name": "卢甘斯克",
      "alpha": "l"
    },
    "UKR000012": {
      "name": "第聂伯罗波得罗夫斯克",
      "alpha": "d"
    },
    "UKR000014": {
      "name": "顿涅茨克",
      "alpha": "d"
    },
    "UKR000018": {
      "name": "日托米尔",
      "alpha": "r"
    },
    "UKR000021": {
      "name": "外喀尔巴阡",
      "alpha": "w"
    },
    "UKR000023": {
      "name": "扎波罗热",
      "alpha": "z"
    },
    "UKR000026": {
      "name": "伊万－弗兰科夫州",
      "alpha": "y"
    },
    "UKR000030": {
      "name": "基辅",
      "alpha": "j"
    },
    "UKR000035": {
      "name": "基洛夫格勒",
      "alpha": "j"
    },
    "UKR000043": {
      "name": "克里米亚自治共和国",
      "alpha": "k"
    },
    "UKR000046": {
      "name": "利沃夫",
      "alpha": "l"
    },
    "UKR000048": {
      "name": "尼古拉耶夫",
      "alpha": "n"
    },
    "UKR000051": {
      "name": "敖德萨",
      "alpha": "a"
    },
    "UKR000053": {
      "name": "波尔塔瓦",
      "alpha": "b"
    },
    "UKR000056": {
      "name": "罗夫诺",
      "alpha": "l"
    },
    "UKR000059": {
      "name": "苏梅",
      "alpha": "s"
    },
    "UKR000061": {
      "name": "捷尔诺波尔",
      "alpha": "j"
    },
    "UKR000063": {
      "name": "哈尔科夫",
      "alpha": "h"
    },
    "UKR000065": {
      "name": "赫尔松州",
      "alpha": "h"
    },
    "UKR000068": {
      "name": "赫梅利尼茨基",
      "alpha": "h"
    },
    "UKR000071": {
      "name": "切尔卡瑟",
      "alpha": "q"
    },
    "UKR000074": {
      "name": "切尔尼戈夫",
      "alpha": "q"
    },
    "UKR000077": {
      "name": "切尔诺夫策",
      "alpha": "q"
    }
  },
  "URY": {
    "URY0000AR": {
      "name": "阿蒂加斯",
      "alpha": "a"
    },
    "URY0000CA": {
      "name": "卡内洛内斯",
      "alpha": "k"
    },
    "URY0000CL": {
      "name": "塞罗拉尔戈",
      "alpha": "s"
    },
    "URY0000CO": {
      "name": "科洛尼亚",
      "alpha": "k"
    },
    "URY0000DU": {
      "name": "杜拉斯诺",
      "alpha": "d"
    },
    "URY0000FA": {
      "name": "佛罗里达",
      "alpha": "f"
    },
    "URY0000FS": {
      "name": "弗洛雷斯",
      "alpha": "f"
    },
    "URY0000LA": {
      "name": "拉瓦耶哈",
      "alpha": "l"
    },
    "URY0000MA": {
      "name": "马尔多纳多",
      "alpha": "m"
    },
    "URY0000MO": {
      "name": "蒙得维的亚",
      "alpha": "m"
    },
    "URY0000PA": {
      "name": "派桑杜",
      "alpha": "p"
    },
    "URY0000RN": {
      "name": "内格罗河",
      "alpha": "n"
    },
    "URY0000RO": {
      "name": "罗恰",
      "alpha": "l"
    },
    "URY0000RV": {
      "name": "里韦拉",
      "alpha": "l"
    },
    "URY0000SJ": {
      "name": "圣何塞",
      "alpha": "s"
    },
    "URY0000SL": {
      "name": "萨尔托",
      "alpha": "s"
    },
    "URY0000SO": {
      "name": "索里亚诺",
      "alpha": "s"
    },
    "URY0000TT": {
      "name": "三十三人",
      "alpha": "s"
    },
    "URY000TAW": {
      "name": "塔夸伦博",
      "alpha": "t"
    }
  },
  "USA": {
    "USA0AKANC": {
      "name": "安克雷奇",
      "alpha": "a"
    },
    "USA0AKFAI": {
      "name": "费尔班克斯",
      "alpha": "f"
    },
    "USA0AKJNU": {
      "name": "朱诺",
      "alpha": "z"
    },
    "USA0ALBHM": {
      "name": "伯明罕",
      "alpha": "b"
    },
    "USA0ALMGM": {
      "name": "蒙哥马利",
      "alpha": "m"
    },
    "USA0ALMOB": {
      "name": "莫比尔",
      "alpha": "m"
    },
    "USA0ARFSM": {
      "name": "史密斯堡",
      "alpha": "s"
    },
    "USA0ARFYV": {
      "name": "费耶特维尔",
      "alpha": "f"
    },
    "USA0ARLIT": {
      "name": "小石城",
      "alpha": "x"
    },
    "USA0AZGDA": {
      "name": "格兰代尔",
      "alpha": "g"
    },
    "USA0AZMQA": {
      "name": "梅萨",
      "alpha": "m"
    },
    "USA0AZPHX": {
      "name": "凤凰城",
      "alpha": "f"
    },
    "USA0AZSTZ": {
      "name": "史卡兹代尔",
      "alpha": "s"
    },
    "USA0AZTPE": {
      "name": "坦普",
      "alpha": "t"
    },
    "USA0AZTUC": {
      "name": "图森",
      "alpha": "t"
    },
    "USA0AZYUM": {
      "name": "优玛",
      "alpha": "y"
    },
    "USA0CALAX": {
      "name": "洛杉矶",
      "alpha": "l"
    },
    "USA0CASAN": {
      "name": "圣迭戈",
      "alpha": "s"
    },
    "USA0CASFO": {
      "name": "旧金山",
      "alpha": "j"
    },
    "USA0CASJC": {
      "name": "圣何塞",
      "alpha": "s"
    },
    "USA0COASE": {
      "name": "阿斯彭",
      "alpha": "a"
    },
    "USA0COAUX": {
      "name": "奥罗拉",
      "alpha": "a"
    },
    "USA0COCOS": {
      "name": "科罗拉多斯普林斯",
      "alpha": "k"
    },
    "USA0CODEN": {
      "name": "丹佛",
      "alpha": "d"
    },
    "USA0COFNL": {
      "name": "柯林斯堡",
      "alpha": "k"
    },
    "USA0COGJT": {
      "name": "大章克申",
      "alpha": "d"
    },
    "USA0COVAC": {
      "name": "韦尔",
      "alpha": "w"
    },
    "USA0COWBU": {
      "name": "博尔德",
      "alpha": "b"
    },
    "USA0CTBDR": {
      "name": "布里奇波特",
      "alpha": "b"
    },
    "USA0CTDAQ": {
      "name": "达里恩",
      "alpha": "d"
    },
    "USA0CTGRH": {
      "name": "格林尼治",
      "alpha": "g"
    },
    "USA0CTHFD": {
      "name": "哈特福德",
      "alpha": "h"
    },
    "USA0CTHVN": {
      "name": "纽黑文",
      "alpha": "n"
    },
    "USA0CTNWT": {
      "name": "新不列颠",
      "alpha": "x"
    },
    "USA0CTWAT": {
      "name": "沃特伯里",
      "alpha": "w"
    },
    "USA0CTWPT": {
      "name": "韦斯特波特",
      "alpha": "w"
    },
    "USA0CTXIN": {
      "name": "米德尔顿",
      "alpha": "m"
    },
    "USA0DCWAS": {
      "name": "华盛顿哥伦比亚特区",
      "alpha": "h"
    },
    "USA0DEDOR": {
      "name": "多佛",
      "alpha": "d"
    },
    "USA0DEILG": {
      "name": "威明顿",
      "alpha": "w"
    },
    "USA0DENWK": {
      "name": "纽瓦克",
      "alpha": "n"
    },
    "USA0FLCPV": {
      "name": "卡纳维尔角",
      "alpha": "k"
    },
    "USA0FLEYW": {
      "name": "基韦斯特",
      "alpha": "j"
    },
    "USA0FLFLL": {
      "name": "罗德岱堡",
      "alpha": "l"
    },
    "USA0FLJAX": {
      "name": "杰克逊维尔",
      "alpha": "j"
    },
    "USA0FLMIA": {
      "name": "迈阿密",
      "alpha": "m"
    },
    "USA0FLORL": {
      "name": "奥兰多",
      "alpha": "a"
    },
    "USA0FLPIE": {
      "name": "圣彼德斯堡市",
      "alpha": "s"
    },
    "USA0FLTLH": {
      "name": "塔拉哈西",
      "alpha": "t"
    },
    "USA0FLTPA": {
      "name": "坦帕",
      "alpha": "t"
    },
    "USA0GAAUT": {
      "name": "奥古斯塔",
      "alpha": "a"
    },
    "USA0GACZX": {
      "name": "哥伦布",
      "alpha": "g"
    },
    "USA0GAMCN": {
      "name": "梅肯",
      "alpha": "m"
    },
    "USA0GASAV": {
      "name": "沙瓦纳",
      "alpha": "s"
    },
    "USA0GATAT": {
      "name": "亚特兰大",
      "alpha": "y"
    },
    "USA0HIHNL": {
      "name": "檀香山",
      "alpha": "t"
    },
    "USA0HIITO": {
      "name": "希洛",
      "alpha": "x"
    },
    "USA0HIKHH": {
      "name": "凯卢阿",
      "alpha": "k"
    },
    "USA0IACID": {
      "name": "锡达拉皮兹",
      "alpha": "x"
    },
    "USA0IADSM": {
      "name": "得梅因",
      "alpha": "d"
    },
    "USA0IADVN": {
      "name": "达文波特",
      "alpha": "d"
    },
    "USA0IDBLK": {
      "name": "布莱克富特",
      "alpha": "b"
    },
    "USA0IDBOI": {
      "name": "博伊西",
      "alpha": "b"
    },
    "USA0IDCOE": {
      "name": "科达伦",
      "alpha": "k"
    },
    "USA0IDIDA": {
      "name": "爱达荷福尔斯",
      "alpha": "a"
    },
    "USA0IDLWS": {
      "name": "刘易斯顿",
      "alpha": "l"
    },
    "USA0IDMJL": {
      "name": "莫斯科",
      "alpha": "m"
    },
    "USA0IDNPA": {
      "name": "楠帕",
      "alpha": "n"
    },
    "USA0IDPIH": {
      "name": "波卡特洛",
      "alpha": "b"
    },
    "USA0IDQKM": {
      "name": "岂彻姆",
      "alpha": "q"
    },
    "USA0IDSVY": {
      "name": "森瓦利",
      "alpha": "s"
    },
    "USA0IDYAF": {
      "name": "亚美利加瀑布城",
      "alpha": "y"
    },
    "USA0IDZMU": {
      "name": "墨菲",
      "alpha": "m"
    },
    "USA0ILALN": {
      "name": "奥尔顿",
      "alpha": "a"
    },
    "USA0ILAUZ": {
      "name": "奥罗拉",
      "alpha": "a"
    },
    "USA0ILBLO": {
      "name": "布卢明顿",
      "alpha": "b"
    },
    "USA0ILCHI": {
      "name": "芝加哥",
      "alpha": "z"
    },
    "USA0ILCMI": {
      "name": "厄巴纳-香槟",
      "alpha": "e"
    },
    "USA0ILCRA": {
      "name": "森特勒利亚",
      "alpha": "s"
    },
    "USA0ILDEC": {
      "name": "迪凯持",
      "alpha": "d"
    },
    "USA0ILDEK": {
      "name": "迪卡尔布",
      "alpha": "d"
    },
    "USA0ILDVI": {
      "name": "丹维尓",
      "alpha": "d"
    },
    "USA0ILESL": {
      "name": "东圣路易斯",
      "alpha": "d"
    },
    "USA0ILGSU": {
      "name": "盖尔斯堡",
      "alpha": "g"
    },
    "USA0ILMDH": {
      "name": "卡本代尔",
      "alpha": "k"
    },
    "USA0ILNOM": {
      "name": "诺黙尔",
      "alpha": "n"
    },
    "USA0ILPLA": {
      "name": "皮奥里亚",
      "alpha": "p"
    },
    "USA0ILRFD": {
      "name": "罗克福德",
      "alpha": "l"
    },
    "USA0ILRKI": {
      "name": "罗克艾兰",
      "alpha": "l"
    },
    "USA0ILSPI": {
      "name": "斯普林菲尔德",
      "alpha": "s"
    },
    "USA0ILUGN": {
      "name": "沃其根",
      "alpha": "w"
    },
    "USA0INEVV": {
      "name": "埃文斯维尔",
      "alpha": "a"
    },
    "USA0INFWA": {
      "name": "韦恩堡",
      "alpha": "w"
    },
    "USA0ININD": {
      "name": "印第安纳波利斯",
      "alpha": "y"
    },
    "USA0KSABZ": {
      "name": "阿比林",
      "alpha": "a"
    },
    "USA0KSHCH": {
      "name": "哈钦森",
      "alpha": "h"
    },
    "USA0KSICT": {
      "name": "威奇托",
      "alpha": "w"
    },
    "USA0KSKCK": {
      "name": "堪萨斯城",
      "alpha": "k"
    },
    "USA0KSLWC": {
      "name": "劳伦斯",
      "alpha": "l"
    },
    "USA0KSMHK": {
      "name": "曼哈顿",
      "alpha": "m"
    },
    "USA0KSOVL": {
      "name": "奥弗兰公园",
      "alpha": "a"
    },
    "USA0KSTOP": {
      "name": "托皮卡",
      "alpha": "t"
    },
    "USA0KSXIA": {
      "name": "莱文沃思",
      "alpha": "l"
    },
    "USA0KYLEX": {
      "name": "列克星敦",
      "alpha": "l"
    },
    "USA0KYLUI": {
      "name": "路易斯维尔",
      "alpha": "l"
    },
    "USA0KYOWB": {
      "name": "欧文斯伯勒",
      "alpha": "o"
    },
    "USA0LABTR": {
      "name": "巴吞鲁日",
      "alpha": "b"
    },
    "USA0LAMSY": {
      "name": "新奥尔良",
      "alpha": "x"
    },
    "USA0LASHV": {
      "name": "什里夫波特",
      "alpha": "s"
    },
    "USA0MABZD": {
      "name": "波士顿",
      "alpha": "b"
    },
    "USA0MAORH": {
      "name": "伍斯特",
      "alpha": "w"
    },
    "USA0MASFY": {
      "name": "斯普林菲尔德",
      "alpha": "s"
    },
    "USA0MDBAL": {
      "name": "巴尔的摩",
      "alpha": "b"
    },
    "USA0MDGAI": {
      "name": "盖瑟斯堡",
      "alpha": "g"
    },
    "USA0MDRKV": {
      "name": "罗克维尔",
      "alpha": "l"
    },
    "USA0MEBNQ": {
      "name": "班戈",
      "alpha": "b"
    },
    "USA0MEPOL": {
      "name": "波特兰",
      "alpha": "b"
    },
    "USA0MEQLW": {
      "name": "刘易斯顿",
      "alpha": "l"
    },
    "USA0MIARB": {
      "name": "安娜堡",
      "alpha": "a"
    },
    "USA0MIAZO": {
      "name": "卡拉马袓",
      "alpha": "k"
    },
    "USA0MIBCY": {
      "name": "贝城",
      "alpha": "b"
    },
    "USA0MIBTL": {
      "name": "巴特尔克里克",
      "alpha": "b"
    },
    "USA0MIDEO": {
      "name": "迪尔伯恩",
      "alpha": "d"
    },
    "USA0MIDET": {
      "name": "底特律",
      "alpha": "d"
    },
    "USA0MIFNT": {
      "name": "弗林特",
      "alpha": "f"
    },
    "USA0MIGRR": {
      "name": "大急流城",
      "alpha": "d"
    },
    "USA0MILAN": {
      "name": "兰辛",
      "alpha": "l"
    },
    "USA0MIMKG": {
      "name": "马斯基根",
      "alpha": "m"
    },
    "USA0MIPHN": {
      "name": "休伦港",
      "alpha": "x"
    },
    "USA0MIPTK": {
      "name": "庞菷亚克",
      "alpha": "p"
    },
    "USA0MISGM": {
      "name": "萨吉诺",
      "alpha": "s"
    },
    "USA0MISSM": {
      "name": "苏圣玛丽",
      "alpha": "s"
    },
    "USA0MIWAM": {
      "name": "沃伦",
      "alpha": "w"
    },
    "USA0MIWYD": {
      "name": "怀恩多特",
      "alpha": "h"
    },
    "USA0MNMES": {
      "name": "明尼阿波利斯",
      "alpha": "m"
    },
    "USA0MNRST": {
      "name": "罗切斯特",
      "alpha": "l"
    },
    "USA0MNSTP": {
      "name": "圣保罗",
      "alpha": "s"
    },
    "USA0MOCOV": {
      "name": "哥伦比亚",
      "alpha": "g"
    },
    "USA0MOJEF": {
      "name": "杰佛逊市",
      "alpha": "j"
    },
    "USA0MOMKC": {
      "name": "堪萨斯城",
      "alpha": "k"
    },
    "USA0MOSGF": {
      "name": "斯普林菲尔德",
      "alpha": "s"
    },
    "USA0MOSTL": {
      "name": "圣路易斯",
      "alpha": "s"
    },
    "USA0MSBIX": {
      "name": "比洛克西",
      "alpha": "b"
    },
    "USA0MSGLH": {
      "name": "格林维尔",
      "alpha": "g"
    },
    "USA0MSGPT": {
      "name": "格尔夫波特",
      "alpha": "g"
    },
    "USA0MSHBG": {
      "name": "哈蒂斯堡",
      "alpha": "h"
    },
    "USA0MSJAN": {
      "name": "杰克逊",
      "alpha": "j"
    },
    "USA0MSMEI": {
      "name": "默里迪恩",
      "alpha": "m"
    },
    "USA0MSVKS": {
      "name": "维克斯堡",
      "alpha": "w"
    },
    "USA0MTBGS": {
      "name": "比灵斯",
      "alpha": "b"
    },
    "USA0MTGTF": {
      "name": "大瀑布村",
      "alpha": "d"
    },
    "USA0MTMSO": {
      "name": "米苏拉",
      "alpha": "m"
    },
    "USA0NCAEV": {
      "name": "艾许维尔",
      "alpha": "a"
    },
    "USA0NCCHE": {
      "name": "教堂山",
      "alpha": "j"
    },
    "USA0NCCRQ": {
      "name": "夏洛特",
      "alpha": "x"
    },
    "USA0NCDHH": {
      "name": "杜罕",
      "alpha": "d"
    },
    "USA0NCGBO": {
      "name": "格林斯伯勒",
      "alpha": "g"
    },
    "USA0NCRAG": {
      "name": "罗利",
      "alpha": "l"
    },
    "USA0NCRDU": {
      "name": "洛利杜罕都会区",
      "alpha": "l"
    },
    "USA0NDBIS": {
      "name": "俾斯麦",
      "alpha": "b"
    },
    "USA0NDFAR": {
      "name": "法戈",
      "alpha": "f"
    },
    "USA0NDGFK": {
      "name": "大福克斯",
      "alpha": "d"
    },
    "USA0NDMOT": {
      "name": "迈诺特",
      "alpha": "m"
    },
    "USA0NELNK": {
      "name": "林肯",
      "alpha": "l"
    },
    "USA0NEOMA": {
      "name": "奥马哈",
      "alpha": "a"
    },
    "USA0NEXDE": {
      "name": "贝尔维尤",
      "alpha": "b"
    },
    "USA0NHASH": {
      "name": "纳舒厄",
      "alpha": "n"
    },
    "USA0NHCON": {
      "name": "康科德",
      "alpha": "k"
    },
    "USA0NHMHT": {
      "name": "曼彻斯特",
      "alpha": "m"
    },
    "USA0NJJEC": {
      "name": "泽西城",
      "alpha": "z"
    },
    "USA0NJNRK": {
      "name": "纽瓦克",
      "alpha": "n"
    },
    "USA0NJPAT": {
      "name": "帕特森",
      "alpha": "p"
    },
    "USA0NMABQ": {
      "name": "阿尔伯克基",
      "alpha": "a"
    },
    "USA0NMLRU": {
      "name": "拉斯克鲁塞斯",
      "alpha": "l"
    },
    "USA0NMROW": {
      "name": "罗斯韦尔",
      "alpha": "l"
    },
    "USA0NMSAF": {
      "name": "圣菲",
      "alpha": "s"
    },
    "USA0NVCSN": {
      "name": "卡森城",
      "alpha": "k"
    },
    "USA0NVEKO": {
      "name": "埃尔科",
      "alpha": "a"
    },
    "USA0NVHNZ": {
      "name": "亨德森",
      "alpha": "h"
    },
    "USA0NVLAS": {
      "name": "拉斯维加斯",
      "alpha": "l"
    },
    "USA0NVNVS": {
      "name": "北拉斯维加斯",
      "alpha": "b"
    },
    "USA0NVRNO": {
      "name": "里诺",
      "alpha": "l"
    },
    "USA0NVSPK": {
      "name": "斯帕克斯",
      "alpha": "s"
    },
    "USA0NVVGI": {
      "name": "弗吉尼亚城",
      "alpha": "f"
    },
    "USA0NYFFO": {
      "name": "布法罗",
      "alpha": "b"
    },
    "USA0NYQEE": {
      "name": "纽约市",
      "alpha": "n"
    },
    "USA0NYROC": {
      "name": "罗切斯特",
      "alpha": "l"
    },
    "USA0OHCLE": {
      "name": "克利夫兰",
      "alpha": "k"
    },
    "USA0OHCVG": {
      "name": "辛辛那提",
      "alpha": "x"
    },
    "USA0OHCZX": {
      "name": "哥伦布",
      "alpha": "g"
    },
    "USA0OHDYT": {
      "name": "代顿",
      "alpha": "d"
    },
    "USA0OHTOL": {
      "name": "托莱多",
      "alpha": "t"
    },
    "USA0OKOKC": {
      "name": "俄克拉荷马城",
      "alpha": "e"
    },
    "USA0OKOUN": {
      "name": "诺曼",
      "alpha": "n"
    },
    "USA0OKTUL": {
      "name": "塔尔萨",
      "alpha": "t"
    },
    "USA0ORBZO": {
      "name": "本德",
      "alpha": "b"
    },
    "USA0ORCOB": {
      "name": "库斯贝",
      "alpha": "k"
    },
    "USA0ORCTR": {
      "name": "火山口湖",
      "alpha": "h"
    },
    "USA0ORDAC": {
      "name": "达拉斯",
      "alpha": "d"
    },
    "USA0ORDLS": {
      "name": "达尔斯",
      "alpha": "d"
    },
    "USA0OREUG": {
      "name": "尤金",
      "alpha": "y"
    },
    "USA0ORHDX": {
      "name": "胡德里弗",
      "alpha": "h"
    },
    "USA0ORMFR": {
      "name": "梅德福",
      "alpha": "m"
    },
    "USA0ORPDX": {
      "name": "波特兰",
      "alpha": "b"
    },
    "USA0ORSLE": {
      "name": "塞勒姆",
      "alpha": "s"
    },
    "USA0ORSPY": {
      "name": "斯普林菲尔德",
      "alpha": "s"
    },
    "USA0ORSTH": {
      "name": "圣海伦斯",
      "alpha": "s"
    },
    "USA0ORTLM": {
      "name": "蒂拉穆克",
      "alpha": "d"
    },
    "USA0ORXFX": {
      "name": "格兰茨帕斯",
      "alpha": "g"
    },
    "USA0ORYCV": {
      "name": "科瓦利斯",
      "alpha": "k"
    },
    "USA0PAAEW": {
      "name": "阿伦敦",
      "alpha": "a"
    },
    "USA0PAPHL": {
      "name": "费城",
      "alpha": "f"
    },
    "USA0PAPIT": {
      "name": "匹兹堡",
      "alpha": "p"
    },
    "USA0RICQH": {
      "name": "克兰斯顿",
      "alpha": "k"
    },
    "USA0RINPO": {
      "name": "纽波特",
      "alpha": "n"
    },
    "USA0RIPAW": {
      "name": "波塔基特",
      "alpha": "b"
    },
    "USA0RIPVD": {
      "name": "普罗维登斯",
      "alpha": "p"
    },
    "USA0RISFN": {
      "name": "文索基特",
      "alpha": "w"
    },
    "USA0RIUZO": {
      "name": "沃威克",
      "alpha": "w"
    },
    "USA0RIWST": {
      "name": "韦斯特利",
      "alpha": "w"
    },
    "USA0SCCHS": {
      "name": "查尔斯顿",
      "alpha": "c"
    },
    "USA0SCCOV": {
      "name": "哥伦比亚",
      "alpha": "g"
    },
    "USA0SCNTS": {
      "name": "北查尔斯顿",
      "alpha": "b"
    },
    "USA0SDABK": {
      "name": "阿伯丁",
      "alpha": "a"
    },
    "USA0SDFSD": {
      "name": "苏福尔斯",
      "alpha": "s"
    },
    "USA0SDRAP": {
      "name": "拉皮德城",
      "alpha": "l"
    },
    "USA0TNBNA": {
      "name": "纳什维尔",
      "alpha": "n"
    },
    "USA0TNBSJ": {
      "name": "布利斯托",
      "alpha": "b"
    },
    "USA0TNCHA": {
      "name": "查塔努加",
      "alpha": "c"
    },
    "USA0TNJCY": {
      "name": "约翰逊城",
      "alpha": "y"
    },
    "USA0TNMEM": {
      "name": "孟菲斯",
      "alpha": "m"
    },
    "USA0TNMQY": {
      "name": "士麦那",
      "alpha": "s"
    },
    "USA0TNRGI": {
      "name": "斯普林希尔",
      "alpha": "s"
    },
    "USA0TNTRI": {
      "name": "金斯波特",
      "alpha": "j"
    },
    "USA0TNTYS": {
      "name": "诺克斯维尔",
      "alpha": "n"
    },
    "USA0TNYTC": {
      "name": "三城区",
      "alpha": "s"
    },
    "USA0TXAUS": {
      "name": "奥斯汀",
      "alpha": "a"
    },
    "USA0TXCRP": {
      "name": "哥帕斯基斯蒂",
      "alpha": "g"
    },
    "USA0TXDAL": {
      "name": "达拉斯",
      "alpha": "d"
    },
    "USA0TXELP": {
      "name": "埃尔帕索",
      "alpha": "a"
    },
    "USA0TXGLS": {
      "name": "交维斯顿",
      "alpha": "j"
    },
    "USA0TXHOU": {
      "name": "休斯敦",
      "alpha": "x"
    },
    "USA0TXLRD": {
      "name": "拉雷多",
      "alpha": "l"
    },
    "USA0TXSAT": {
      "name": "圣安东尼奥",
      "alpha": "s"
    },
    "USA0TXTXC": {
      "name": "麦亚伦",
      "alpha": "m"
    },
    "USA0UTLTJ": {
      "name": "雷登",
      "alpha": "l"
    },
    "USA0UTOEU": {
      "name": "欧仁",
      "alpha": "o"
    },
    "USA0UTOGD": {
      "name": "奥格登",
      "alpha": "a"
    },
    "USA0UTPAC": {
      "name": "帕克城",
      "alpha": "p"
    },
    "USA0UTPVU": {
      "name": "普罗沃",
      "alpha": "p"
    },
    "USA0UTSGU": {
      "name": "圣乔治",
      "alpha": "s"
    },
    "USA0UTSLC": {
      "name": "盐湖城",
      "alpha": "y"
    },
    "USA0UTWVC": {
      "name": "西瓦利城",
      "alpha": "x"
    },
    "USA0VAHTW": {
      "name": "切萨皮克",
      "alpha": "q"
    },
    "USA0VAORF": {
      "name": "诺福克",
      "alpha": "n"
    },
    "USA0VAVAB": {
      "name": "弗吉尼亚比奇",
      "alpha": "f"
    },
    "USA0VTBTV": {
      "name": "伯灵顿",
      "alpha": "b"
    },
    "USA0VTRUT": {
      "name": "拉特兰",
      "alpha": "l"
    },
    "USA0VTZBR": {
      "name": "南伯灵顿",
      "alpha": "n"
    },
    "USA0WAGEG": {
      "name": "斯波坎",
      "alpha": "s"
    },
    "USA0WASEA": {
      "name": "西雅图",
      "alpha": "x"
    },
    "USA0WATTW": {
      "name": "塔科马",
      "alpha": "t"
    },
    "USA0WIATW": {
      "name": "阿普尓顿",
      "alpha": "a"
    },
    "USA0WIAUW": {
      "name": "沃索",
      "alpha": "w"
    },
    "USA0WIEAU": {
      "name": "欧克莱尓",
      "alpha": "o"
    },
    "USA0WIENW": {
      "name": "基诺沙",
      "alpha": "j"
    },
    "USA0WIGBK": {
      "name": "格林贝",
      "alpha": "g"
    },
    "USA0WILSE": {
      "name": "拉克罗斯",
      "alpha": "l"
    },
    "USA0WIMKE": {
      "name": "密尔沃基",
      "alpha": "m"
    },
    "USA0WIMTW": {
      "name": "马尼托沃克",
      "alpha": "m"
    },
    "USA0WIOSH": {
      "name": "奥什科什",
      "alpha": "a"
    },
    "USA0WIQMD": {
      "name": "迈迪逊",
      "alpha": "m"
    },
    "USA0WIRAC": {
      "name": "拉辛",
      "alpha": "l"
    },
    "USA0WISBM": {
      "name": "希博伊根",
      "alpha": "x"
    },
    "USA0WVCRW": {
      "name": "查尔斯顿",
      "alpha": "c"
    },
    "USA0WVHNU": {
      "name": "亨廷顿",
      "alpha": "h"
    },
    "USA0WVPKB": {
      "name": "帕克斯堡",
      "alpha": "p"
    },
    "USA0WYCPR": {
      "name": "卡斯珀",
      "alpha": "k"
    },
    "USA0WYCYS": {
      "name": "夏延",
      "alpha": "x"
    },
    "USA0WYEVD": {
      "name": "埃文斯顿",
      "alpha": "a"
    },
    "USA0WYLAR": {
      "name": "拉勒米",
      "alpha": "l"
    },
    "USA0WYRKS": {
      "name": "罗克斯普林斯",
      "alpha": "l"
    },
    "USA0WYSHR": {
      "name": "谢里登",
      "alpha": "x"
    }
  },
  "UZB": {
    "UZB0000AN": {
      "name": "安集延",
      "alpha": "a"
    },
    "UZB0000BU": {
      "name": "布哈拉",
      "alpha": "b"
    },
    "UZB0000FA": {
      "name": "费尔干纳",
      "alpha": "f"
    },
    "UZB0000JI": {
      "name": "吉扎克",
      "alpha": "j"
    },
    "UZB0000NG": {
      "name": "纳曼干",
      "alpha": "n"
    },
    "UZB0000NW": {
      "name": "纳沃伊",
      "alpha": "n"
    },
    "UZB0000QA": {
      "name": "卡什卡达里亚",
      "alpha": "k"
    },
    "UZB0000QR": {
      "name": "卡拉卡尔帕克斯坦共和国",
      "alpha": "k"
    },
    "UZB0000SA": {
      "name": "撒马尔罕",
      "alpha": "s"
    },
    "UZB0000SI": {
      "name": "锡尔河",
      "alpha": "x"
    },
    "UZB0000SU": {
      "name": "苏尔汉河",
      "alpha": "s"
    },
    "UZB0000TK": {
      "name": "塔什干",
      "alpha": "t"
    },
    "UZB0000TO": {
      "name": "塔什干市",
      "alpha": "t"
    },
    "UZB0000XO": {
      "name": "花拉子模",
      "alpha": "h"
    }
  },
  "VEN": {
    "VEN00000A": {
      "name": "加拉加斯",
      "alpha": "j"
    },
    "VEN00000B": {
      "name": "安索阿特吉",
      "alpha": "a"
    },
    "VEN00000C": {
      "name": "阿普雷",
      "alpha": "a"
    },
    "VEN00000D": {
      "name": "阿拉瓜",
      "alpha": "a"
    },
    "VEN00000E": {
      "name": "巴里纳斯",
      "alpha": "b"
    },
    "VEN00000F": {
      "name": "玻利瓦尔",
      "alpha": "b"
    },
    "VEN00000G": {
      "name": "卡拉沃沃",
      "alpha": "k"
    },
    "VEN00000H": {
      "name": "科赫德斯",
      "alpha": "k"
    },
    "VEN00000I": {
      "name": "法尔孔",
      "alpha": "f"
    },
    "VEN00000J": {
      "name": "瓜里科",
      "alpha": "g"
    },
    "VEN00000K": {
      "name": "拉腊",
      "alpha": "l"
    },
    "VEN00000L": {
      "name": "梅里达",
      "alpha": "m"
    },
    "VEN00000M": {
      "name": "米兰达",
      "alpha": "m"
    },
    "VEN00000N": {
      "name": "莫纳加斯",
      "alpha": "m"
    },
    "VEN00000O": {
      "name": "新埃斯帕塔",
      "alpha": "x"
    },
    "VEN00000P": {
      "name": "波图格萨",
      "alpha": "b"
    },
    "VEN00000R": {
      "name": "苏克雷",
      "alpha": "s"
    },
    "VEN00000S": {
      "name": "塔奇拉",
      "alpha": "t"
    },
    "VEN00000T": {
      "name": "特鲁希略",
      "alpha": "t"
    },
    "VEN00000U": {
      "name": "亚拉奎",
      "alpha": "y"
    },
    "VEN00000V": {
      "name": "苏利亚",
      "alpha": "s"
    },
    "VEN00000W": {
      "name": "联邦属地",
      "alpha": "l"
    },
    "VEN00000Y": {
      "name": "阿马库罗三角洲",
      "alpha": "a"
    },
    "VEN00000Z": {
      "name": "亚马孙",
      "alpha": "y"
    }
  },
  "VNM": {
    "VNM0000HC": {
      "name": "胡志明市",
      "alpha": "h"
    },
    "VNM0000HI": {
      "name": "河内",
      "alpha": "h"
    },
    "VNM0000HP": {
      "name": "海防",
      "alpha": "h"
    }
  },
  "VUT": {
    "VUT0000MA": {
      "name": "马朗帕",
      "alpha": "m"
    },
    "VUT0000PE": {
      "name": "彭纳马",
      "alpha": "p"
    },
    "VUT0000SA": {
      "name": "桑马",
      "alpha": "s"
    },
    "VUT0000SH": {
      "name": "谢法",
      "alpha": "x"
    },
    "VUT0000TA": {
      "name": "塔菲阿",
      "alpha": "t"
    },
    "VUT0000TO": {
      "name": "托尔巴",
      "alpha": "t"
    }
  },
  "PSE": {
    "PSE0000GZ": {
      "name": "加沙地带",
      "alpha": "j"
    },
    "PSE0000WE": {
      "name": "西岸",
      "alpha": "x"
    }
  },
  "YEM": {
    "YEM0000AB": {
      "name": "阿比扬",
      "alpha": "a"
    },
    "YEM0000AD": {
      "name": "亚丁",
      "alpha": "y"
    },
    "YEM0000AM": {
      "name": "阿姆兰",
      "alpha": "a"
    },
    "YEM0000BA": {
      "name": "贝达",
      "alpha": "b"
    },
    "YEM0000DA": {
      "name": "达利",
      "alpha": "d"
    },
    "YEM0000DH": {
      "name": "扎玛尔",
      "alpha": "z"
    },
    "YEM0000HD": {
      "name": "哈德拉毛",
      "alpha": "h"
    },
    "YEM0000HJ": {
      "name": "哈杰",
      "alpha": "h"
    },
    "YEM0000HU": {
      "name": "荷台达",
      "alpha": "h"
    },
    "YEM0000IB": {
      "name": "伊卜",
      "alpha": "y"
    },
    "YEM0000JA": {
      "name": "焦夫",
      "alpha": "j"
    },
    "YEM0000LA": {
      "name": "拉赫季",
      "alpha": "l"
    },
    "YEM0000MA": {
      "name": "马里卜",
      "alpha": "m"
    },
    "YEM0000MR": {
      "name": "迈赫拉",
      "alpha": "m"
    },
    "YEM0000MW": {
      "name": "迈赫维特",
      "alpha": "m"
    },
    "YEM0000SD": {
      "name": "萨达",
      "alpha": "s"
    },
    "YEM0000SH": {
      "name": "舍卜沃",
      "alpha": "s"
    },
    "YEM0000SN": {
      "name": "萨那",
      "alpha": "s"
    },
    "YEM0000TA": {
      "name": "塔伊兹",
      "alpha": "t"
    },
    "YEM000ASR": {
      "name": "希赫尔",
      "alpha": "x"
    },
    "YEM000GXF": {
      "name": "赛文",
      "alpha": "s"
    }
  },
  "ZAF": {
    "ZAF000BAE": {
      "name": "东巴克利",
      "alpha": "d"
    },
    "ZAF000BDD": {
      "name": "布雷达斯多普",
      "alpha": "b"
    },
    "ZAF000BEW": {
      "name": "西博福特",
      "alpha": "x"
    },
    "ZAF000BFN": {
      "name": "布隆方丹",
      "alpha": "b"
    },
    "ZAF000BHT": {
      "name": "布隆克斯特斯普利特",
      "alpha": "b"
    },
    "ZAF000BIY": {
      "name": "比索",
      "alpha": "b"
    },
    "ZAF000CPT": {
      "name": "开普敦",
      "alpha": "k"
    },
    "ZAF000DAA": {
      "name": "德阿尔",
      "alpha": "d"
    },
    "ZAF000DUN": {
      "name": "邓迪",
      "alpha": "d"
    },
    "ZAF000DUR": {
      "name": "德班",
      "alpha": "d"
    },
    "ZAF000ELS": {
      "name": "东伦敦",
      "alpha": "d"
    },
    "ZAF000GBD": {
      "name": "格罗布莱斯达尔",
      "alpha": "g"
    },
    "ZAF000GIY": {
      "name": "基雅尼",
      "alpha": "j"
    },
    "ZAF000GRJ": {
      "name": "乔治",
      "alpha": "q"
    },
    "ZAF000IXO": {
      "name": "特克索波",
      "alpha": "t"
    },
    "ZAF000JNB": {
      "name": "约翰内斯堡",
      "alpha": "y"
    },
    "ZAF000KIM": {
      "name": "金伯利",
      "alpha": "j"
    },
    "ZAF000KMH": {
      "name": "库鲁曼",
      "alpha": "k"
    },
    "ZAF000KXE": {
      "name": "克莱克斯多普",
      "alpha": "k"
    },
    "ZAF000LAY": {
      "name": "莱迪史密斯",
      "alpha": "l"
    },
    "ZAF000MAY": {
      "name": "艾利弗山",
      "alpha": "a"
    },
    "ZAF000MDB": {
      "name": "米德尔堡",
      "alpha": "m"
    },
    "ZAF000MOO": {
      "name": "穆里斯堡",
      "alpha": "m"
    },
    "ZAF000MZQ": {
      "name": "姆库泽",
      "alpha": "m"
    },
    "ZAF000NCS": {
      "name": "纽卡斯尔",
      "alpha": "n"
    },
    "ZAF000NLP": {
      "name": "内尔斯普雷特",
      "alpha": "n"
    },
    "ZAF000NYL": {
      "name": "尼尔斯特隆",
      "alpha": "n"
    },
    "ZAF000PLZ": {
      "name": "伊丽莎白港",
      "alpha": "y"
    },
    "ZAF000PRY": {
      "name": "比勒陀利亚",
      "alpha": "b"
    },
    "ZAF000PSS": {
      "name": "谢普斯通港",
      "alpha": "x"
    },
    "ZAF000PTG": {
      "name": "彼德斯堡",
      "alpha": "b"
    },
    "ZAF000PZB": {
      "name": "彼德马里茨堡",
      "alpha": "b"
    },
    "ZAF000RCB": {
      "name": "理查兹湾",
      "alpha": "l"
    },
    "ZAF000RFT": {
      "name": "兰德方丹",
      "alpha": "l"
    },
    "ZAF000RSB": {
      "name": "利斯滕堡",
      "alpha": "l"
    },
    "ZAF000SAS": {
      "name": "萨索尔堡",
      "alpha": "s"
    },
    "ZAF000SBU": {
      "name": "跳羚",
      "alpha": "t"
    },
    "ZAF000THY": {
      "name": "托霍延杜",
      "alpha": "t"
    },
    "ZAF000TLH": {
      "name": "图拉马哈谢",
      "alpha": "t"
    },
    "ZAF000TPB": {
      "name": "特隆普斯堡",
      "alpha": "t"
    },
    "ZAF000ULD": {
      "name": "乌伦迪",
      "alpha": "w"
    },
    "ZAF000UTN": {
      "name": "阿平顿",
      "alpha": "a"
    },
    "ZAF000UTT": {
      "name": "乌姆塔塔",
      "alpha": "w"
    },
    "ZAF000UTW": {
      "name": "昆士敦",
      "alpha": "k"
    },
    "ZAF000VGG": {
      "name": "弗里尼欣",
      "alpha": "f"
    },
    "ZAF000VRU": {
      "name": "弗雷堡",
      "alpha": "f"
    },
    "ZAF000WEL": {
      "name": "韦尔科姆",
      "alpha": "w"
    },
    "ZAF000WOR": {
      "name": "伍斯特",
      "alpha": "w"
    },
    "ZAF000WSH": {
      "name": "韦茨肖克",
      "alpha": "w"
    },
    "ZAF000ZEC": {
      "name": "瑟孔达",
      "alpha": "s"
    }
  },
  "ZMB": {
    "ZMB0000CB": {
      "name": "铜带",
      "alpha": "t"
    },
    "ZMB0000CE": {
      "name": "中央",
      "alpha": "z"
    },
    "ZMB0000EA": {
      "name": "东方",
      "alpha": "d"
    },
    "ZMB0000LK": {
      "name": "卢萨卡",
      "alpha": "l"
    },
    "ZMB0000LP": {
      "name": "卢阿普拉",
      "alpha": "l"
    },
    "ZMB0000NO": {
      "name": "北方",
      "alpha": "b"
    },
    "ZMB0000NW": {
      "name": "西北",
      "alpha": "x"
    },
    "ZMB0000SO": {
      "name": "南方",
      "alpha": "n"
    },
    "ZMB0000WE": {
      "name": "西方",
      "alpha": "x"
    }
  },
  "ZWE": {
    "ZWE0000BU": {
      "name": "布拉瓦约",
      "alpha": "b"
    },
    "ZWE0000HA": {
      "name": "哈拉雷",
      "alpha": "h"
    },
    "ZWE0000MC": {
      "name": "中马绍纳兰",
      "alpha": "z"
    },
    "ZWE0000MD": {
      "name": "中部",
      "alpha": "z"
    },
    "ZWE0000ME": {
      "name": "东马绍纳兰",
      "alpha": "d"
    },
    "ZWE0000ML": {
      "name": "马尼卡兰",
      "alpha": "m"
    },
    "ZWE0000MN": {
      "name": "北马塔贝莱兰",
      "alpha": "b"
    },
    "ZWE0000MS": {
      "name": "南马塔贝莱兰",
      "alpha": "n"
    },
    "ZWE0000MV": {
      "name": "马斯温戈",
      "alpha": "m"
    },
    "ZWE0000MW": {
      "name": "西马绍纳兰",
      "alpha": "x"
    }
  }
};
