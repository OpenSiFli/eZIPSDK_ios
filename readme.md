# eZIPSDK For iOS
- 思澈 iOS eZipSDK 
## 1.集成

### 1.1 导入eZIPSDK

`eZIPSDK.framework`

- SwiftPackage 方式

```
https://github.com/OpenSiFli/eZIPSDK_ios.git
```
- 最新版本 2.4.3

## 2.接口定义

- png/gif

```objective-c
   /// png格式文件转为ezipBin类型。转换失败返回nil。
/// @param pngData png文件数据 或者Gif数据
/// @param eColor 颜色字符串 color type as below: rgb565, rgb565A, rbg888, rgb888A
/// @param eType eizp类型 0 keep original alpha channel;1 no alpha chanel
/// @param binType bin类型 0 to support rotation; 1 for no rotation
/// @param boardType 主板类型 @See SFBoardType 0:55x 1:56x  2:52x
/// @return ezip or apng result, nil for fail
+(nullable NSData *)EBinFromPNGData:(NSData *)pngData
                             eColor:(NSString *)eColor
                              eType:(uint8_t)eType
                            binType:(uint8_t)binType
                          boardType:(SFBoardType)boardType;
```

- 序列帧

```objective-c
/// Nor 方案 将png格式文件序列转为ezipBin类型。转换失败返回nil。
/// @param pngDatas png文件数据序列
/// @param eColor 颜色字符串 color type as below: rgb565, rgb565A, rbg888, rgb888A
/// @param eType eizp类型 0 keep original alpha channel;1 no alpha chanel
/// @param binType bin类型 0 to support rotation; 1 for no rotation
/// @param boardType 主板类型 @See SFBoardType 0:55x 1:56x  2:52x
/// @param interval 序列帧间隔
/// @return ezip or apng result, nil for fail
+(nullable NSData *)EBinFromPngSequence:(NSArray<NSData *> *)pngDatas
                               eColor:(NSString *)eColor
                                eType:(uint8_t)eType
                              binType:(uint8_t)binType
                            boardType:(SFBoardType)boardType
                               interval:(uint32_t)interval;
```

## 3.使用
```swift
  let convertedResult = ImageConvertor.eBin(fromPNGData: srcData, eColor: "rgb565", eType: UInt8(0), binType: UInt8(1), boardType: 1) 
```

## 4.Change Log
- 2.2.3 适用于solution 110
- 2.4.1 EBinFromPngSequence 增加interval
- 2.4.2 ezip_bin_type = 0时设置g_pal_support = 0
- 2.4.3 支持apng