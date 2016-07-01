.class Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
.super Ljava/lang/Object;
.source "WoffDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/WoffDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WoffDirectoryEntry"
.end annotation


# instance fields
.field comLength:I

.field index:I

.field offset:I

.field origChecksum:I

.field origLength:I

.field tag:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v2, p2

    .local v2, "index":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 184
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->tag:I

    .line 185
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->offset:I

    .line 186
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->comLength:I

    .line 187
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origLength:I

    .line 188
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->origChecksum:I

    .line 189
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/font/WoffDecoder$WoffDirectoryEntry;->index:I

    .line 190
    return-void
.end method
