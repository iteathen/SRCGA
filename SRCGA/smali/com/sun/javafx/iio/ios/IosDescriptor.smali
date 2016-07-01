.class public Lcom/sun/javafx/iio/ios/IosDescriptor;
.super Lcom/sun/javafx/iio/common/ImageDescriptor;
.source "IosDescriptor.java"


# static fields
.field private static final extensions:[Ljava/lang/String;

.field private static final formatName:Ljava/lang/String; = "PNGorJPEGorBMP"

.field private static final signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

.field private static theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    const-string v3, "bmp"

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    const-string v3, "png"

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    const-string v3, "jpg"

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    const-string v3, "jpeg"

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    const-string v3, "gif"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->extensions:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x1

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x2

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x3

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x4

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_4

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    return-void

    .line 38
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_2
    .array-data 1
        0x42t
        0x4dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosDescriptor;
    move-object v1, v0

    const-string v2, "PNGorJPEGorBMP"

    sget-object v3, Lcom/sun/javafx/iio/ios/IosDescriptor;->extensions:[Ljava/lang/String;

    sget-object v4, Lcom/sun/javafx/iio/ios/IosDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/iio/common/ImageDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/String;[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;
    .locals 4

    .prologue
    .line 63
    const-class v2, Lcom/sun/javafx/iio/ios/IosDescriptor;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sun/javafx/iio/ios/IosDescriptor;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/iio/ios/IosDescriptor;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    .line 66
    :cond_0
    sget-object v0, Lcom/sun/javafx/iio/ios/IosDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
