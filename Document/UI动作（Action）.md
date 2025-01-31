
# UI 动作

## 概述

**UI动作(Action)** 是在用户界面设计中用于描述和控制界面元素动态行为的概念，它们可以作用于单个界面元素上，为这些元素添加交互性和视觉效果。

相关接口请参见`CL: AddGlobalAction`、`GUI: WndAddAction`。

配置**UI 动作 (Action)**，实际上就是在配置一张表，具有表的基本格式：（可以使用 lua 进行配置然后再用 `json.encode` 转换为 `JSON` 字符串传入）


一个全局动作创建示例：

``` lua
local global_action = {
    Actions = {
        global_tag_MoveTo = {Action="MoveTo", Duration=3, PositionX=300, PositionY=300},
        global_tag_MoveBy = {Action="MoveBy", Duration=3, PositionX=-300, PositionY=-300},
    }
}
if CL:AddGlobalAction(json.encode(global_action)) ~= true then
    dbg("添加动作失败:" .. LuaRet)
end
```

一个本地动作创建示例：

``` lua
local actions = {
    ---@type string[] @定义了一些全局标签，全局标签是通过`CL:AddGlobalAction(action)`注册的
	Imports = {"global_tag_MoveBy","global_tag_MoveTo"},
	Actions = {
	    tag_MoveBy = {
			Action = "MoveBy",
			Duration = 3,
			PositionX = 300,
			PositionY = 300,
			Ease = "EaseBounceIn"
	    },
        tag_MoveBy_back = {
			Action = "MoveBy",
			Duration = 3,
			PositionX = -300,
			PositionY = -300,
			Ease = "EaseBounceIn"
		},
		tag_Spawn = {
		    Actioin = "Spawn",
		    Tags = {"tag_MoveBy","tag_MoveBy_back"}
		}
		--- ......
	},
	RunAction = {
	    Tag = "Tag_RunAction",
	    Run = "tag_Spawn"
	}
}
if GUI:WndAddAction(_GUIHandle, json.encode(action)) ~= true then
	dbg("添加动作失败:" .. LuaRet)
end
```

定义完动作后别忘了通过 api 注册。

## UI 动作配置的基本结构

对于**本地自定义动作**来说，有这三项基本**动作配置**：

``` lua
---@class localUIAction
---@filed Imports string[] 
---@filed Action <string, table>[] @键值对的数组
---@filed RunAction table
local actions = {
	Imports = {},
	Actions = {},
	RunAction = {},
}
```

其中 `actions` 是由用户自定义的，其余的三个成员（**配置模块**）：`Imports`，`Actions`，`RunAction` 则是由引擎规定的名称。具体如表 1 所示。

其中 `Imports` 是可选地，如果没有或者不想用全结局 UI 动作，则可以不用此字段。

由示例我们可以看出 `Action` 是由一系列 `action` (窗体动作) 对象 `object` 组成的。比如 `tag_MoveBy` 就是一个对象名。

`action` (窗体动作) 对象 `object` 内有 `tag` 成员，规定了动作的类型。共有三种动作：`Action`（基本动作），`Ease`（变速动作），`EaseParams`（变速动作类型的参数）。三种动作可以共存，我们以一个名为 `tag_EaseInOut` 的 `action` 对象举例：

``` lua
--- 一个object
tag_EaseInOut = {
	Action = "MoveTo",
	Duration = 3,
	PositionX = 300,
	PositionY = 300,
	Ease = "EaseInOut",
	EaseParams = {2.0}
},
```

在这段 lua 代码中，我们就定义了一个基本的动作对象。如果执行这个动作对象的话，其对应的窗体应该在规定的动作**时长**中**（`Duration`）**变速**（`Ease` 和 `EaseParams`）地移动**一段距离**（`PositionX` 和 `PositionY`）（由 x，y 坐标规定）

然后我们可以再多定义几个这样的对象在 `Actions` 表中，需要注意的是表 1 中有：`Action:string` 这样的注解，这是 `JSON` 的键值对的写法，在写 lua 的时候换成一个对应的赋值表达式即可。

