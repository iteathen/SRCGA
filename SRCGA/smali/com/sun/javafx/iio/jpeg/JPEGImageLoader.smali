.class public Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
.super Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.source "JPEGImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final JCS_CMYK:I = 0x4

.field public static final JCS_GRAYSCALE:I = 0x1

.field public static final JCS_RGB:I = 0x2

.field public static final JCS_RGBA:I = 0x6

.field public static final JCS_UNKNOWN:I = 0x0

.field public static final JCS_YCC:I = 0x5

.field public static final JCS_YCCA:I = 0xa

.field public static final JCS_YCCK:I = 0xb

.field public static final JCS_YCbCr:I = 0x3

.field public static final JCS_YCbCrA:I = 0x7


# instance fields
.field private accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

.field private iccData:[B

.field private inColorSpaceCode:I

.field private inHeight:I

.field private inWidth:I

.field private isDisposed:Z

.field private outColorSpaceCode:I

.field private outHeight:I

.field private outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field private outWidth:I

.field private structPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->$assertionsDisabled:Z

    .line 108
    invoke-static {}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    const-class v0, Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->initJPEGMethodIDs(Ljava/lang/Class;)V

    .line 113
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move-object v1, p1

    .local v1, "input":Ljava/io/InputStream;
    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/iio/jpeg/JPEGDescriptor;->getInstance()Lcom/sun/javafx/iio/common/ImageDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/iio/common/ImageLoaderImpl;-><init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V

    .line 61
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    .line 84
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->isDisposed:Z

    .line 86
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    .line 182
    move-object v3, v1

    if-nez v3, :cond_0

    .line 183
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "input == null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_0
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->initDecompressor(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 193
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 194
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Unable to initialize JPEG decompressor"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 189
    .local v2, "e":Ljava/io/IOException;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->dispose()V

    .line 190
    move-object v3, v2

    throw v3

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->lambda$static$249()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private native decompressIndirect(JZ[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native disposeNative(J)V
.end method

.method private native initDecompressor(Ljava/io/InputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initJPEGMethodIDs(Ljava/lang/Class;)V
.end method

.method private static synthetic lambda$static$249()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    const-string v0, "javafx_iio"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method private setInputAttributes(IIIII[B)V
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "colorSpaceCode":I
    move v4, p4

    .local v4, "outColorSpaceCode":I
    move v5, p5

    .local v5, "numComponents":I
    move-object/from16 v6, p6

    .local v6, "iccData":[B
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->inWidth:I

    .line 125
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->inHeight:I

    .line 126
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->inColorSpaceCode:I

    .line 127
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outColorSpaceCode:I

    .line 128
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->iccData:[B

    .line 131
    move v7, v4

    packed-switch v7, :pswitch_data_0

    .line 163
    :pswitch_0
    sget-boolean v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 133
    :pswitch_1
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 134
    .line 166
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_2
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 139
    goto :goto_0

    .line 145
    :pswitch_3
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 146
    goto :goto_0

    .line 148
    :pswitch_4
    move v7, v5

    packed-switch v7, :pswitch_data_1

    .line 159
    :pswitch_5
    sget-boolean v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 150
    :pswitch_6
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 151
    goto :goto_0

    .line 153
    :pswitch_7
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 154
    goto :goto_0

    .line 156
    :pswitch_8
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    iput-object v8, v7, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 157
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setOutputAttributes(II)V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outWidth:I

    .line 173
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outHeight:I

    .line 174
    return-void
.end method

.method private native startDecompression(JIII)I
.end method

.method private updateImageProgress(I)V
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move v1, p1

    .local v1, "outLinesDecoded":I
    move-object v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    move v4, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->updateImageProgress(F)V

    .line 178
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 7

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    invoke-virtual {v2}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->isDisposed:Z

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 200
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->isDisposed:Z

    .line 201
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    invoke-static {v2, v3}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->disposeNative(J)V

    .line 202
    move-object v2, v1

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit v6

    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    throw v1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->dispose()V

    .line 208
    return-void
.end method

.method public load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    move/from16 v2, p1

    .local v2, "imageIndex":I
    move/from16 v3, p2

    .local v3, "width":I
    move/from16 v4, p3

    .local v4, "height":I
    move/from16 v5, p4

    .local v5, "preserveAspectRatio":Z
    move/from16 v6, p5

    .local v6, "smooth":Z
    move v13, v2

    if-eqz v13, :cond_0

    .line 212
    const/4 v13, 0x0

    move-object v1, v13

    .line 262
    .end local v1    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "this":Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    invoke-virtual {v13}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->lock()V

    .line 218
    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->inWidth:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->inHeight:I

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v13 .. v17}, Lcom/sun/javafx/iio/common/ImageTools;->computeDimensions(IIIIZ)[I

    move-result-object v13

    move-object v7, v13

    .line 219
    .local v7, "widthHeight":[I
    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    move v3, v13

    .line 220
    move-object v13, v7

    const/4 v14, 0x1

    aget v13, v13, v14

    move v4, v13

    .line 222
    new-instance v13, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v3

    .line 224
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v23, v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v14 .. v26}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v8, v13

    .line 226
    .local v8, "md":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v13, v1

    move-object v14, v8

    invoke-virtual {v13, v14}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 228
    const/4 v13, 0x0

    move-object v9, v13

    .line 232
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    move-object v13, v1

    move-object v14, v1

    :try_start_0
    iget-wide v14, v14, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outColorSpaceCode:I

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->startDecompression(JIII)I

    move-result v13

    move v10, v13

    .line 238
    .local v10, "outNumComponents":I
    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outWidth:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outHeight:I

    mul-int/2addr v13, v14

    move v14, v10

    mul-int/2addr v13, v14

    new-array v13, v13, [B

    move-object v11, v13

    .line 239
    .local v11, "array":[B
    move-object v13, v11

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v9, v13

    .line 240
    move-object v13, v1

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->structPointer:J

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->listeners:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->listeners:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->decompressIndirect(JZ[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 244
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    invoke-virtual {v13}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->unlock()V

    .line 245
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->dispose()V

    .line 246
    .line 248
    move-object v13, v9

    if-nez v13, :cond_2

    .line 249
    new-instance v13, Ljava/io/IOException;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    const-string v15, "Error decompressing JPEG stream!"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 240
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 241
    .end local v10    # "outNumComponents":I
    .end local v11    # "array":[B
    :catch_0
    move-exception v13

    move-object v11, v13

    .line 242
    .local v11, "e":Ljava/io/IOException;
    move-object v13, v11

    :try_start_1
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->accessLock:Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;

    invoke-virtual {v13}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader$Lock;->unlock()V

    .line 245
    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->dispose()V

    move-object v13, v12

    throw v13

    .line 257
    .restart local v10    # "outNumComponents":I
    .local v11, "array":[B
    :cond_2
    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outWidth:I

    move v14, v3

    if-ne v13, v14, :cond_3

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outHeight:I

    move v14, v4

    if-eq v13, v14, :cond_4

    .line 258
    :cond_3
    move-object v13, v9

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outWidth:I

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outHeight:I

    move/from16 v16, v10

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    invoke-static/range {v13 .. v19}, Lcom/sun/javafx/iio/common/ImageTools;->scaleImage(Ljava/nio/ByteBuffer;IIIIIZ)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v9, v13

    .line 262
    :cond_4
    new-instance v13, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v27, v13

    move-object/from16 v13, v27

    move-object/from16 v14, v27

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/iio/jpeg/JPEGImageLoader;->outImageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v16, v9

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v3

    move/from16 v20, v10

    mul-int v19, v19, v20

    const/16 v20, 0x0

    check-cast v20, [[B

    move-object/from16 v21, v8

    invoke-direct/range {v14 .. v21}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object v1, v13

    goto/16 :goto_0
.end method
