import router from '@ohos.router';

@Entry
@Component
struct Gongdanxingxi {
  @StorageProp('bottomRectHeight')
  bottomRectHeight: number = 0;
  @StorageProp('topRectHeight')
  topRectHeight: number = 0;

  build() {
    Column() {
      // 顶部导航栏
      Row() {
        Text('<')
          .fontSize(30)
          .fontColor('#000000')
          .borderRadius(5)
          .padding({ left: 10, right: 10 })
          .onClick(() => router.back());

        Text('工单信息')
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .fontColor('#000000');
        Row().width(40)
      }
      .width('100%')
      .height(50)
      .backgroundColor('#FFFFFF')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 15, right: 15 })

      // 工单详情内容
      Column() {
        // 工单信息项
        this.InfoItem('工单编号', 'No.20210701')
        this.InfoItem('设备类型', '高点球机-BH58Z1')
        this.InfoItem('设备位置', '市中区汉安大道988号')
        this.InfoItem('设备负责人', '胡艺嘉')
        this.InfoItem('联系电话', '18284305569')
        this.InfoItem('报修人', '刘全')
        this.InfoItem('报修时间', '2021年7月1日11:18:22')
        this.InfoItem('工单状态', '待处理')
        this.InfoItem('故障类型', '未知离线')



        // 故障描述
        Column() {
          Row() {
            Text('故障描述')
              .fontSize(16)
              .fontColor('#333333')
            Blank()
          }
          .width('100%')
          .margin({ bottom: 8 })

          Text('设备突然掉线，重启后仍无法正常使用。')
            .fontSize(14)
            .fontColor('#666666')
            .textAlign(TextAlign.Start)
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding({ left: 20, right: 20, top: 15, bottom: 15 })

        // 故障照片
        Column() {
          Row() {
            Text('故障照片')
              .fontSize(16)
              .fontColor('#333333')
            Blank()
          }
          .width('100%')
          .margin({ bottom: 15 })

          Row() {
            ForEach([1, 2, 3], (item: number) => {
              Column() {
                Image($r('app.media.1'))
                  .width(80)
                  .height(80)
                  .backgroundColor('#E8F4FD')
                  .borderRadius(8)
              }
              .margin({ right: item < 3 ? 15 : 0 })
            })
          }
          .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding({ left: 20, right: 20, top: 15, bottom: 15 })

      }
      .layoutWeight(1)
      .backgroundColor('#FFFFFF')
      .margin({ top: 10 })

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .padding({ top: px2vp(this.topRectHeight), bottom: px2vp(this.bottomRectHeight) })
  }

  @Builder
  InfoItem(label: string, value: string) {
    Row() {
      Text(label)
        .fontSize(16)
        .fontColor('#333333')
        .width(80)

      Blank()

      Text(value)
        .fontSize(16)
        .fontColor('#666666')
        .textAlign(TextAlign.End)
    }
    .width('100%')
    .height(50)
    .padding({ left: 20, right: 20 })
    .border({
      width: { bottom: 0.5 },
      color: '#E5E5E5'
    })
  }
}