我们再观察对象就会发现：一个动作规定（`Action = "MoveTo",`）常常跟着一些属性定义赋值语句，这些是附属于动作的，可以看表表项中的解释，里面有对应的选项配置。
比如说间隔动作就是：

``` lua
object_name = {
	-- ...
	Action = "MoveTo",
	Duration = 3,
    PositionX = 300,
    PositionY = 300,
    -- ...
}
```

这就是配置一个动作的**结构逻辑**。所有的配置项，无论是说明动作种类的还是描述动作行为的，都是同一层级地写在一个 `action` (窗体动作) 对象 `object` 的表中。没有多余的结构

到了这里我们就已经基本理清了一个窗口动作对象和一个动作配置的**基本结构逻辑**了。

## UI 动作集（动画集）安排

### 组合动作

UI 动作集的安排即是安排动作的执行次序，次序的安排答题分为两种：**串行**和**并行**，此外还有两种特殊的方式：**按一定次数重复动作**，**永远重复某种动作**。并且这四种动作可以互相组合。

具体的设置上，还是依照这基本的设置逻辑，这不过此时的 `Action` 类型是**基本动作**中的**组合动作**（可将间隔动作和即时动作组合起来）。

需要注意的是**组合动作**属于**基本动作**一样也是一个 `action` (窗体动作) 对象 `object` 。同样需要写在 `Actions` 表中。

一个示例：
``` lua
tag_Spawn = {
    Actioin = "Spawn",
    Tags = {"tag_MoveBy","tag_MoveBy_back"}
}
```

该设置规定了 `Tags` 内的 `action` 对象是按照**并行**也就是一起发生的，此外还有串行：

``` lua
tag_Sequence = {
 Action = "Sequence",
 Tags = { "tag_MoveBy","tag_Function", "tag_Hide1","tag_FadeIn"  }
}
```

串行是 `Tags` 表中的 `action` 对象顺序执行，一个执行完了，才能执行下一个，所以如果想要有特殊效果如执行一个回调函数，请妥善安排执行次序。

具体看表  2

### 执行次序安排

组合动作有四种：串行，并行，重复多次和永久重复。

我们可以按照他们执行开始的事件和结束事件一次排序，并将前后前后关系安排清楚即可


## 执行 UI 动作

在结构中我们注意到有 `RunAction` 成员，这就是标记将要执行对象的字段。

示例：

``` lua
RunAction = {
	Tag = "Tag_RunAction",
	Run = "tag_Sequence2"
}
```

其中 `Tag` 字段表示了本次执行的标识，而 `Run` 字段中存放的是要执行的动作标识，即 `action` 对象名。


## 注册 UI 动作

在设计完 UI 动作后，必然要有对应的窗体控件来执行这些动作。
我们用 `GUI:WndAddAction(handle,action)` api 来添加控件的动作。其中 `handle` 参数是控件的句柄，`action` 参数是 JSON 格式的动作配置。我们可以用 `json.encode` 来将 `lua` 对象转换为 `JSON` 字符串。

该 api 的返回值是 `bool` 类型的值，放映了添加动作是否成功。如果动作添加失败了，api 将失败原因保存在全局变量 `LuaRet` 中。

添加动作示例：
``` lua
if GUI:WndAddAction(_GUIHandle, json.encode(action)) ~= true then
	dbg("添加动作失败:" .. LuaRet)
end
```

## 表项和图示
### **表 1 动作配置**

下面是对三个配置模块的解释：(表 1：**动作配置**)

