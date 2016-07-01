.class public Lcom/sun/javafx/iio/ImageStorage;
.super Ljava/lang/Object;
.source "ImageStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/iio/ImageStorage$ImageType;
    }
.end annotation


# static fields
.field private static final isIOS:Z

.field private static final loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

.field private static final loaderFactoriesBySignature:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sun/javafx/iio/ImageFormatDescription$Signature;",
            "Lcom/sun/javafx/iio/ImageLoaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static maxSignatureLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/iio/ImageStorage;->isIOS:Z

    .line 126
    sget-boolean v1, Lcom/sun/javafx/iio/ImageStorage;->isIOS:Z

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v1, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    .line 143
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/sun/javafx/iio/ImageStorage;->loaderFactoriesBySignature:Ljava/util/HashMap;

    .line 145
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_1
    move v1, v0

    sget-object v2, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 146
    sget-object v1, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    move v2, v0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sun/javafx/iio/ImageStorage;->addImageLoaderFactory(Lcom/sun/javafx/iio/ImageLoaderFactory;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    .line 134
    invoke-static {}, Lcom/sun/javafx/iio/gif/GIFImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    .line 135
    invoke-static {}, Lcom/sun/javafx/iio/jpeg/JPEGImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    .line 136
    invoke-static {}, Lcom/sun/javafx/iio/png/PNGImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    .line 137
    invoke-static {}, Lcom/sun/javafx/iio/bmp/BMPImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-result-object v4

    aput-object v4, v2, v3

    sput-object v1, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    goto :goto_0

    .line 148
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageStorage;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 433
    return-void
.end method

.method public static addImageLoaderFactory(Lcom/sun/javafx/iio/ImageLoaderFactory;)V
    .locals 9

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "factory":Lcom/sun/javafx/iio/ImageLoaderFactory;
    move-object v5, v0

    invoke-interface {v5}, Lcom/sun/javafx/iio/ImageLoaderFactory;->getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;

    move-result-object v5

    move-object v1, v5

    .line 205
    .local v1, "desc":Lcom/sun/javafx/iio/ImageFormatDescription;
    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/javafx/iio/ImageFormatDescription;->getSignatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v3, v5

    .line 206
    .local v3, "signature":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    sget-object v5, Lcom/sun/javafx/iio/ImageStorage;->loaderFactoriesBySignature:Ljava/util/HashMap;

    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 207
    goto :goto_0

    .line 210
    .end local v3    # "signature":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    :cond_0
    const-class v5, Lcom/sun/javafx/iio/ImageStorage;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 211
    const/4 v5, -0x1

    :try_start_0
    sput v5, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I

    .line 212
    move-object v5, v2

    monitor-exit v5

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private static getLoaderBySignature(Ljava/io/InputStream;Lcom/sun/javafx/iio/ImageLoadListener;)Lcom/sun/javafx/iio/ImageLoader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    invoke-static {}, Lcom/sun/javafx/iio/ImageStorage;->getMaxSignatureLength()I

    move-result v8

    new-array v8, v8, [B

    move-object v2, v8

    .line 412
    .local v2, "header":[B
    move-object v8, v0

    move-object v9, v2

    invoke-static {v8, v9}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[B)I

    move-result v8

    .line 415
    sget-object v8, Lcom/sun/javafx/iio/ImageStorage;->loaderFactoriesBySignature:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 416
    .local v4, "factoryRegistration":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/iio/ImageFormatDescription$Signature;Lcom/sun/javafx/iio/ImageLoaderFactory;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->matches([B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 417
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v8

    .line 418
    .local v5, "headerStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/SequenceInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v0

    invoke-direct {v9, v10, v11}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v6, v8

    .line 419
    .local v6, "seqStream":Ljava/io/InputStream;
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/iio/ImageLoaderFactory;

    move-object v9, v6

    invoke-interface {v8, v9}, Lcom/sun/javafx/iio/ImageLoaderFactory;->createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;

    move-result-object v8

    move-object v7, v8

    .line 420
    .local v7, "loader":Lcom/sun/javafx/iio/ImageLoader;
    move-object v8, v1

    if-eqz v8, :cond_0

    .line 421
    move-object v8, v7

    move-object v9, v1

    invoke-interface {v8, v9}, Lcom/sun/javafx/iio/ImageLoader;->addListener(Lcom/sun/javafx/iio/ImageLoadListener;)V

    .line 424
    :cond_0
    move-object v8, v7

    move-object v0, v8

    .line 429
    .end local v0    # "stream":Ljava/io/InputStream;
    .end local v4    # "factoryRegistration":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/iio/ImageFormatDescription$Signature;Lcom/sun/javafx/iio/ImageLoaderFactory;>;"
    .end local v5    # "headerStream":Ljava/io/InputStream;
    .end local v6    # "seqStream":Ljava/io/InputStream;
    .end local v7    # "loader":Lcom/sun/javafx/iio/ImageLoader;
    :goto_1
    return-object v0

    .line 426
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local v4    # "factoryRegistration":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/iio/ImageFormatDescription$Signature;Lcom/sun/javafx/iio/ImageLoaderFactory;>;"
    :cond_1
    goto :goto_0

    .line 429
    .end local v4    # "factoryRegistration":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/iio/ImageFormatDescription$Signature;Lcom/sun/javafx/iio/ImageLoaderFactory;>;"
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method private static declared-synchronized getMaxSignatureLength()I
    .locals 6

    .prologue
    .line 341
    const-class v5, Lcom/sun/javafx/iio/ImageStorage;

    monitor-enter v5

    :try_start_0
    sget v3, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I

    if-gez v3, :cond_1

    .line 342
    const/4 v3, 0x0

    sput v3, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I

    .line 344
    sget-object v3, Lcom/sun/javafx/iio/ImageStorage;->loaderFactoriesBySignature:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    .local v1, "signature":Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    .local v2, "signatureLength":I
    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;

    move-object v1, v3

    .line 345
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/ImageFormatDescription$Signature;->getLength()I

    .end local v2    # "signatureLength":I
    move-result v3

    move v2, v3

    .line 346
    .restart local v2    # "signatureLength":I
    sget v3, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 347
    move v3, v2

    sput v3, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I

    .line 349
    :cond_0
    goto :goto_0

    .line 352
    :cond_1
    sget v3, Lcom/sun/javafx/iio/ImageStorage;->maxSignatureLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    monitor-exit v5

    return v0

    .line 341
    .end local v2    # "signatureLength":I
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static getNumBands(Lcom/sun/javafx/iio/ImageStorage$ImageType;)I
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    const/4 v2, -0x1

    move v1, v2

    .line 166
    .local v1, "numBands":I
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$1;->$SwitchMap$com$sun$javafx$iio$ImageStorage$ImageType:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown ImageType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :pswitch_0
    const/4 v2, 0x1

    move v1, v2

    .line 188
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    return v0

    .line 176
    .restart local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    :pswitch_1
    const/4 v2, 0x2

    move v1, v2

    .line 177
    goto :goto_0

    .line 179
    :pswitch_2
    const/4 v2, 0x3

    move v1, v2

    .line 180
    goto :goto_0

    .line 183
    :pswitch_3
    const/4 v2, 0x4

    move v1, v2

    .line 184
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getSupportedDescriptions()[Lcom/sun/javafx/iio/ImageFormatDescription;
    .locals 6

    .prologue
    .line 151
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    array-length v2, v2

    new-array v2, v2, [Lcom/sun/javafx/iio/ImageFormatDescription;

    move-object v0, v2

    .line 152
    .local v0, "formats":[Lcom/sun/javafx/iio/ImageFormatDescription;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 153
    move-object v2, v0

    move v3, v1

    sget-object v4, Lcom/sun/javafx/iio/ImageStorage;->loaderFactories:[Lcom/sun/javafx/iio/ImageLoaderFactory;

    move v5, v1

    aget-object v4, v4, v5

    invoke-interface {v4}, Lcom/sun/javafx/iio/ImageLoaderFactory;->getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;

    move-result-object v4

    aput-object v4, v2, v3

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "formats":[Lcom/sun/javafx/iio/ImageFormatDescription;
    return-object v0
.end method

.method private static loadAll(Lcom/sun/javafx/iio/ImageLoader;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/iio/ImageStorageException;
        }
    .end annotation

    .prologue
    .line 358
    move-object/from16 v0, p0

    .local v0, "loader":Lcom/sun/javafx/iio/ImageLoader;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "preserveAspectRatio":Z
    move/from16 v4, p4

    .local v4, "pixelScale":F
    move/from16 v5, p5

    .local v5, "smooth":Z
    const/4 v11, 0x0

    move-object v6, v11

    .line 359
    .local v6, "images":[Lcom/sun/javafx/iio/ImageFrame;
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    .line 360
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/iio/ImageFrame;>;"
    const/4 v11, 0x0

    move v8, v11

    .line 361
    .local v8, "imageIndex":I
    const/4 v11, 0x0

    move-object v9, v11

    .line 364
    .local v9, "image":Lcom/sun/javafx/iio/ImageFrame;
    :goto_0
    move-object v11, v0

    move v12, v8

    add-int/lit8 v8, v8, 0x1

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v5

    :try_start_0
    invoke-interface/range {v11 .. v16}, Lcom/sun/javafx/iio/ImageLoader;->load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v9, v11

    .line 372
    .line 373
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 374
    move-object v11, v9

    move v12, v4

    invoke-virtual {v11, v12}, Lcom/sun/javafx/iio/ImageFrame;->setPixelScale(F)V

    .line 375
    move-object v11, v7

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0

    .line 365
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 367
    .local v10, "e":Ljava/lang/Exception;
    move v11, v8

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 368
    .line 380
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v11, v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v10, v11

    .line 381
    .local v10, "numImages":I
    move v11, v10

    if-lez v11, :cond_1

    .line 382
    move v11, v10

    new-array v11, v11, [Lcom/sun/javafx/iio/ImageFrame;

    move-object v6, v11

    .line 383
    move-object v11, v7

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .line 385
    :cond_1
    move-object v11, v6

    move-object v0, v11

    .end local v0    # "loader":Lcom/sun/javafx/iio/ImageLoader;
    return-object v0

    .line 370
    .restart local v0    # "loader":Lcom/sun/javafx/iio/ImageLoader;
    .local v10, "e":Ljava/lang/Exception;
    :cond_2
    new-instance v11, Lcom/sun/javafx/iio/ImageStorageException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public static loadAll(Ljava/io/InputStream;Lcom/sun/javafx/iio/ImageLoadListener;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/iio/ImageStorageException;
        }
    .end annotation

    .prologue
    .line 259
    move-object/from16 v0, p0

    .local v0, "input":Ljava/io/InputStream;
    move-object/from16 v1, p1

    .local v1, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveAspectRatio":Z
    move/from16 v5, p5

    .local v5, "pixelScale":F
    move/from16 v6, p6

    .local v6, "smooth":Z
    const/4 v9, 0x0

    move-object v7, v9

    .line 261
    .local v7, "loader":Lcom/sun/javafx/iio/ImageLoader;
    :try_start_0
    sget-boolean v9, Lcom/sun/javafx/iio/ImageStorage;->isIOS:Z

    if-eqz v9, :cond_0

    .line 264
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v7, v9

    .line 270
    .line 272
    :goto_0
    const/4 v9, 0x0

    move-object v8, v9

    .line 273
    .local v8, "images":[Lcom/sun/javafx/iio/ImageFrame;
    move-object v9, v7

    if-eqz v9, :cond_1

    .line 274
    move-object v9, v7

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/iio/ImageStorage;->loadAll(Lcom/sun/javafx/iio/ImageLoader;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;

    move-result-object v9

    move-object v8, v9

    .line 279
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "input":Ljava/io/InputStream;
    return-object v0

    .line 266
    .end local v8    # "images":[Lcom/sun/javafx/iio/ImageFrame;
    .restart local v0    # "input":Ljava/io/InputStream;
    :cond_0
    move-object v9, v0

    move-object v10, v1

    :try_start_1
    invoke-static {v9, v10}, Lcom/sun/javafx/iio/ImageStorage;->getLoaderBySignature(Ljava/io/InputStream;Lcom/sun/javafx/iio/ImageLoadListener;)Lcom/sun/javafx/iio/ImageLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v7, v9

    goto :goto_0

    .line 268
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 269
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Lcom/sun/javafx/iio/ImageStorageException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 276
    .local v8, "images":[Lcom/sun/javafx/iio/ImageFrame;
    :cond_1
    new-instance v9, Lcom/sun/javafx/iio/ImageStorageException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "No loader for image data"

    invoke-direct {v10, v11}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static loadAll(Ljava/lang/String;Lcom/sun/javafx/iio/ImageLoadListener;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/iio/ImageStorageException;
        }
    .end annotation

    .prologue
    .line 290
    move-object/from16 v0, p0

    .local v0, "input":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveAspectRatio":Z
    move/from16 v5, p5

    .local v5, "devPixelScale":F
    move/from16 v6, p6

    .local v6, "smooth":Z
    move-object v14, v0

    if-eqz v14, :cond_0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 291
    :cond_0
    new-instance v14, Lcom/sun/javafx/iio/ImageStorageException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string v16, "URL can\'t be null or empty"

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 294
    :cond_1
    const/4 v14, 0x0

    move-object v7, v14

    .line 295
    .local v7, "images":[Lcom/sun/javafx/iio/ImageFrame;
    const/4 v14, 0x0

    move-object v8, v14

    .line 296
    .local v8, "theStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    move-object v9, v14

    .line 299
    .local v9, "loader":Lcom/sun/javafx/iio/ImageLoader;
    const/high16 v14, 0x3f800000    # 1.0f

    move v10, v14

    .line 301
    .local v10, "imgPixelScale":F
    move v14, v5

    const/high16 v15, 0x3fc00000    # 1.5f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2

    .line 304
    move-object v14, v0

    :try_start_0
    invoke-static {v14}, Lcom/sun/javafx/iio/common/ImageTools;->getScaledImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 305
    .local v11, "name2x":Ljava/lang/String;
    move-object v14, v11

    invoke-static {v14}, Lcom/sun/javafx/iio/common/ImageTools;->createInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    move-object v8, v14

    .line 306
    const/high16 v14, 0x40000000    # 2.0f

    move v10, v14

    .line 308
    .line 310
    .end local v11    # "name2x":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v14, v8

    if-nez v14, :cond_3

    .line 311
    move-object v14, v0

    :try_start_1
    invoke-static {v14}, Lcom/sun/javafx/iio/common/ImageTools;->createInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    move-object v8, v14

    .line 314
    :cond_3
    sget-boolean v14, Lcom/sun/javafx/iio/ImageStorage;->isIOS:Z

    if-eqz v14, :cond_5

    .line 315
    invoke-static {}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->getInstance()Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v14, v15}, Lcom/sun/javafx/iio/ios/IosImageLoaderFactory;->createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    move-object v9, v14

    .line 321
    .line 323
    :goto_1
    move-object v14, v9

    if-eqz v14, :cond_7

    .line 324
    move-object v14, v9

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v6

    :try_start_2
    invoke-static/range {v14 .. v19}, Lcom/sun/javafx/iio/ImageStorage;->loadAll(Lcom/sun/javafx/iio/ImageLoader;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    move-object v7, v14

    .line 330
    move-object v14, v8

    if-eqz v14, :cond_4

    .line 331
    move-object v14, v8

    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 334
    .line 337
    .end local v10    # "imgPixelScale":F
    :cond_4
    :goto_2
    move-object v14, v7

    move-object v0, v14

    .end local v0    # "input":Ljava/lang/String;
    return-object v0

    .line 307
    .restart local v0    # "input":Ljava/lang/String;
    .restart local v10    # "imgPixelScale":F
    :catch_0
    move-exception v14

    move-object v11, v14

    goto :goto_0

    .line 317
    :cond_5
    move-object v14, v8

    move-object v15, v1

    :try_start_4
    invoke-static {v14, v15}, Lcom/sun/javafx/iio/ImageStorage;->getLoaderBySignature(Ljava/io/InputStream;Lcom/sun/javafx/iio/ImageLoadListener;)Lcom/sun/javafx/iio/ImageLoader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v14

    move-object v9, v14

    goto :goto_1

    .line 319
    :catch_1
    move-exception v14

    move-object v11, v14

    .line 320
    .local v11, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v14, Lcom/sun/javafx/iio/ImageStorageException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v11

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object v12, v14

    .line 330
    move-object v14, v8

    if-eqz v14, :cond_6

    .line 331
    move-object v14, v8

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 334
    :cond_6
    :goto_3
    move-object v14, v12

    throw v14

    .line 326
    :cond_7
    :try_start_7
    new-instance v14, Lcom/sun/javafx/iio/ImageStorageException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string v16, "No loader for image data"

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/iio/ImageStorageException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 333
    :catch_2
    move-exception v14

    move-object v10, v14

    .line 335
    goto :goto_2

    .line 333
    :catch_3
    move-exception v14

    move-object v13, v14

    goto :goto_3
.end method
