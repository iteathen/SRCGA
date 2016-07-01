.class Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "MX6Cursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/MX6Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MXCFBPos"
.end annotation


# instance fields
.field private final data:Ljava/nio/ShortBuffer;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    .line 98
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 99
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->data:Ljava/nio/ShortBuffer;

    .line 100
    return-void
.end method


# virtual methods
.method set(II)V
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->data:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    move v5, v1

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;->data:Ljava/nio/ShortBuffer;

    const/4 v4, 0x1

    move v5, v2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 108
    return-void
.end method

.method sizeof()I
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBPos;
    return v0
.end method
