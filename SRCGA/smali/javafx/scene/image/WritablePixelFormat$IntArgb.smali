.class Ljavafx/scene/image/WritablePixelFormat$IntArgb;
.super Ljavafx/scene/image/WritablePixelFormat;
.source "WritablePixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/WritablePixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntArgb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/image/WritablePixelFormat",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljavafx/scene/image/WritablePixelFormat$IntArgb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljavafx/scene/image/WritablePixelFormat$IntArgb;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/WritablePixelFormat$IntArgb;-><init>()V

    sput-object v0, Ljavafx/scene/image/WritablePixelFormat$IntArgb;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$IntArgb;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->INT_ARGB:Ljavafx/scene/image/PixelFormat$Type;

    invoke-direct {v1, v2}, Ljavafx/scene/image/WritablePixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic getArgb(Ljava/nio/Buffer;III)I
    .locals 10

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/nio/IntBuffer;

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/image/WritablePixelFormat$IntArgb;->getArgb(Ljava/nio/IntBuffer;III)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    return v0
.end method

.method public getArgb(Ljava/nio/IntBuffer;III)I
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "scanlineStride":I
    move-object v5, v1

    move v6, v3

    move v7, v4

    mul-int/2addr v6, v7

    move v7, v2

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    return v0
.end method

.method public isPremultiplied()Z
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;IIII)V
    .locals 12

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    check-cast v7, Ljava/nio/IntBuffer;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/image/WritablePixelFormat$IntArgb;->setArgb(Ljava/nio/IntBuffer;IIII)V

    return-void
.end method

.method public setArgb(Ljava/nio/IntBuffer;IIII)V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$IntArgb;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "scanlineStride":I
    move v5, p5

    .local v5, "argb":I
    move-object v6, v1

    move v7, v3

    move v8, v4

    mul-int/2addr v7, v8

    move v8, v2

    add-int/2addr v7, v8

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 111
    return-void
.end method
