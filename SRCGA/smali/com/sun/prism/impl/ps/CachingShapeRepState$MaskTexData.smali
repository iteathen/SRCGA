.class Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/CachingShapeRepState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskTexData"
.end annotation


# instance fields
.field private cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

.field private maskH:I

.field private maskTex:Lcom/sun/prism/Texture;

.field private maskW:I

.field private maskX:F

.field private maskY:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return-object v0
.end method

.method static synthetic access$202(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return-object v0
.end method

.method static synthetic access$302(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/Texture;)Lcom/sun/prism/Texture;
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/prism/Texture;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)F
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$402(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;F)F
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)F
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$502(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;F)F
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move v1, p1

    .local v1, "x1":F
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$602(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;I)I
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method

.method static synthetic access$702(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;I)I
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return v0
.end method


# virtual methods
.method adjustOrigin(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move v2, v4

    .line 140
    .local v2, "dx":F
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move v3, v4

    .line 141
    .local v3, "dy":F
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    iget v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    move v6, v2

    add-float/2addr v5, v6

    iput v5, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    .line 142
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    iget v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    move v6, v3

    add-float/2addr v5, v6

    iput v5, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    .line 143
    return-void
.end method

.method copy()Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    new-instance v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;-><init>()V

    move-object v1, v2

    .line 147
    .local v1, "data":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iput-object v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    .line 148
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    iput-object v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    .line 149
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    .line 150
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    .line 151
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    .line 152
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    .line 153
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    return-object v0
.end method

.method copyInto(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v1, p1

    .local v1, "other":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/InternalError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "MaskTexData must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iput-object v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->cacheEntry:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    .line 161
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    iput-object v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskTex:Lcom/sun/prism/Texture;

    .line 162
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskX:F

    .line 163
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskY:F

    .line 164
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskW:I

    .line 165
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    iput v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->maskH:I

    .line 166
    return-void
.end method
