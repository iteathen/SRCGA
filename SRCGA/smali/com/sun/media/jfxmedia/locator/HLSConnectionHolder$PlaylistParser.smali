.class Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
.super Ljava/lang/Object;
.source "HLSConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistParser"
.end annotation


# instance fields
.field private dataListBoolean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dataListDouble:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private dataListIndex:I

.field private dataListInteger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dataListString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDiscontinuity:Z

.field private isEndList:Z

.field private isFirstLine:Z

.field private isLineMediaFileURI:Z

.field private isLinePlaylistURI:Z

.field private isVariantPlaylist:Z

.field private sequenceNumber:I

.field private targetDuration:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 352
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isFirstLine:Z

    .line 353
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLineMediaFileURI:Z

    .line 354
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isEndList:Z

    .line 355
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLinePlaylistURI:Z

    .line 356
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isVariantPlaylist:Z

    .line 357
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isDiscontinuity:Z

    .line 358
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->targetDuration:I

    .line 359
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->sequenceNumber:I

    .line 360
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    .line 361
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListString:Ljava/util/List;

    .line 362
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListInteger:Ljava/util/List;

    .line 363
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListDouble:Ljava/util/List;

    .line 364
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListBoolean:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, p1

    .local v1, "x1":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->load(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isVariantPlaylist()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method static synthetic access$1900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method static synthetic access$2000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method static synthetic access$2100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLivePlaylist()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method static synthetic access$2500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getTargetDuration()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method static synthetic access$2800(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getSequenceNumber()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method static synthetic access$3000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getDouble()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method static synthetic access$3100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getBoolean()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method private getBoolean()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 439
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListBoolean:Ljava/util/List;

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method private getCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "mimeType":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    const-string v4, "application/vnd.apple.mpegurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    :cond_1
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 533
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v0, v3

    .line 541
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :goto_0
    return-object v0

    .line 535
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :cond_2
    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".m3u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v2

    if-eqz v3, :cond_5

    move-object v3, v2

    const-string v4, "audio/mpegurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    :cond_4
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 537
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 541
    :cond_5
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private getDouble()Ljava/lang/Double;
    .locals 3

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListDouble:Ljava/util/List;

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method private getInteger()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListInteger:Ljava/util/List;

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method private getSequenceNumber()I
    .locals 2

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->sequenceNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method private getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListString:Ljava/util/List;

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return-object v0
.end method

.method private getTargetDuration()I
    .locals 2

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->targetDuration:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method private hasNext()Z
    .locals 5

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    .line 419
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListString:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListInteger:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListDouble:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    if-gt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListBoolean:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListIndex:I

    if-le v1, v2, :cond_1

    .line 420
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 422
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private isLivePlaylist()Z
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isEndList:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVariantPlaylist()Z
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isVariantPlaylist:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    return v0
.end method

.method private load(Ljava/net/URI;)V
    .locals 15

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object/from16 v1, p1

    .local v1, "uri":Ljava/net/URI;
    const/4 v8, 0x0

    move-object v2, v8

    .line 368
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    move-object v3, v8

    .line 370
    .local v3, "reader":Ljava/io/BufferedReader;
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v2, v8

    .line 371
    move-object v8, v2

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 373
    move-object v8, v2

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 374
    move-object v8, v0

    sget-object v9, Lcom/sun/media/jfxmedia/MediaError;->ERROR_LOCATOR_CONNECTION_LOST:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP responce code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->error(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    :cond_0
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->getCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    move-object v4, v8

    .line 378
    .local v4, "charset":Ljava/nio/charset/Charset;
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 379
    new-instance v8, Ljava/io/BufferedReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v8

    .line 382
    :cond_1
    move-object v8, v3

    if-eqz v8, :cond_3

    .line 385
    :cond_2
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->parseLine(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move v5, v8

    .line 386
    .local v5, "result":Z
    move v8, v5

    if-nez v8, :cond_2

    .line 391
    .end local v5    # "result":Z
    :cond_3
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 393
    move-object v8, v3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    .line 396
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    .line 399
    :cond_4
    :goto_1
    return-void

    .line 394
    .restart local v4    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v8

    move-object v4, v8

    goto :goto_0

    .line 388
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 391
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 393
    move-object v8, v3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 394
    .line 396
    :goto_2
    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    goto :goto_1

    .line 394
    :catch_2
    move-exception v8

    move-object v4, v8

    goto :goto_2

    .line 389
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 391
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 393
    move-object v8, v3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 394
    .line 396
    :goto_3
    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    goto :goto_1

    .line 394
    :catch_4
    move-exception v8

    move-object v4, v8

    goto :goto_3

    .line 391
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v3

    if-eqz v8, :cond_5

    .line 393
    move-object v8, v3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 394
    .line 396
    :goto_4
    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    :cond_5
    move-object v8, v6

    throw v8

    .line 394
    :catch_5
    move-exception v8

    move-object v7, v8

    goto :goto_4
.end method

.method private parseLine(Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v1, p1

    .local v1, "line":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 444
    const/4 v7, 0x0

    move v0, v7

    .line 527
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :goto_0
    return v0

    .line 448
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isFirstLine:Z

    if-eqz v7, :cond_2

    .line 449
    move-object v7, v1

    const-string v8, "#EXTM3U"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 450
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 453
    :cond_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isFirstLine:Z

    .line 454
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 458
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    const-string v8, "#EXT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 459
    :cond_3
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 462
    :cond_4
    move-object v7, v1

    const-string v8, "#EXTINF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 464
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 465
    .local v2, "s1":[Ljava/lang/String;
    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    move-object v7, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 466
    move-object v7, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 467
    .local v3, "s2":[Ljava/lang/String;
    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_5

    .line 468
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListDouble:Ljava/util/List;

    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 472
    .end local v3    # "s2":[Ljava/lang/String;
    :cond_5
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLineMediaFileURI:Z

    .line 473
    .line 527
    .end local v2    # "s1":[Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 473
    :cond_7
    move-object v7, v1

    const-string v8, "#EXT-X-TARGETDURATION"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 475
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 476
    .restart local v2    # "s1":[Ljava/lang/String;
    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    move-object v7, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 477
    move-object v7, v0

    move-object v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->targetDuration:I

    .line 479
    :cond_8
    goto :goto_1

    .end local v2    # "s1":[Ljava/lang/String;
    :cond_9
    move-object v7, v1

    const-string v8, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 481
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 482
    .restart local v2    # "s1":[Ljava/lang/String;
    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    move-object v7, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 483
    move-object v7, v0

    move-object v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->sequenceNumber:I

    .line 485
    :cond_a
    goto :goto_1

    .end local v2    # "s1":[Ljava/lang/String;
    :cond_b
    move-object v7, v1

    const-string v8, "#EXT-X-STREAM-INF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 487
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isVariantPlaylist:Z

    .line 489
    const/4 v7, 0x0

    move v2, v7

    .line 490
    .local v2, "bitrate":I
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 491
    .local v3, "s1":[Ljava/lang/String;
    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 492
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 493
    .local v4, "s2":[Ljava/lang/String;
    move-object v7, v4

    array-length v7, v7

    if-lez v7, :cond_d

    .line 494
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_2
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_d

    .line 495
    move-object v7, v4

    move v8, v5

    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 496
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    const-string v8, "BANDWIDTH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 497
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 498
    .local v6, "s3":[Ljava/lang/String;
    move-object v7, v6

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    move-object v7, v6

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    .line 499
    move-object v7, v6

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 494
    .end local v6    # "s3":[Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 506
    .end local v4    # "s2":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_d
    move v7, v2

    const/4 v8, 0x1

    if-ge v7, v8, :cond_e

    .line 507
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 510
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListInteger:Ljava/util/List;

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 512
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLinePlaylistURI:Z

    .line 513
    goto/16 :goto_1

    .end local v2    # "bitrate":I
    .end local v3    # "s1":[Ljava/lang/String;
    :cond_f
    move-object v7, v1

    const-string v8, "#EXT-X-ENDLIST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 514
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isEndList:Z

    goto/16 :goto_1

    .line 515
    :cond_10
    move-object v7, v1

    const-string v8, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 516
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isDiscontinuity:Z

    goto/16 :goto_1

    .line 517
    :cond_11
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLinePlaylistURI:Z

    if-eqz v7, :cond_12

    .line 518
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLinePlaylistURI:Z

    .line 519
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListString:Ljava/util/List;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_1

    .line 520
    :cond_12
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLineMediaFileURI:Z

    if-eqz v7, :cond_6

    .line 521
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isLineMediaFileURI:Z

    .line 522
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListString:Ljava/util/List;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 523
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->dataListBoolean:Ljava/util/List;

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isDiscontinuity:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 524
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->isDiscontinuity:Z

    goto/16 :goto_1
.end method
