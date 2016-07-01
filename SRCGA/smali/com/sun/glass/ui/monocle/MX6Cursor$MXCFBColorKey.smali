.class Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
.super Lcom/sun/glass/ui/monocle/C$Structure;
.source "MX6Cursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/MX6Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MXCFBColorKey"
.end annotation


# instance fields
.field private final data:Ljava/nio/IntBuffer;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/C$Structure;-><init>()V

    .line 62
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->data:Ljava/nio/IntBuffer;

    .line 64
    return-void
.end method


# virtual methods
.method setColorKey(I)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    move v1, p1

    .local v1, "key":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->data:Ljava/nio/IntBuffer;

    const/4 v3, 0x1

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 74
    return-void
.end method

.method setEnable(I)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    move v1, p1

    .local v1, "enable":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;->data:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 71
    return-void
.end method

.method sizeof()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MX6Cursor$MXCFBColorKey;
    return v0
.end method
