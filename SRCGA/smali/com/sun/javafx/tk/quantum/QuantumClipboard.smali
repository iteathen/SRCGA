.class final Lcom/sun/javafx/tk/quantum/QuantumClipboard;
.super Ljava/lang/Object;
.source "QuantumClipboard.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKClipboard;


# static fields
.field private static final all:Ljava/security/Permission;

.field private static currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

.field private static final findTagIMG:Ljava/util/regex/Pattern;


# instance fields
.field private accessContext:Ljava/security/AccessControlContext;

.field private dataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/util/Pair",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private dragImage:Ljavafx/scene/image/Image;

.field private dragOffsetX:D

.field private dragOffsetY:D

.field private isCaching:Z

.field private systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private transferModesCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 332
    new-instance v0, Ljava/security/AllPermission;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->all:Ljava/security/Permission;

    .line 413
    const-string v0, "IMG\\s+SRC=\\\"([^\\\"]+)\\\""

    const/16 v1, 0x22

    .line 414
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->findTagIMG:Ljava/util/regex/Pattern;

    .line 413
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->accessContext:Ljava/security/AccessControlContext;

    .line 112
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    .line 118
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetX:D

    .line 119
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetY:D

    .line 127
    return-void
.end method

.method private clearCache()V
    .locals 3

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    .line 699
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesCache:Ljava/util/Set;

    .line 700
    return-void
.end method

.method private clearDragView()V
    .locals 10

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    .line 704
    move-object v1, v0

    move-object v2, v0

    const-wide/16 v3, 0x0

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetY:D

    iput-wide v2, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetX:D

    .line 705
    return-void
.end method

.method public static clipboardActionsToTransferModes(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    move v0, p0

    .local v0, "actions":I
    const-class v2, Ljavafx/scene/input/TransferMode;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    move-object v1, v2

    .line 215
    .local v1, "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 216
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 218
    :cond_0
    move v2, v0

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 219
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 221
    :cond_1
    move v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 222
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 225
    :cond_2
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "actions":I
    return-object v0
.end method

.method private static convertObjectToImage(Ljava/lang/Object;)Ljavafx/scene/image/Image;
    .locals 9

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v5, v0

    instance-of v5, v5, Ljavafx/scene/image/Image;

    if-eqz v5, :cond_0

    .line 336
    move-object v5, v0

    check-cast v5, Ljavafx/scene/image/Image;

    move-object v0, v5

    .line 361
    .end local v0    # "obj":Ljava/lang/Object;
    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    .local v2, "platformImage":Lcom/sun/prism/Image;
    .local v3, "il":Lcom/sun/javafx/tk/ImageLoader;
    :goto_0
    return-object v0

    .line 339
    .end local v1    # "pixels":Lcom/sun/glass/ui/Pixels;
    .end local v2    # "platformImage":Lcom/sun/prism/Image;
    .end local v3    # "il":Lcom/sun/javafx/tk/ImageLoader;
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v5, v0

    instance-of v5, v5, Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_1

    .line 340
    move-object v5, v0

    check-cast v5, Ljava/nio/ByteBuffer;

    move-object v2, v5

    .line 342
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object v5, v2

    :try_start_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    .line 343
    move-object v5, v2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v3, v5

    .line 344
    .local v3, "width":I
    move-object v5, v2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    move v4, v5

    .line 345
    .local v4, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    move v6, v3

    move v7, v4

    move-object v8, v2

    .line 346
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 345
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v5

    .line 351
    .line 352
    .line 357
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local v1    # "pixels":Lcom/sun/glass/ui/Pixels;
    :goto_1
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/PixelUtils;->pixelsToImage(Lcom/sun/glass/ui/Pixels;)Lcom/sun/prism/Image;

    move-result-object v5

    move-object v2, v5

    .line 359
    .local v2, "platformImage":Lcom/sun/prism/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/Toolkit;->loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;

    move-result-object v5

    move-object v3, v5

    .line 361
    .local v3, "il":Lcom/sun/javafx/tk/ImageLoader;
    move-object v5, v3

    invoke-static {v5}, Ljavafx/scene/image/Image;->impl_fromPlatformImage(Ljava/lang/Object;)Ljavafx/scene/image/Image;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 347
    .end local v1    # "pixels":Lcom/sun/glass/ui/Pixels;
    .end local v3    # "il":Lcom/sun/javafx/tk/ImageLoader;
    .local v2, "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 352
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Lcom/sun/glass/ui/Pixels;

    if-eqz v5, :cond_2

    .line 353
    move-object v5, v0

    check-cast v5, Lcom/sun/glass/ui/Pixels;

    move-object v1, v5

    .restart local v1    # "pixels":Lcom/sun/glass/ui/Pixels;
    goto :goto_1

    .line 355
    .end local v1    # "pixels":Lcom/sun/glass/ui/Pixels;
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private getAccessControlContext()Ljava/security/AccessControlContext;
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->accessContext:Ljava/security/AccessControlContext;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Clipboard security context has not been set!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->accessContext:Ljava/security/AccessControlContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return-object v0
.end method

.method public static getClipboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;)Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    new-instance v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;-><init>()V

    move-object v1, v2

    .line 151
    .local v1, "c":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 152
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->isCaching:Z

    .line 153
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    return-object v0
.end method

