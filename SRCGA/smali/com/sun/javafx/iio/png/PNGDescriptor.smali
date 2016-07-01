.class public Lcom/sun/javafx/iio/png/PNGDescriptor;
.super Lcom/sun/javafx/iio/common/ImageDescriptor;
.source "PNGDescriptor.java"


# static fields
.field private static final extensions:[Ljava/lang/String;

.field private static final formatName:Ljava/lang/String; = "PNG"

.field private static final signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

.field private static theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    const-string v3, "png"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->extensions:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    new-instance v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    return-void

    .line 35
    nop

    :array_0
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
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGDescriptor;
    move-object v1, v0

    const-string v2, "PNG"

    sget-object v3, Lcom/sun/javafx/iio/png/PNGDescriptor;->extensions:[Ljava/lang/String;

    sget-object v4, Lcom/sun/javafx/iio/png/PNGDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/iio/common/ImageDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/String;[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;)V

    .line 46
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;
    .locals 4

    .prologue
    .line 49
    const-class v2, Lcom/sun/javafx/iio/png/PNGDescriptor;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sun/javafx/iio/png/PNGDescriptor;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/iio/png/PNGDescriptor;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    .line 52
    :cond_0
    sget-object v0, Lcom/sun/javafx/iio/png/PNGDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
