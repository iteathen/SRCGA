.class Lcom/sun/prism/es2/ES2VramPool;
.super Lcom/sun/prism/impl/BaseResourcePool;
.source "ES2VramPool.java"

# interfaces
.implements Lcom/sun/prism/impl/TextureResourcePool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/impl/BaseResourcePool",
        "<",
        "Lcom/sun/prism/es2/ES2TextureData;",
        ">;",
        "Lcom/sun/prism/impl/TextureResourcePool",
        "<",
        "Lcom/sun/prism/es2/ES2TextureData;",
        ">;"
    }
.end annotation


# static fields
.field static instance:Lcom/sun/prism/es2/ES2VramPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/sun/prism/es2/ES2VramPool;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/es2/ES2VramPool;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    move-object v1, v0

    sget-wide v2, Lcom/sun/prism/impl/PrismSettings;->targetVram:J

    sget-wide v4, Lcom/sun/prism/impl/PrismSettings;->maxVram:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/impl/BaseResourcePool;-><init>(JJ)V

    .line 40
    return-void
.end method


# virtual methods
.method public estimateRTTextureSize(IIZ)J
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "hasDepth":Z
    move v4, v1

    int-to-long v4, v4

    move v6, v2

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VramPool;
    return-wide v0
.end method

.method public estimateTextureSize(IILcom/sun/prism/PixelFormat;)J
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    move v4, v1

    int-to-long v4, v4

    move v6, v2

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-object v6, v3

    .line 47
    invoke-virtual {v6}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VramPool;
    return-wide v0
.end method

.method public size(Lcom/sun/prism/es2/ES2TextureData;)J
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    move-object v1, p1

    .local v1, "resource":Lcom/sun/prism/es2/ES2TextureData;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2TextureData;->getSize()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VramPool;
    return-wide v0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)J
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/es2/ES2TextureData;

    invoke-virtual {v2, v3}, Lcom/sun/prism/es2/ES2VramPool;->size(Lcom/sun/prism/es2/ES2TextureData;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VramPool;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2VramPool;
    const-string v1, "ES2 Vram Pool"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2VramPool;
    return-object v0
.end method