.method static getCurrentDragboard()Lcom/sun/glass/ui/ClipboardAssistance;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    return-object v0
.end method

.method public static getDragboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;Z)Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move v1, p1

    .local v1, "isDragSource":Z
    new-instance v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;-><init>()V

    move-object v2, v3

    .line 175
    .local v2, "c":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 176
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->isCaching:Z

    .line 177
    move v3, v1

    if-eqz v3, :cond_0

    .line 178
    move-object v3, v0

    sput-object v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 180
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    return-object v0
.end method

.method private parseIMG(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "data":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 419
    const/4 v4, 0x0

    move-object v0, v4

    .line 429
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :goto_0
    return-object v0

    .line 421
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 422
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 424
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 425
    .local v2, "str":Ljava/lang/String;
    sget-object v4, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->findTagIMG:Ljava/util/regex/Pattern;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move-object v3, v4

    .line 426
    .local v3, "matcher":Ljava/util/regex/Matcher;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 429
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private placeImage(Ljavafx/scene/image/Image;)Z
    .locals 8

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 435
    const/4 v5, 0x0

    move v0, v5

    .line 451
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :goto_0
    return v0

    .line 438
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/image/Image;->impl_getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 439
    .local v2, "url":Ljava/lang/String;
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/PixelUtils;->supportedFormatType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 440
    :cond_1
    move-object v5, v1

    .line 441
    invoke-virtual {v5}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/prism/Image;

    move-object v3, v5

    .line 442
    .local v3, "prismImage":Lcom/sun/prism/Image;
    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/PixelUtils;->imageToPixels(Lcom/sun/prism/Image;)Lcom/sun/glass/ui/Pixels;

    move-result-object v5

    move-object v4, v5

    .line 443
    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 444
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    const-string v6, "application/x-java-rawimage"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 447
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 450
    .end local v3    # "prismImage":Lcom/sun/prism/Image;
    .end local v4    # "pixels":Lcom/sun/glass/ui/Pixels;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    const-string v6, "text/uri-list"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method private static prepareImage(Ljavafx/scene/image/Image;)Ljava/nio/ByteBuffer;
    .locals 16

    .prologue
    .line 544
    move-object/from16 v0, p0

    .local v0, "image":Ljavafx/scene/image/Image;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getPixelReader()Ljavafx/scene/image/PixelReader;

    move-result-object v6

    move-object v1, v6

    .line 546
    .local v1, "pr":Ljavafx/scene/image/PixelReader;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v6

    double-to-int v6, v6

    move v2, v6

    .line 547
    .local v2, "w":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v6

    double-to-int v6, v6

    move v3, v6

    .line 549
    .local v3, "h":I
    move v6, v2

    move v7, v3

    mul-int/2addr v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    move-object v4, v6

    .line 550
    .local v4, "pixels":[B
    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v2

    move v10, v3

    invoke-static {}, Ljavafx/scene/image/WritablePixelFormat;->getByteBgraInstance()Ljavafx/scene/image/WritablePixelFormat;

    move-result-object v11

    move-object v12, v4

    const/4 v13, 0x0

    move v14, v2

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    invoke-interface/range {v6 .. v14}, Ljavafx/scene/image/PixelReader;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V

    .line 552
    const/16 v6, 0x8

    move v7, v2

    move v8, v3

    mul-int/2addr v7, v8

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v5, v6

    .line 553
    .local v5, "dragImageBuffer":Ljava/nio/ByteBuffer;
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 554
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 555
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 557
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "image":Ljavafx/scene/image/Image;
    return-object v0
.end method

.method private static prepareOffset(DD)Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 561
    move-wide v0, p0

    .local v0, "offsetX":D
    move-wide v2, p2

    .local v2, "offsetY":D
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v4, v5

    .line 563
    .local v4, "dragImageOffset":Ljava/nio/ByteBuffer;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    .line 564
    move-object v5, v4

    move-wide v6, v0

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 565
    move-object v5, v4

    move-wide v6, v2

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 567
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "offsetX":D
    return-object v0
.end method

.method private varargs putContentToPeer([Ljavafx/util/Pair;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/util/Pair",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 571
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object/from16 v3, p1

    .local v3, "content":[Ljavafx/util/Pair;, "[Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/glass/ui/ClipboardAssistance;->emptyCache()V

    .line 573
    const/16 v18, 0x0

    move/from16 v4, v18

    .line 581
    .local v4, "dataSet":Z
    move-object/from16 v18, v3

    move-object/from16 v5, v18

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v6, v18

    const/16 v18, 0x0

    move/from16 v7, v18

    :goto_0
    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    move-object/from16 v18, v5

    move/from16 v19, v7

    aget-object v18, v18, v19

    move-object/from16 v8, v18

    .line 582
    .local v8, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/input/DataFormat;

    move-object/from16 v9, v18

    .line 583
    .local v9, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    .line 592
    .local v10, "data":Ljava/lang/Object;
    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 593
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->convertObjectToImage(Ljava/lang/Object;)Ljavafx/scene/image/Image;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->placeImage(Ljavafx/scene/image/Image;)Z

    move-result v18

    move/from16 v4, v18

    .line 581
    .end local v10    # "data":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 594
    .restart local v10    # "data":Ljava/lang/Object;
    :cond_1
    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 596
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    const-string v19, "text/uri-list"

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    const/16 v18, 0x1

    move/from16 v4, v18

    goto :goto_1

    .line 598
    :cond_2
    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 599
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    const-string v19, "text/rtf"

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const/16 v18, 0x1

    move/from16 v4, v18

    goto :goto_1

    .line 601
    :cond_3
    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 603
    move-object/from16 v18, v10

    check-cast v18, Ljava/util/List;

    move-object/from16 v11, v18

    .line 604
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_5

    .line 605
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 606
    .local v12, "paths":[Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 607
    .local v13, "i":I
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v14, v18

    :goto_2
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    move-object/from16 v15, v18

    .line 608
    .local v15, "f":Ljava/io/File;
    move-object/from16 v18, v12

    move/from16 v19, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 609
    goto :goto_2

    .line 610
    .end local v15    # "f":Ljava/io/File;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    const-string v19, "application/x-java-file-list"

    move-object/from16 v20, v12

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    const/16 v18, 0x1

    move/from16 v4, v18

    .line 613
    .end local v12    # "paths":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_5
    goto/16 :goto_1

    .line 614
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_6
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/io/Serializable;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 615
    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v18, v9

    sget-object v19, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_7
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 619
    :cond_8
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v11, v18

    .line 620
    .local v11, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/ObjectOutputStream;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v12, v18

    .line 621
    .local v12, "out":Ljava/io/ObjectOutput;
    move-object/from16 v18, v12

    move-object/from16 v19, v10

    invoke-interface/range {v18 .. v19}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 622
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/io/ObjectOutput;->close()V

    .line 623
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    move-object/from16 v10, v18

    .line 626
    .line 646
    .end local v10    # "data":Ljava/lang/Object;
    .end local v11    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "out":Ljava/io/ObjectOutput;
    :cond_9
    :goto_3
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/DataFormat;->getIdentifiers()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    :goto_4
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v12, v18

    .line 647
    .local v12, "mimeType":Ljava/lang/String;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const/16 v18, 0x1

    move/from16 v4, v18

    .line 649
    goto :goto_4

    .line 624
    .end local v12    # "mimeType":Ljava/lang/String;
    .restart local v10    # "data":Ljava/lang/Object;
    :catch_0
    move-exception v18

    move-object/from16 v11, v18

    .line 625
    .local v11, "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const-string v20, "Could not serialize the data"

    move-object/from16 v21, v11

    invoke-direct/range {v19 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 628
    .end local v11    # "e":Ljava/io/IOException;
    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/io/InputStream;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 629
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v11, v18

    .line 630
    .local v11, "bout":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v18, v10

    :try_start_1
    check-cast v18, Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v12, v18

    .local v12, "is":Ljava/io/InputStream;
    const/16 v18, 0x0

    move-object/from16 v13, v18

    .line 632
    move-object/from16 v18, v12

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v14, v18

    .line 633
    .local v14, "i":I
    :goto_5
    move/from16 v18, v14

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 634
    move-object/from16 v18, v11

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 635
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    move/from16 v14, v18

    goto :goto_5

    .line 637
    :cond_b
    move-object/from16 v18, v12

    if-eqz v18, :cond_c

    move-object/from16 v18, v13

    if-eqz v18, :cond_d

    move-object/from16 v18, v12

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 639
    .line 640
    .end local v14    # "i":I
    :cond_c
    :goto_6
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v10, v18

    .line 641
    .local v10, "data":Ljava/nio/ByteBuffer;
    goto/16 :goto_3

    .line 637
    .local v10, "data":Ljava/lang/Object;
    .restart local v14    # "i":I
    :catch_1
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    :try_start_4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v14    # "i":I
    goto :goto_6

    .restart local v14    # "i":I
    :cond_d
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 630
    .end local v14    # "i":I
    :catch_2
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v13, v18

    move-object/from16 v18, v14

    :try_start_5
    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 637
    :catchall_0
    move-exception v18

    move-object/from16 v16, v18

    move-object/from16 v18, v12

    if-eqz v18, :cond_e

    move-object/from16 v18, v13

    if-eqz v18, :cond_f

    move-object/from16 v18, v12

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_e
    :goto_7
    move-object/from16 v18, v16

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .end local v12    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v18

    move-object/from16 v12, v18

    .line 638
    .local v12, "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const-string v20, "Could not serialize the data"

    move-object/from16 v21, v12

    invoke-direct/range {v19 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 637
    .local v12, "is":Ljava/io/InputStream;
    :catch_4
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v13

    move-object/from16 v19, v17

    :try_start_8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 641
    .end local v11    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_10
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 642
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v22, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v22

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Only serializable objects or ByteBuffer can be used as data with data format "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 654
    .end local v8    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    .end local v9    # "dataFormat":Ljavafx/scene/input/DataFormat;
    .end local v10    # "data":Ljava/lang/Object;
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 655
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->prepareImage(Ljavafx/scene/image/Image;)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v5, v18

    .line 656
    .local v5, "imageBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetX:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetY:D

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->prepareOffset(DD)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v6, v18

    .line 657
    .local v6, "offsetBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    const-string v19, "application/x-java-drag-image"

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object/from16 v18, v0

    const-string v19, "application/x-java-drag-image-offset"

    move-object/from16 v20, v6

    invoke-virtual/range {v18 .. v20}, Lcom/sun/glass/ui/ClipboardAssistance;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    .end local v5    # "imageBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "offsetBuffer":Ljava/nio/ByteBuffer;
    :cond_12
    move/from16 v18, v4

    move/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return v2
.end method

.method private readImage()Ljavafx/scene/image/Image;
    .locals 17

    .prologue
    .line 366
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v12, :cond_2

    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    :goto_0
    move-object v1, v12

    .line 369
    .local v1, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v12, v1

    const-string v13, "application/x-java-rawimage"

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v2, v12

    .line 370
    .local v2, "rawData":Ljava/lang/Object;
    move-object v12, v2

    if-nez v12, :cond_8

    .line 371
    move-object v12, v1

    const-string v13, "text/html"

    invoke-virtual {v12, v13}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v3, v12

    .line 372
    .local v3, "htmlData":Ljava/lang/Object;
    move-object v12, v3

    if-eqz v12, :cond_7

    .line 373
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->parseIMG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 374
    .local v4, "url":Ljava/lang/String;
    move-object v12, v4

    if-eqz v12, :cond_7

    .line 376
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    move-object v5, v12

    .line 377
    .local v5, "sm":Ljava/lang/SecurityManager;
    move-object v12, v5

    if-eqz v12, :cond_1

    .line 378
    move-object v12, v0

    invoke-direct {v12}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v12

    move-object v6, v12

    .line 379
    .local v6, "context":Ljava/security/AccessControlContext;
    new-instance v12, Ljava/net/URL;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v7, v12

    .line 380
    .local v7, "u":Ljava/net/URL;
    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 381
    .local v8, "protocol":Ljava/lang/String;
    move-object v12, v8

    const-string v13, "jar"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 382
    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 383
    .local v9, "file":Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v9

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v7, v12

    .line 384
    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 386
    .end local v9    # "file":Ljava/lang/String;
    :cond_0
    move-object v12, v8

    const-string v13, "file"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 387
    new-instance v12, Ljava/io/FilePermission;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v7

    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v14

    const-string v15, "read"

    invoke-direct {v13, v14, v15}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v12

    .line 388
    .local v9, "fp":Ljava/io/FilePermission;
    move-object v12, v6

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 389
    .line 400
    .end local v6    # "context":Ljava/security/AccessControlContext;
    .end local v7    # "u":Ljava/net/URL;
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v9    # "fp":Ljava/io/FilePermission;
    :cond_1
    :goto_1
    new-instance v12, Ljavafx/scene/image/Image;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-direct {v13, v14}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v12

    .line 410
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .end local v3    # "htmlData":Ljava/lang/Object;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    :goto_2
    return-object v0

    .line 366
    .end local v1    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .end local v2    # "rawData":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    goto/16 :goto_0

    .line 389
    .restart local v1    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .restart local v2    # "rawData":Ljava/lang/Object;
    .restart local v3    # "htmlData":Ljava/lang/Object;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "sm":Ljava/lang/SecurityManager;
    .restart local v6    # "context":Ljava/security/AccessControlContext;
    .restart local v7    # "u":Ljava/net/URL;
    .restart local v8    # "protocol":Ljava/lang/String;
    :cond_3
    move-object v12, v8

    :try_start_1
    const-string v13, "ftp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object v12, v8

    const-string v13, "http"

    .line 390
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object v12, v8

    const-string v13, "https"

    .line 391
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 392
    :cond_4
    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/URL;->getPort()I

    move-result v12

    move v9, v12

    .line 393
    .local v9, "port":I
    move v12, v9

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    move-object v12, v7

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    :goto_3
    move-object v10, v12

    .line 394
    .local v10, "hoststr":Ljava/lang/String;
    new-instance v12, Ljava/net/SocketPermission;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v10

    const-string v15, "connect"

    invoke-direct {v13, v14, v15}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    .line 395
    .local v11, "sp":Ljava/net/SocketPermission;
    move-object v12, v6

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 396
    goto :goto_1

    .line 393
    .end local v10    # "hoststr":Ljava/lang/String;
    .end local v11    # "sp":Ljava/net/SocketPermission;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v7

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 397
    .end local v9    # "port":I
    :cond_6
    move-object v12, v6

    sget-object v13, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->all:Ljava/security/Permission;

    invoke-virtual {v12, v13}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 401
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "context":Ljava/security/AccessControlContext;
    .end local v7    # "u":Ljava/net/URL;
    .end local v8    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 402
    .local v5, "mue":Ljava/net/MalformedURLException;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_2

    .line 403
    .end local v5    # "mue":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v12

    move-object v5, v12

    .line 404
    .local v5, "se":Ljava/lang/SecurityException;
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_2

    .line 408
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_7
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_2

    .line 410
    .end local v3    # "htmlData":Ljava/lang/Object;
    :cond_8
    move-object v12, v2

    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->convertObjectToImage(Ljava/lang/Object;)Ljavafx/scene/image/Image;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_2
.end method

.method static releaseCurrentDragboard()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 163
    return-void
.end method

.method public static transferModesToClipboardActions(Ljava/util/Set;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    const/4 v4, 0x0

    move v1, v4

    .line 185
    .local v1, "actions":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/TransferMode;

    move-object v3, v4

    .line 186
    .local v3, "t":Ljavafx/scene/input/TransferMode;
    sget-object v4, Lcom/sun/javafx/tk/quantum/QuantumClipboard$2;->$SwitchMap$javafx$scene$input$TransferMode:[I

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/TransferMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 197
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported TransferMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :pswitch_0
    move v4, v1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 200
    :goto_1
    goto :goto_0

    .line 191
    :pswitch_1
    move v4, v1

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v1, v4

    .line 192
    goto :goto_1

    .line 194
    :pswitch_2
    move v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    move v1, v4

    .line 195
    goto :goto_1

    .line 201
    .end local v3    # "t":Ljavafx/scene/input/TransferMode;
    :cond_0
    move v4, v1

    move v0, v4

    .end local v0    # "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    return v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->close()V

    .line 265
    return-void
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->isCaching:Z

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljavafx/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavafx/util/Pair;

    invoke-direct {v1, v2}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->putContentToPeer([Ljavafx/util/Pair;)Z

    move-result v1

    .line 272
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->clearCache()V

    .line 273
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->clearDragView()V

    .line 274
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->flush()V

    .line 275
    return-void
.end method

.method public getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object/from16 v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 279
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/util/Pair;

    move-object v3, v9

    .line 280
    .local v3, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    if-ne v9, v10, :cond_0

    .line 281
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 329
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .end local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 283
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .restart local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 284
    .end local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_1
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    .line 287
    :cond_2
    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    :goto_2
    move-object v2, v9

    .line 290
    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_4

    .line 291
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->readImage()Ljavafx/scene/image/Image;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 287
    .end local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    goto :goto_2

    .line 292
    .restart local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    :cond_4
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_5

    .line 293
    move-object v9, v2

    const-string v10, "text/uri-list"

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 294
    :cond_5
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_8

    .line 295
    move-object v9, v2

    const-string v10, "application/x-java-file-list"

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 296
    .local v3, "data":Ljava/lang/Object;
    move-object v9, v3

    if-nez v9, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 297
    :cond_6
    move-object v9, v3

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    move-object v4, v9

    .line 298
    .local v4, "paths":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v4

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    .line 299
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_3
    move v9, v6

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_7

    .line 300
    move-object v9, v5

    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    move v13, v6

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 302
    :cond_7
    move-object v9, v5

    move-object v0, v9

    goto :goto_1

    .line 305
    .end local v3    # "data":Ljava/lang/Object;
    .end local v4    # "paths":[Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "i":I
    :cond_8
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/DataFormat;->getIdentifiers()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_4
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v4, v9

    .line 306
    .local v4, "mimeType":Ljava/lang/String;
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    .line 307
    .local v5, "data":Ljava/lang/Object;
    move-object v9, v5

    instance-of v9, v9, Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_9

    .line 309
    move-object v9, v5

    :try_start_0
    check-cast v9, Ljava/nio/ByteBuffer;

    move-object v6, v9

    .line 310
    .local v6, "bb":Ljava/nio/ByteBuffer;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    .line 311
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v9

    .line 312
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/tk/quantum/QuantumClipboard$1;-><init>(Lcom/sun/javafx/tk/quantum/QuantumClipboard;Ljava/io/InputStream;)V

    move-object v8, v9

    .line 320
    .local v8, "in":Ljava/io/ObjectInput;
    move-object v9, v8

    invoke-interface {v9}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v5, v9

    .line 325
    .line 327
    .end local v6    # "bb":Ljava/nio/ByteBuffer;
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "in":Ljava/io/ObjectInput;
    :cond_9
    :goto_5
    move-object v9, v5

    if-eqz v9, :cond_a

    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_1

    .line 321
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 325
    goto :goto_5

    .line 323
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_5

    .line 328
    :cond_a
    goto :goto_4

    .line 329
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/Object;
    :cond_b
    const/4 v9, 0x0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public getContentTypes()Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    new-instance v9, Ljava/util/HashSet;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v1, v9

    .line 458
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/DataFormat;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 459
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/util/Pair;

    move-object v3, v9

    .line 460
    .local v3, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 461
    goto :goto_0

    .line 462
    .end local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_0
    move-object v9, v1

    move-object v0, v9

    .line 499
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :goto_1
    return-object v0

    .line 465
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_1
    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v9, :cond_2

    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    :goto_2
    move-object v2, v9

    .line 468
    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/glass/ui/ClipboardAssistance;->getMimeTypes()[Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 469
    .local v3, "types":[Ljava/lang/String;
    move-object v9, v3

    if-nez v9, :cond_3

    .line 470
    move-object v9, v1

    move-object v0, v9

    goto :goto_1

    .line 465
    .end local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .end local v3    # "types":[Ljava/lang/String;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    goto :goto_2

    .line 472
    .restart local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .restart local v3    # "types":[Ljava/lang/String;
    :cond_3
    move-object v9, v3

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_3
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_a

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 473
    .local v7, "t":Ljava/lang/String;
    move-object v9, v7

    const-string v10, "application/x-java-rawimage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 474
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 472
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 475
    :cond_4
    move-object v9, v7

    const-string v10, "text/uri-list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 476
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    .line 477
    :cond_5
    move-object v9, v7

    const-string v10, "application/x-java-file-list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 478
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    .line 479
    :cond_6
    move-object v9, v7

    const-string v10, "text/html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 480
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 484
    move-object v9, v0

    move-object v10, v2

    :try_start_0
    const-string v11, "text/html"

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->parseIMG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 485
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 489
    :cond_7
    goto :goto_4

    .line 487
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 489
    goto :goto_4

    .line 491
    :cond_8
    move-object v9, v7

    invoke-static {v9}, Ljavafx/scene/input/DataFormat;->lookupMimeType(Ljava/lang/String;)Ljavafx/scene/input/DataFormat;

    move-result-object v9

    move-object v8, v9

    .line 492
    .local v8, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v9, v8

    if-nez v9, :cond_9

    .line 494
    new-instance v9, Ljavafx/scene/input/DataFormat;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v7

    aput-object v14, v12, v13

    invoke-direct {v10, v11}, Ljavafx/scene/input/DataFormat;-><init>([Ljava/lang/String;)V

    move-object v8, v9

    .line 496
    :cond_9
    move-object v9, v1

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_4

    .line 499
    .end local v7    # "t":Ljava/lang/String;
    .end local v8    # "dataFormat":Ljavafx/scene/input/DataFormat;
    :cond_a
    move-object v9, v1

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public getDragView()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return-object v0
.end method

.method public getDragViewOffsetX()D
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetX:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return-wide v0
.end method

.method public getDragViewOffsetY()D
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetY:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return-wide v0
.end method

.method public getTransferModes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesCache:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesCache:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, v3

    .line 236
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .local v1, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .local v2, "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    :goto_0
    return-object v0

    .line 233
    .end local v1    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .end local v2    # "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_0
    sget-object v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    :goto_1
    move-object v1, v3

    .line 234
    .restart local v1    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/ClipboardAssistance;->getSupportedSourceActions()I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->clipboardActionsToTransferModes(I)Ljava/util/Set;

    move-result-object v3

    move-object v2, v3

    .line 236
    .restart local v2    # "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 233
    .end local v1    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .end local v2    # "tms":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    goto :goto_1
.end method

.method public hasContent(Ljavafx/scene/input/DataFormat;)Z
    .locals 12

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 504
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/util/Pair;

    move-object v3, v9

    .line 505
    .local v3, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    if-ne v9, v10, :cond_0

    .line 506
    const/4 v9, 0x1

    move v0, v9

    .line 540
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .end local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :goto_1
    return v0

    .line 508
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    .restart local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 509
    .end local v3    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 512
    :cond_2
    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->currentDragboard:Lcom/sun/glass/ui/ClipboardAssistance;

    :goto_2
    move-object v2, v9

    .line 515
    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/glass/ui/ClipboardAssistance;->getMimeTypes()[Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 516
    .local v3, "stypes":[Ljava/lang/String;
    move-object v9, v3

    if-nez v9, :cond_4

    .line 517
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 512
    .end local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .end local v3    # "stypes":[Ljava/lang/String;
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    goto :goto_2

    .line 519
    .restart local v2    # "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    .restart local v3    # "stypes":[Ljava/lang/String;
    :cond_4
    move-object v9, v3

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_3
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_a

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 520
    .local v7, "t":Ljava/lang/String;
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_5

    move-object v9, v7

    const-string v10, "application/x-java-rawimage"

    .line 521
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 522
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1

    .line 523
    :cond_5
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_6

    move-object v9, v7

    const-string v10, "text/uri-list"

    .line 524
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 525
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1

    .line 526
    :cond_6
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_7

    move-object v9, v7

    const-string v10, "text/html"

    .line 527
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v0

    move-object v10, v2

    const-string v11, "text/html"

    .line 528
    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->parseIMG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 529
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1

    .line 530
    :cond_7
    move-object v9, v1

    sget-object v10, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    if-ne v9, v10, :cond_8

    move-object v9, v7

    const-string v10, "application/x-java-file-list"

    .line 531
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 532
    const/4 v9, 0x1

    move v0, v9

    goto :goto_1

    .line 535
    :cond_8
    move-object v9, v7

    invoke-static {v9}, Ljavafx/scene/input/DataFormat;->lookupMimeType(Ljava/lang/String;)Ljavafx/scene/input/DataFormat;

    move-result-object v9

    move-object v8, v9

    .line 536
    .local v8, "found":Ljavafx/scene/input/DataFormat;
    move-object v9, v8

    if-eqz v9, :cond_9

    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljavafx/scene/input/DataFormat;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 537
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_1

    .line 519
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 540
    .end local v7    # "t":Ljava/lang/String;
    .end local v8    # "found":Ljavafx/scene/input/DataFormat;
    :cond_a
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1
.end method

.method public varargs putContent([Ljavafx/util/Pair;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/util/Pair",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "content":[Ljavafx/util/Pair;, "[Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v8, v1

    move-object v2, v8

    move-object v8, v2

    array-length v8, v8

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_2

    move-object v8, v2

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 668
    .local v5, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/input/DataFormat;

    move-object v6, v8

    .line 669
    .local v6, "format":Ljavafx/scene/input/DataFormat;
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 671
    .local v7, "data":Ljava/lang/Object;
    move-object v8, v6

    if-nez v8, :cond_0

    .line 672
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Clipboard.putContent: null data format"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 674
    :cond_0
    move-object v8, v7

    if-nez v8, :cond_1

    .line 675
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Clipboard.putContent: null data"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 667
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 679
    .end local v5    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    .end local v6    # "format":Ljavafx/scene/input/DataFormat;
    .end local v7    # "data":Ljava/lang/Object;
    :cond_2
    const/4 v8, 0x0

    move v2, v8

    .line 681
    .local v2, "dataSet":Z
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->isCaching:Z

    if-eqz v8, :cond_5

    .line 682
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    if-nez v8, :cond_3

    .line 683
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    .line 685
    :cond_3
    move-object v8, v1

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_4

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 686
    .local v6, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dataCache:Ljava/util/List;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 687
    const/4 v8, 0x1

    move v2, v8

    .line 685
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 694
    .end local v6    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_4
    :goto_2
    move v8, v2

    move v0, v8

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    return v0

    .line 690
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_5
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->putContentToPeer([Ljavafx/util/Pair;)Z

    move-result v8

    move v2, v8

    .line 691
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v8}, Lcom/sun/glass/ui/ClipboardAssistance;->flush()V

    goto :goto_2
.end method

.method public setDragView(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragImage:Ljavafx/scene/image/Image;

    .line 241
    return-void
.end method

.method public setDragViewOffsetX(D)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-wide v1, p1

    .local v1, "offsetX":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetX:D

    .line 245
    return-void
.end method

.method public setDragViewOffsetY(D)V
    .locals 7

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-wide v1, p1

    .local v1, "offsetY":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->dragOffsetY:D

    .line 249
    return-void
.end method

.method public setSecurityContext(Ljava/security/AccessControlContext;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->accessContext:Ljava/security/AccessControlContext;

    if-eqz v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Clipboard security context has been already set!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->accessContext:Ljava/security/AccessControlContext;

    .line 134
    return-void
.end method

.method public setSupportedTransferMode(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v1, p1

    .local v1, "tm":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->isCaching:Z

    if-eqz v3, :cond_0

    .line 206
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesCache:Ljava/util/Set;

    .line 208
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->transferModesToClipboardActions(Ljava/util/Set;)I

    move-result v3

    move v2, v3

    .line 209
    .local v2, "actions":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->systemAssistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;->setSupportedActions(I)V

    .line 210
    return-void
.end method
