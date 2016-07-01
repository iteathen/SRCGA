.class public Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
.super Ljava/lang/Object;
.source "PNGImageLoaderFactory.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageLoaderFactory;


# static fields
.field private static final theInstance:Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;

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
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    new-instance v2, Lcom/sun/javafx/iio/png/PNGImageLoader2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/png/PNGImageLoader2;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
    return-object v0
.end method

.method public getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
    invoke-static {}, Lcom/sun/javafx/iio/png/PNGDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;
    return-object v0
.end method
