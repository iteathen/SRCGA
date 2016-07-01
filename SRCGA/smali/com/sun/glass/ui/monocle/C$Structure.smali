.class abstract Lcom/sun/glass/ui/monocle/C$Structure;
.super Ljava/lang/Object;
.source "C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Structure"
.end annotation


# instance fields
.field final b:Ljava/nio/ByteBuffer;

.field final p:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/C$Structure;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/C$Structure;->sizeof()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/C$Structure;->b:Ljava/nio/ByteBuffer;

    .line 75
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/C;->getC()Lcom/sun/glass/ui/monocle/C;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/C$Structure;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/C;->GetDirectBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sun/glass/ui/monocle/C$Structure;->p:J

    .line 76
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 9

    .prologue
    .line 83
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/C$Structure;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v4, v1

    invoke-static {}, Lcom/sun/glass/ui/monocle/C;->getC()Lcom/sun/glass/ui/monocle/C;

    move-result-object v5

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/C$Structure;->sizeof()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/C;->NewDirectByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/C$Structure;->b:Ljava/nio/ByteBuffer;

    .line 85
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/glass/ui/monocle/C$Structure;->p:J

    .line 86
    return-void
.end method


# virtual methods
.method abstract sizeof()I
.end method
