.class Lcom/sun/javafx/font/WoffDecoder$WoffHeader;
.super Ljava/lang/Object;
.source "WoffDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/WoffDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WoffHeader"
.end annotation


# instance fields
.field flavor:I

.field length:I

.field majorVersion:S

.field metaLength:I

.field metaOffset:I

.field metaOrigLength:I

.field minorVersion:S

.field numTables:S

.field privateLength:I

.field privateOffset:I

.field reserved:S

.field signature:I

.field totalSfntSize:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/WoffDecoder$WoffHeader;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 160
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->signature:I

    .line 161
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->flavor:I

    .line 162
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->length:I

    .line 163
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->numTables:S

    .line 164
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->reserved:S

    .line 165
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->totalSfntSize:I

    .line 166
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->majorVersion:S

    .line 167
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->minorVersion:S

    .line 168
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->metaOffset:I

    .line 169
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->metaLength:I

    .line 170
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->metaOrigLength:I

    .line 171
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->privateOffset:I

    .line 172
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/WoffDecoder$WoffHeader;->privateLength:I

    .line 173
    return-void
.end method
