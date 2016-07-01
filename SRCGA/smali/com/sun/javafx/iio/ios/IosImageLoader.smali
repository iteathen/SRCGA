.class public Lcom/sun/javafx/iio/ios/IosImageLoader;
.super Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.source "IosImageLoader.java"


# static fields
.field public static final GRAY:I = 0x0

.field public static final GRAY_ALPHA:I = 0x1

.field public static final GRAY_ALPHA_PRE:I = 0x2

.field public static final PALETTE:I = 0x3

.field public static final PALETTE_ALPHA:I = 0x4

.field public static final PALETTE_ALPHA_PRE:I = 0x5

.field public static final PALETTE_TRANS:I = 0x6

.field public static final RGB:I = 0x7

.field public static final RGBA:I = 0x8

.field public static final RGBA_PRE:I = 0x9

.field private static final colorSpaceMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/javafx/iio/ImageStorage$ImageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delayTime:I

.field private inHeight:I

.field private inWidth:I

.field private isDisposed:Z

.field private loopCount:I

.field private nImages:I

.field private structPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    .line 113
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoader$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_TRANS:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    sget-object v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoader;->initNativeLoading()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/javafx/iio/common/ImageDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v2, p1

    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v3, p2

    .local v3, "desc":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v5, v1

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 75
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->isDisposed:Z

    .line 189
    move-object v5, v2

    if-nez v5, :cond_0

    .line 190
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Image loader: input stream == null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_0
    move-object v5, v1

    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    :try_start_0
    invoke-direct {v8}, Lcom/sun/javafx/iio/ios/IosImageLoader;->shouldReportProgress()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/iio/ios/IosImageLoader;->loadImage(Ljava/io/InputStream;Z)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 200
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->checkNativePointer()V

    .line 201
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->retrieveDelayTime()V

    .line 202
    return-void

    .line 195
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 196
    .local v4, "e":Ljava/io/IOException;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->dispose()V

    .line 197
    move-object v5, v4

    throw v5
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/javafx/iio/common/ImageDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v2, p1

    .local v2, "urlString":Ljava/lang/String;
    move-object v3, p2

    .local v3, "desc":Lcom/sun/javafx/iio/common/ImageDescriptor;
    move-object v5, v1

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 75
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->isDisposed:Z

    .line 170
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 174
    .line 177
    move-object v5, v1

    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    :try_start_1
    invoke-direct {v8}, Lcom/sun/javafx/iio/ios/IosImageLoader;->shouldReportProgress()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/iio/ios/IosImageLoader;->loadImageFromURL(Ljava/lang/String;Z)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .line 183
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->checkNativePointer()V

    .line 184
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->retrieveDelayTime()V

    .line 185
    return-void

    .line 172
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 173
    .local v4, "mue":Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Image loader: Malformed URL!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    .end local v4    # "mue":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 179
    .local v4, "e":Ljava/io/IOException;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->dispose()V

    .line 180
    move-object v5, v4

    throw v5
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoader;->lambda$static$248()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private checkNativePointer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Ljava/io/IOException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unable to initialize image native loader!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    return-void
.end method

.method private static native disposeLoader(J)V
.end method

.method private native getColorSpaceCode(J)I
.end method

.method private native getDelayTime(J)I
.end method

