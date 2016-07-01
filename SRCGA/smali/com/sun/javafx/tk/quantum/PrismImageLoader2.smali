.class Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
.super Ljava/lang/Object;
.source "PrismImageLoader2.java"

# interfaces
.implements Lcom/sun/javafx/tk/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;,
        Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;
    }
.end annotation


# static fields
.field private static imageioLogger:Lsun/util/logging/PlatformLogger;


# instance fields
.field private delayTimes:[I

.field private exception:Ljava/lang/Exception;

.field private height:I

.field private images:[Lcom/sun/prism/Image;

.field private loopCount:I

.field private pixelScale:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->imageioLogger:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IIZZ)V
    .locals 12

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "smooth":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->loadAll(Ljava/io/InputStream;IIZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZFZ)V
    .locals 14

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "pixelScale":F
    move/from16 v6, p6

    .local v6, "smooth":Z
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->loadAll(Ljava/lang/String;IIZFZ)V

    .line 72
    return-void
.end method

.method static synthetic access$100()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->getImageioLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    return-object v0
.end method

.method private convertAll([Lcom/sun/javafx/iio/ImageFrame;)V
    .locals 11

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, p1

    .local v1, "imgFrames":[Lcom/sun/javafx/iio/ImageFrame;
    move-object v8, v1

    array-length v8, v8

    move v2, v8

    .line 170
    .local v2, "numFrames":I
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [Lcom/sun/prism/Image;

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    .line 171
    move-object v8, v0

    move v9, v2

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->delayTimes:[I

    .line 172
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 173
    move-object v8, v1

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .line 174
    .local v4, "frame":Lcom/sun/javafx/iio/ImageFrame;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    move v9, v3

    move-object v10, v4

    invoke-static {v10}, Lcom/sun/prism/Image;->convertImageFrame(Lcom/sun/javafx/iio/ImageFrame;)Lcom/sun/prism/Image;

    move-result-object v10

    aput-object v10, v8, v9

    .line 175
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getMetadata()Lcom/sun/javafx/iio/ImageMetadata;

    move-result-object v8

    move-object v5, v8

    .line 176
    .local v5, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v8, v5

    if-eqz v8, :cond_1

    .line 177
    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/iio/ImageMetadata;->delayTime:Ljava/lang/Integer;

    move-object v6, v8

    .line 178
    .local v6, "delay":Ljava/lang/Integer;
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 179
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->delayTimes:[I

    move v9, v3

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    .line 181
    :cond_0
    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/iio/ImageMetadata;->loopCount:Ljava/lang/Integer;

    move-object v7, v8

    .line 182
    .local v7, "loopCount":Ljava/lang/Integer;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 183
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->loopCount:I

    .line 186
    .end local v6    # "delay":Ljava/lang/Integer;
    .end local v7    # "loopCount":Ljava/lang/Integer;
    :cond_1
    move v8, v3

    if-nez v8, :cond_2

    .line 187
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/iio/ImageFrame;->getWidth()I

    move-result v9

    iput v9, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->width:I

    .line 188
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/iio/ImageFrame;->getHeight()I

    move-result v9

    iput v9, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->height:I

    .line 172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v4    # "frame":Lcom/sun/javafx/iio/ImageFrame;
    .end local v5    # "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    :cond_3
    return-void
.end method

.method private static declared-synchronized getImageioLogger()Lsun/util/logging/PlatformLogger;
    .locals 2

    .prologue
    .line 197
    const-class v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->imageioLogger:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "javafx.scene.image"

    invoke-static {v0}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->imageioLogger:Lsun/util/logging/PlatformLogger;

    .line 201
    :cond_0
    sget-object v0, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->imageioLogger:Lsun/util/logging/PlatformLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleException(Lcom/sun/javafx/iio/ImageStorageException;)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, p1

    .local v1, "isException":Lcom/sun/javafx/iio/ImageStorageException;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/ImageStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v2, v3

    .line 154
    .local v2, "exceptionCause":Ljava/lang/Throwable;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Exception;

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/Exception;

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Ljava/lang/Exception;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Exception;
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 165
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->exception:Ljava/lang/Exception;

    .line 166
    return-void
.end method

.method private loadAll(Ljava/io/InputStream;IIZZ)V
    .locals 16

    .prologue
    .line 139
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object/from16 v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move/from16 v2, p2

    .local v2, "w":I
    move/from16 v3, p3

    .local v3, "h":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "smooth":Z
    new-instance v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;-><init>(Lcom/sun/javafx/tk/quantum/PrismImageLoader2;Lcom/sun/javafx/tk/quantum/PrismImageLoader2$1;)V

    move-object v6, v8

    .line 141
    .local v6, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v8, v1

    move-object v9, v6

    move v10, v2

    move v11, v3

    move v12, v4

    const/high16 v13, 0x3f800000    # 1.0f

    move v14, v5

    .line 142
    :try_start_0
    invoke-static/range {v8 .. v14}, Lcom/sun/javafx/iio/ImageStorage;->loadAll(Ljava/io/InputStream;Lcom/sun/javafx/iio/ImageLoadListener;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;

    move-result-object v8

    move-object v7, v8

    .line 143
    .local v7, "imgFrames":[Lcom/sun/javafx/iio/ImageFrame;
    move-object v8, v0

    move-object v9, v7

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->convertAll([Lcom/sun/javafx/iio/ImageFrame;)V
    :try_end_0
    .catch Lcom/sun/javafx/iio/ImageStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .line 149
    .end local v7    # "imgFrames":[Lcom/sun/javafx/iio/ImageFrame;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 145
    .local v7, "e":Lcom/sun/javafx/iio/ImageStorageException;
    move-object v8, v0

    move-object v9, v7

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Lcom/sun/javafx/iio/ImageStorageException;)V

    .line 148
    goto :goto_0

    .line 146
    .end local v7    # "e":Lcom/sun/javafx/iio/ImageStorageException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 147
    .local v7, "e":Ljava/lang/Exception;
    move-object v8, v0

    move-object v9, v7

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadAll(Ljava/lang/String;IIZFZ)V
    .locals 17

    .prologue
    .line 124
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "w":I
    move/from16 v3, p3

    .local v3, "h":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "pixelScale":F
    move/from16 v6, p6

    .local v6, "smooth":Z
    new-instance v9, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;-><init>(Lcom/sun/javafx/tk/quantum/PrismImageLoader2;Lcom/sun/javafx/tk/quantum/PrismImageLoader2$1;)V

    move-object v7, v9

    .line 126
    .local v7, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v9, v1

    move-object v10, v7

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    .line 127
    :try_start_0
    invoke-static/range {v9 .. v15}, Lcom/sun/javafx/iio/ImageStorage;->loadAll(Ljava/lang/String;Lcom/sun/javafx/iio/ImageLoadListener;IIZFZ)[Lcom/sun/javafx/iio/ImageFrame;

    move-result-object v9

    move-object v8, v9

    .line 128
    .local v8, "imgFrames":[Lcom/sun/javafx/iio/ImageFrame;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->convertAll([Lcom/sun/javafx/iio/ImageFrame;)V
    :try_end_0
    .catch Lcom/sun/javafx/iio/ImageStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .line 134
    .end local v8    # "imgFrames":[Lcom/sun/javafx/iio/ImageFrame;
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 130
    .local v8, "e":Lcom/sun/javafx/iio/ImageStorageException;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Lcom/sun/javafx/iio/ImageStorageException;)V

    .line 133
    goto :goto_0

    .line 131
    .end local v8    # "e":Lcom/sun/javafx/iio/ImageStorageException;
    :catch_1
    move-exception v9

    move-object v8, v9

    .line 132
    .local v8, "e":Ljava/lang/Exception;
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->exception:Ljava/lang/Exception;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    return-object v0
.end method

.method public getFrame(I)Lcom/sun/javafx/tk/PlatformImage;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    if-nez v2, :cond_0

    .line 97
    const/4 v2, 0x0

    move-object v0, v2

    .line 99
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    move v0, v1

    .line 92
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    array-length v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public getFrameDelay(I)I
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x0

    move v0, v2

    .line 106
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->delayTimes:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    return v0
.end method

.method public getLoopCount()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->images:[Lcom/sun/prism/Image;

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    move v0, v1

    .line 113
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->loopCount:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    return v0
.end method
