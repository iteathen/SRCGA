.class public Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
.super Ljava/lang/Object;
.source "IosImageLoaderFactory.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageLoaderFactory;


# static fields
.field private static theInstance:Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    .locals 4

    .prologue
    .line 50
    const-class v2, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    .line 53
    :cond_0
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->theInstance:Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    new-instance v2, Lcom/sun/javafx/iio/ios/IosImageLoader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-static {}, Lcom/sun/javafx/iio/ios/IosDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;-><init>(Ljava/io/InputStream;Lcom/sun/javafx/iio/common/ImageDescriptor;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    return-object v0
.end method

.method public createImageLoader(Ljava/lang/String;)Lcom/sun/javafx/iio/ImageLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    move-object v1, p1

    .local v1, "input":Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/iio/ios/IosImageLoader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-static {}, Lcom/sun/javafx/iio/ios/IosDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;-><init>(Ljava/lang/String;Lcom/sun/javafx/iio/common/ImageDescriptor;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    return-object v0
.end method

.method public getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;
    return-object v0
.end method
