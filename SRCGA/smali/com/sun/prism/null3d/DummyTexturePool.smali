.class public Lcom/sun/prism/null3d/DummyTexturePool;
.super Lcom/sun/prism/impl/BaseResourcePool;
.source "DummyTexturePool.java"

# interfaces
.implements Lcom/sun/prism/impl/TextureResourcePool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/impl/BaseResourcePool",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/sun/prism/impl/TextureResourcePool",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/sun/prism/null3d/DummyTexturePool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/sun/prism/null3d/DummyTexturePool;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/null3d/DummyTexturePool;-><init>()V

    sput-object v0, Lcom/sun/prism/null3d/DummyTexturePool;->instance:Lcom/sun/prism/null3d/DummyTexturePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexturePool;
    move-object v1, v0

    const-wide/32 v2, 0x8000000

    const-wide/32 v4, 0x10000000

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/BaseResourcePool;-><init>(JJ)V

    .line 39
    return-void
.end method


# virtual methods
.method public estimateRTTextureSize(IIZ)J
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexturePool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "hasDepth":Z
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyTexturePool;
    return-wide v0
.end method

.method public estimateTextureSize(IILcom/sun/prism/PixelFormat;)J
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexturePool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyTexturePool;
    return-wide v0
.end method

.method public size(Ljava/lang/Object;)J
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexturePool;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyTexturePool;
    return-wide v0
.end method
