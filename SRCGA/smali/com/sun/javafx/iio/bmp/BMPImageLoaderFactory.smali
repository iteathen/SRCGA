.class public final Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
.super Ljava/lang/Object;
.source "BMPImageLoaderFactory.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageLoaderFactory;


# static fields
.field private static final theInstance:Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;
    .locals 1

    .prologue
    .line 548
    sget-object v0, Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;

    return-object v0
.end method


# virtual methods
.method public createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    new-instance v2, Lcom/sun/javafx/iio/bmp/BMPImageLoader;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
    return-object v0
.end method

.method public getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
    sget-object v1, Lcom/sun/javafx/iio/bmp/BMPDescriptor;->theInstance:Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;
    return-object v0
.end method
