import router from '@ohos.router'; // 引入路由模块
@Entry
@Component
export struct Workbench {
  @StorageProp('bottomRectHeight')
  bottomRectHeight: number = 0;
  @StorageProp('topRectHeight')
  topRectHeight: number = 0;

  build() {
    Column() {
      Row() {
        Text('工作台')
          .fontSize(26)
          .fontWeight(700)
          .width('100%')
          .textAlign(TextAlign.Center) // 如果需要居中

      }
      //我的工作
      Column({ space: 20 }) {
        //标题
        Row() {
          Text('我的工作')
        }
        .width('100%')
        .margin({ top: 30 })
        .justifyContent(FlexAlign.SpaceBetween)



        Row() {
          Column({ space: 20 }) {
            // 第一行（4个项目）
            Row() {
              Column({ space: 20 }) {
                Image($r('app.media.work1')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('消息公告')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/XiaoXiGongGao/XiaoXiGongGao', // 目标页面的路由地址
                  params: {
                    title: '消息公告' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%') // 占每行四分之一宽度

              Column({ space: 20 }) {
                Image($r('app.media.work2')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('警情任务')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/JingQinRenWu/JingQingRenWu', // 目标页面的路由地址
                  params: {
                    title: '警情任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work3')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('特勤任务')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/TeQingRenWu/TeQinRenWu', // 目标页面的路由地址
                  params: {
                    title: '特勤任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work4')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('勤务排班')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QinWuPaiBan/QinWu', // 目标页面的路由地址
                  params: {
                    title: '勤务排班' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
            }
            .width('100%')



          }
          .width('100%')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      //常用任务
      Column({ space: 20 }) {
        //标题
        Row() {
          Text('常用任务')
        }
        .width('100%')
        .margin({ top: 30 })
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Column({ space: 20 }) {
            // 第一行（4个项目）
            Row() {
              Column({ space: 20 }) {
                Image($r('app.media.work5')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('施工占道')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/ShiGong/ShiGong', // 目标页面的路由地址
                  params: {
                    title: '特勤任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%') // 占每行四分之一宽度

              Column({ space: 20 }) {
                Image($r('app.media.work6')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('缉查布控')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/JiChaBuKong/JiCha', // 目标页面的路由地址
                  params: {
                    title: '特勤任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work7')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('问题上报')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/WenTiShangBao/QuestionSubmit', // 目标页面的路由地址
                  params: {
                    title: '警情任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work8')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('故障上报')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/GuZhangShangBao/ErrorSubmit', // 目标页面的路由地址
                  params: {
                    title: '警情任务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
            }
            .width('100%')

            // 第二行（剩余1个项目）
            Row() {
              Column({ space: 20 }) {
                Image($r('app.media.work9')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('问题调研上报')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/YiChangShangBao/ExceptionSubmit', // 目标页面的路由地址
                  params: {
                    title: '异常上报' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
            }
            .width('100%')
          }
          .width('100%')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      //我的流程
      Column({ space: 20 }) {
        //标题
        Row() {
          Text('我的流程')
        }
        .width('100%')
        .margin({ top: 30 })
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Column({ space: 20 }) {
            // 第一行（4个项目）
            Row() {
              Column({ space: 20 }) {
                Image($r('app.media.work10')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('审批管理')
                  .fontSize(14)
              }
              .onClick(() => {
                // 点击后跳转到审批管理页面
                router.pushUrl({
                  url: 'pages/ShenPiGuanLi/ApprovalManagement' // 根据你的路由配置修改路径
                });
              })
              .width('25%') // 占每行四分之一宽度

              Column({ space: 20 }) {
                Image($r('app.media.work11')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('我的上报')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/WoDeShangBao/MyReport', // 目标页面的路由地址
                  params: {
                    title: '我的上报' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work12')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('请假管理')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/QingJia/QingJia', // 目标页面的路由地址
                  params: {
                    title: '请假管理' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')

              Column({ space: 20 }) {
                Image($r('app.media.work13')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('我的效绩')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/JiXiao/JiXiao', // 目标页面的路由地址
                  params: {
                    title: '异常勤务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
            }
            .width('100%')

            // 第二行（剩余1个项目）
            Row() {
              Column({ space: 20 }) {
                Image($r('app.media.work14')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('异常勤务')
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/YiChangQingWu/YiChang', // 目标页面的路由地址
                  params: {
                    title: '异常勤务' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
              Column({ space: 20 }) {
                Image($r('app.media.work15')) // 统一使用图片a
                  .width(40)
                  .height(40)
                Text('异常警情' )
                  .fontSize(14)
              }
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/YiChangJingQin/AbnormalCase', // 目标页面的路由地址
                  params: {
                    title: '异常警情' // 可选参数，传递给目标页面
                  }
                });
              })
              .width('25%')
            }
            .width('100%')
          }
          .width('100%')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      .justifyContent(FlexAlign.Start)
      .width('100%')
      .height('100%')

    }
    .padding({ top: px2vp(this.topRectHeight), bottom: px2vp(this.bottomRectHeight) })
    .width('100%')
    .height('100%')
  }
}
//消息公告
@Component
export struct xiaoxigonggao {
  build() {
    Text('消息公告')

  }
}
//警情任务
@Component
struct jingqingrenwu {
  build() {
    Text('警情任务')

  }
}
//特勤任务
@Component
struct teqinrenwu {
  build() {
    Text('特勤任务')

  }
}
//勤务排班
@Component
struct qinwupaiban {
  build() {
    Text('勤务排班')

  }
}

//施工占道
@Component
struct shigongzhandao {
  build() {
    Text('施工占道')

  }
}
//缉查布控
@Component
struct jichabukong {
  build() {
    Text('缉查布控')

  }
}
//占道停车
@Component
struct zhandaotingche {
  build() {
    Text('占道停车')

  }
}
//故障上报
@Component
struct guzhangshangbao {
  build() {
    Text('故障上报')

  }
}
//问题调研上报
@Component
struct wentidiaoyanshangbao {
  build() {
    Text('问题调研上报')

  }
}

//审批管理
@Component
struct shenpiguanli {
  build() {
    Text('审批管理')
  }
}
//我的上报
@Component
struct wodeshangbao {
  build() {
    Text('我的上报')

  }
}
//请假管理
@Component
struct qingjiaguanli {
  build() {
    Text('请假管理')

  }
}
//我的绩效
@Component
struct wodejixiao {
  build() {
    Text('我的绩效')

  }
}
//异常勤务
@Component
struct yichangqinwu {
  build() {
    Text('异常勤务')

  }
}
//异常警情
@Component
struct yichangjingqing {
  build() {
    Text('异常警情')

  }
}



