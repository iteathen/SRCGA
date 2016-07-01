.class final Lcom/sun/javafx/iio/bmp/BMPDescriptor;
.super Lcom/sun/javafx/iio/common/ImageDescriptor;
.source "BMPImageLoaderFactory.java"


# static fields
.field static final extensions:[Ljava/lang/String;

.field static final formatName:Ljava/lang/String; = "BMP"

.field static final signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

.field static final theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    const/4 v2, 0x0

    const-string v3, "bmp"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->extensions:[Ljava/lang/String;

    .line 37
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

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;-><init>([B)V

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    .line 38
    new-instance v0, Lcom/sun/javafx/iio/bmp/BMPDescriptor;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v9

    invoke-direct {v1}, Lcom/sun/javafx/iio/bmp/BMPDescriptor;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    return-void

    .line 37
    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPDescriptor;
    move-object v1, v0

    const-string v2, "BMP"

    sget-object v3, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->extensions:[Ljava/lang/String;

    sget-object v4, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->signatures:[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/iio/common/ImageDescriptor;-><init>(Ljava/lang/String;[Ljava/lang/String;[Lcom/sun/javafx/iio/ImageFormatDescription$Signature;)V

    .line 42
    return-void
.end method