.method private native getImageBuffer(JI)[B
.end method

.method private native getNumberOfComponents(J)I
.end method

.method private static native initNativeLoading()V
.end method

.method private static synthetic lambda$static$248()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    const-string v0, "javafx_iio"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method private native loadImage(Ljava/io/InputStream;Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native loadImageFromURL(Ljava/lang/String;Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native resizeImage(JII)V
.end method

.method private retrieveDelayTime()V
    .locals 6

    .prologue
    .line 160
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->nImages:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 161
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/iio/ios/IosImageLoader;->getDelayTime(J)I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->delayTime:I

    .line 163
    :cond_0
    return-void
.end method

.method private setInputParameters(IIII)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "imageCount":I
    move v4, p4

    .local v4, "loopCount":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->inWidth:I

    .line 140
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->inHeight:I

    .line 141
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->nImages:I

    .line 142
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/iio/ios/IosImageLoader;->loopCount:I

    .line 143
    return-void
.end method

.method private shouldReportProgress()Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ios/IosImageLoader;->listeners:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ios/IosImageLoader;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateProgress(F)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move v1, p1

    .local v1, "progressPercentage":F
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/ios/IosImageLoader;->updateImageProgress(F)V

    .line 147
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 7

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-boolean v2, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->isDisposed:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->isDisposed:Z

    .line 210
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    invoke-static {v2, v3}, Lcom/sun/javafx/iio/ios/IosImageLoader;->disposeLoader(J)V

    .line 211
    move-object v2, v1

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit v6

    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/iio/ios/IosImageLoader;->dispose()V

    .line 217
    return-void
.end method

.method public load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    move/from16 v4, p1

    .local v4, "imageIndex":I
    move/from16 v5, p2

    .local v5, "width":I
    move/from16 v6, p3

    .local v6, "height":I
    move/from16 v7, p4

    .local v7, "preserveAspectRatio":Z
    move/from16 v8, p5

    .local v8, "smooth":Z
    move v15, v4

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->nImages:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 226
    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/iio/ios/IosImageLoader;->dispose()V

    .line 227
    const/4 v15, 0x0

    move-object v3, v15

    .line 261
    .end local v3    # "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    :goto_0
    return-object v3

    .line 231
    .restart local v3    # "this":Lcom/sun/javafx/iio/ios/IosImageLoader;
    :cond_0
    move-object v15, v3

    iget v15, v15, Lcom/sun/javafx/iio/ios/IosImageLoader;->inWidth:I

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->inHeight:I

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-static/range {v15 .. v19}, Lcom/sun/javafx/iio/common/ImageTools;->computeDimensions(IIIIZ)[I

    move-result-object v15

    move-object v9, v15

    .line 232
    .local v9, "widthHeight":[I
    move-object v15, v9

    const/16 v16, 0x0

    aget v15, v15, v16

    move v5, v15

    .line 233
    move-object v15, v9

    const/16 v16, 0x1

    aget v15, v15, v16

    move v6, v15

    .line 235
    new-instance v15, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v29, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v29

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 237
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->delayTime:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    const/16 v22, 0x0

    .line 241
    :goto_1
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->nImages:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->loopCount:I

    move/from16 v23, v0

    .line 242
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    :goto_2
    move/from16 v24, v5

    .line 243
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move/from16 v25, v6

    .line 244
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v16 .. v28}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v10, v15

    .line 249
    .local v10, "md":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v15, v3

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/iio/ios/IosImageLoader;->updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 251
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    move-wide/from16 v16, v0

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v15 .. v19}, Lcom/sun/javafx/iio/ios/IosImageLoader;->resizeImage(JII)V

    .line 254
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    move-wide/from16 v16, v0

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/iio/ios/IosImageLoader;->getNumberOfComponents(J)I

    move-result v15

    move v11, v15

    .line 255
    .local v11, "nComponents":I
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    move-wide/from16 v16, v0

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/iio/ios/IosImageLoader;->getColorSpaceCode(J)I

    move-result v15

    move v12, v15

    .line 256
    .local v12, "colorSpaceCode":I
    sget-object v15, Lcom/sun/javafx/iio/ios/IosImageLoader;->colorSpaceMapping:Ljava/util/Map;

    move/from16 v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v13, v15

    .line 258
    .local v13, "imageType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->structPointer:J

    move-wide/from16 v16, v0

    move/from16 v18, v4

    invoke-direct/range {v15 .. v18}, Lcom/sun/javafx/iio/ios/IosImageLoader;->getImageBuffer(JI)[B

    move-result-object v15

    move-object v14, v15

    .line 260
    .local v14, "pixels":[B
    new-instance v15, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v29, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v29

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    .line 261
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v5

    move/from16 v22, v11

    mul-int v21, v21, v22

    const/16 v22, 0x0

    check-cast v22, [[B

    move-object/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object v3, v15

    goto/16 :goto_0

    .line 237
    .end local v10    # "md":Lcom/sun/javafx/iio/ImageMetadata;
    .end local v11    # "nComponents":I
    .end local v12    # "colorSpaceCode":I
    .end local v13    # "imageType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .end local v14    # "pixels":[B
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/iio/ios/IosImageLoader;->delayTime:I

    move/from16 v22, v0

    .line 241
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto/16 :goto_1

    .line 242
    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_2
.end method