| **配置模块**    | **说明**                    | **类型**                                                                                                                                                                |
| ----------- | ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Imports`   | 全局导入模块，用于导入全局的`Action`    | 字符串数组 `string[]`，可填写全局配置的动作 `tag`                                                                                                                                     |
| `Actions`   | 本地定义模块，用于定义本地自定义的`Action` | `action` (窗体动作)对象 `object`，其中每个动作的 `tag` 是唯一的:<br>-  `Action:string`:指定基本动作类型，<br>-  `Ease:string`:指定变速动作类型，<br>-  `EaseParams:float[]`:是变速动作类型的参数（`Ease`不填的话，默认线性模式） |
| `RunAction` | 执行模块，用于指定要执行的`Action`类型   | 执行对象 `object`，其中<br>-  `Tag` 是本次执行的标识，<br>-  `Run` 是要执行的动作标识                                                                                                          |



### **表 2  基本动作**

间隔动作：

| **间隔动作**    | **By和To的区别在于相对和绝对**                                                                                                                         |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `MoveBy`    | 移动指定的距离，`MoveBy` (移动参数：<br>- `Duration:float`:动作时长，<br>- `PositionX:int`:移动 `X`  距离，<br>- `PositionY:int`:移动 `Y` 距离，<br>- `Ease`:变速运动可选     |
| `MoveTo`    | 移动到目标位置，`MoveTo` (移动，<br>-  `Duration:float`:动作时长，<br>-  `PositionX:int`:移动  `X` 距离，<br>-  `PositionY:int`:移动 `Y`  距离，<br>-  `Ease`:变速运动可选) |
| `FadeIn`    | 渐显效果，`FadeIn` (渐进，`Duration:float`:动作时长)                                                                                                    |
| `FadeOut`   | 渐隐效果，`FadeOut`(渐出，`Duration:float`:动作时长)                                                                                                    |
| `FadeTo`    | 修改透明度到指定值，`FadeTo` (透明，<br>-  `Duration:float`:动作时长，<br>-  `Opacity:int`: 透明度`0-255`，<br>-  `Ease`:变速运动可选)                                  |
| `DelayTime` | 延迟动作，`DelayTime`(延迟，`Duration:float`:动作时长)                                                                                                  |
即时动作：

| **即时动作**           | **立即执行的动作**                                                                         |
| ------------------ | ----------------------------------------------------------------------------------- |
| `Show`             | 立即显示，`Show`(显示)                                                                     |
| `Hide`             | 立即隐藏，`Hide`(隐藏)                                                                     |
| `ToggleVisibility` | 显隐状态切换，`ToggleVisibility`(切换显示隐藏)                                                   |
| `RemoveSelf`       | 关闭，`RemoveSelf`(关闭)                                                                 |
| `Place`            | 放置在目标位置，`Place` (设置位置，<br>`PosistionX:int` : `X` 坐标，`PositionY:int`:Y坐标)            |
| `CallFunc`         | 执行回调函数，<br>`CallFunc(回调函数，CallName:string:回调函数名，CallParam:string:回调参数可选)`           |
| `CallFuncN`        | 执行回调函数，<br>`CallFuncN(回调函数，回调参数控件句柄，CallName:string:回调函数名，CallParam:string:回调参数可选)` |
组合动作：

| **组合动作**        | **可将间隔动作和即时动作组合起来**                                                                               |
| --------------- | ------------------------------------------------------------------------------------------------- |
| `Sequence`      | 顺序执行动作，创建的动作将按顺序依次运行，`Sequence`(顺序执行动作，`Tags:string[]`:动作`tag`数组)                                 |
| `Spawn`         | 同步执行动作，同步执行一组动作，`Spawn`(并行执行动作，`Tags:string[]`:动作`tag`数组)                                         |
| `Repeat`        | 重复动作，可以按一定次数重复一个动作，Repeat(重复执行N次动作，`Tag:string`:动作`tag`，`Times:uint32`:重复次数)                      |
| `RepeatForever` | 永远地重复一个动作，`RepeatForever`(无限重复执行动作，`Tag:string`:动作`tag`，不可将该动作作为`Sequence` 、`Spawn` 、`Repeat`的参数) |

### **表 3 变速运动**

|**正弦缓动**| |
|---|---|
|`EaseSineIn`|是按正弦函数缓动进入的动作。|
|`EaseSineOut`|是按正弦函数缓动退出的动作。|
|`EaseSineInOut`|是按正弦函数缓动进入并退出的动作。|

| **回震缓动**        |                                                             |
| --------------- | ----------------------------------------------------------- |
| `EaseBackIn`    | 是在相反的方向缓慢移动，然后加速到正确的方向。                                     |
| `EaseBackOut`   | 快速移动超出目标，然后慢慢回到目标点。                                         |
| `EaseBackInOut` | 是在相反的方向缓慢移动，然后加速到正确的方向并快速移动超出目标，然后慢慢回到目标点 参数`1`：幂指数:`float` |
| `E`             | 动作由慢变快。                                                     |
| `E`             | 动作由快变慢。                                                     |
| `EaseIn`        | 动作由慢变快再由快变慢。                                                |

|**跳跃缓动**| |
|---|---|
|`EaseBounceIn`|是按弹跳动作缓动进入的动作。|
|`EaseBounceOut`|是按弹跳动作缓动退出的动作。|
|`EaseBounceInOut`|是按弹跳动作缓动进入并退出的动作。|

| **弹性缓动**           | 参数 1：周期:`float`   |
| ------------------ | ----------------- |
| `EaseElasticIn`    | 是按弹性曲线缓动进入的动作。    |
| `EaseElasticOut`   | 是按弹性曲线缓动退出的动作。    |
| `EaseElasticInOut` | 是按弹性曲线缓动进入并退出的动作。 |

|**指数缓动**| |
|---|---|
|`EaseExponentialIn`|是按指数函数缓动进入的动作。|
|`EaseExponentialOut`|是按指数函数缓动退出的动作。|
|`EaseExponentialInOut`|是按指数函数缓动进入并退出的动作。|

| **贝塞尔曲线缓动**        | 参数1：起始点: `float`，参数2：控制点: `float`, <br>参数3：控制点:`float`，参数4：终点:`float` |
| ------------------ | --------------------------------------------------------------------- |
| `EaseBezierAction` | 是按贝塞尔曲线缓动的动作。                                                         |

|**二次方变速缓动**| |
|---|---|
|`EaseQuadraticActionIn`|是按二次函数缓动进入的动作。|
|`EaseQuadraticActionOut`|是按二次函数缓动退出的动作。|
|`EaseQuadraticActionInOut`|是按二次函数缓动进入并退出的动作。|

|**三次方变速缓动**| |
|---|---|
|`EaseCubicActionIn`|是按三次函数缓动进入的动作。|
|`EaseCubicActionOut`|是按三次函数缓动退出的动作。|
|`EaseCubicActionInOut`|是按三次函数缓动进入并退出的动作。|

|**四次方变速缓动**| 
|---|---|
|`EaseQuarticActionIn`|是按四次函数缓动进入的动作。|
|`EaseQuarticActionOut`|是按四次函数缓动退出的动作。|
|`EaseQuarticActionInOut`|是按四次函数缓动进入并退出的动作。|

|**五次方变速缓动**| 
|---|---|
|`EaseQuinticActionIn`|是按五次函数缓动进的动作。|
|`EaseQuinticActionOut`|是按五次函数缓动退出的动作。|
|`EaseQuinticActionInOut`|是按五次函数缓动进入并退出的动作。|

|**圆形曲线缓动**| |
|---|---|
|`EaseCircleActionIn`|是按圆形曲线缓动进入的动作。|
|`EaseCircleActionOut`|是按圆形曲线缓动退出的动作。|
|`EaseCircleActionInOut`|是按圆形曲线缓动进入并退出的动作。|

### **图 1 变速运动效果**
![[附件/UIAction.png]]


# 官方示例代码：
``` lua
local _Parent = LuaGlobal["AttachPartent"]

local global_action = {
    Actions = {
        global_tag_MoveTo = {Action="MoveTo", Duration=3, PositionX=300, PositionY=300},
        global_tag_MoveBy = {Action="MoveBy", Duration=3, PositionX=-300, PositionY=-300},
    }
}
if CL:AddGlobalAction(json.encode(global_action)) ~= true then
    dbg("添加动作失败:" .. LuaRet)
end

_GUIHandle = GUI:ButtonCreate(_Parent, "test_button", 4010210000, 0, 0)
if _GUIHandle ~= 0 then
    local action = {
        --Imports定义了一些全局标签，这些标签是预定义的动作类型，可以在Actions中重复使用。
        Imports = {"global_tag_MoveBy","global_tag_MoveTo"},
        --Actions定义了一系列的动作，每个动作都有自己的标签和参数
        Actions = {
            tag_MoveBy = {
                Action = "MoveBy",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseBounceIn"
            },
            tag_MoveBy_back = {
                Action = "MoveBy",
                Duration = 3,
                PositionX = -300,
                PositionY = -300,
                Ease = "EaseBounceIn"
            },
            tag_FadeTo = {
                Action = "FadeTo",
                Duration = 3,
                Opacity = 255,
                Ease = "EaseBounceIn"
            },
            tag_FadeIn = {
                Action = "FadeIn",
                Duration = 3
            },
            tag_FadeOut = {
                Action = "FadeOut",
                Duration = 3
            },
            tag_DelayTime = {
                Action = "DelayTime",
                Duration = 1
            },
            tag_CallFunc = {
                Action = "CallFunc",
                CallName = "test_callfunc",
                CallParam = "test123"
            },
            tag_CallFuncN = {
                Action = "CallFuncN",
                CallName = "test_callfuncn",
                CallParam = "test123"
            },
            tag_Hide = {
                Action = "Hide"
            },
            tag_Show = {
                Action = "Show"
            },
            tag_ToggleVisibility = {
                Action = "ToggleVisibility"
            },
            tag_Place = {
                Action = "Place",
                PositionX = 0,
                PositionY = 0
            },
            tag_EaseIn = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseIn",
                EaseParams = {2.0}
            },
            tag_EaseOut = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseOut",
                EaseParams = {2.0}
            },
            tag_EaseInOut = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseInOut",
                EaseParams = {2.0}
            },
            tag_EaseElasticIn = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseElasticIn",
                EaseParams = {1.5}
            },
            tag_EaseElasticOut = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseElasticOut",
                EaseParams = {1.5}
            },
            tag_EaseElasticInOut = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseElasticInOut",
                EaseParams = {1.5}
            },
            tag_EaseBezierAction = {
                Action = "MoveTo",
                Duration = 3,
                PositionX = 300,
                PositionY = 300,
                Ease = "EaseBezierAction",
                EaseParams = {0.0, 1.5, 0.3, 1.0}
            },
            tag_Sequence = {
                Action = "Sequence",
                Tags = {"global_tag_MoveBy", "global_tag_MoveTo", "tag_CallFunc","tag_CallFuncN", "tag_MoveBy", "tag_FadeOut", "tag_FadeIn", "tag_FadeTo",
                        "tag_Hide", "tag_DelayTime", "tag_Show", "tag_DelayTime", "tag_ToggleVisibility", "tag_DelayTime", "tag_Show", "tag_DelayTime", "tag_MoveBy_back", 
                        "tag_Place", "tag_EaseIn", "tag_Place", "tag_EaseOut", "tag_Place", "tag_EaseInOut","tag_Place", "tag_EaseElasticIn",
                        "tag_Place", "tag_EaseElasticOut", "tag_Place", "tag_EaseElasticInOut", "tag_Place", "tag_EaseBezierAction"}
            },
            tag_Spawn = {
                Action = "Spawn",
                Tags = {"tag_MoveBy", "tag_FadeOut"}
            },
            tag_Sequence2 = {
                Action = "Sequence",
                Tags = {"tag_Sequence", "tag_Spawn"}
            }
        },
        --RunAction指定了要执行的动作的标签
        RunAction = {
            Tag = "Tag_RunAction",
            Run = "tag_Sequence2"
        }
    }
    if GUI:WndAddAction(_GUIHandle, json.encode(action)) ~= true then
        dbg("添加动作失败:" .. LuaRet)
    end
end

function test_callfunc(value)
    dbg("CallFunc回调参数："..value)
end

function test_callfuncn(handle, value)
    dbg("CallFuncN回调参数："..handle.."|"..value)
end
```
