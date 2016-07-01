.class public abstract Lcom/sun/scenario/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/Effect$AccelType;
    }
.end annotation


# static fields
.field public static final DefaultInput:Lcom/sun/scenario/effect/Effect;


# instance fields
.field private final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/scenario/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final maxInputs:I

.field private final unmodifiableInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/scenario/effect/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/scenario/effect/Effect;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    .line 60
    invoke-static {}, Lcom/sun/scenario/effect/Effect$$Lambda$1;->lambdaFactory$()Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/scenario/effect/impl/state/AccessHelper;->setStateAccessor(Lcom/sun/scenario/effect/impl/state/AccessHelper$StateAccessor;)V

    .line 61
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v1, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    .line 68
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    iput-object v2, v1, Lcom/sun/scenario/effect/Effect;->unmodifiableInputs:Ljava/util/List;

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/scenario/effect/Effect;->maxInputs:I

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    .line 79
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/scenario/effect/Effect;->unmodifiableInputs:Ljava/util/List;

    .line 80
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/scenario/effect/Effect;->maxInputs:I

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Effect;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "input1":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "input2":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    .line 92
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/scenario/effect/Effect;->unmodifiableInputs:Ljava/util/List;

    .line 93
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/sun/scenario/effect/Effect;->maxInputs:I

    .line 94
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 95
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 96
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/scenario/effect/Effect;->lambda$static$22(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static varargs combineBounds([Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "inputBounds":[Lcom/sun/javafx/geom/BaseBounds;
    const/4 v4, 0x0

    move-object v1, v4

    .line 153
    .local v1, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 154
    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v1, v4

    .line 168
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 169
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v4

    .line 171
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "inputBounds":[Lcom/sun/javafx/geom/BaseBounds;
    return-object v0

    .line 156
    .restart local v0    # "inputBounds":[Lcom/sun/javafx/geom/BaseBounds;
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 157
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 158
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 159
    move-object v4, v1

    if-nez v4, :cond_4

    .line 160
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v4

    .line 161
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 156
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_4
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    goto :goto_1
.end method

.method public static varargs combineBounds([Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "inputBounds":[Lcom/sun/javafx/geom/Rectangle;
    const/4 v4, 0x0

    move-object v1, v4

    .line 176
    .local v1, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 177
    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v1, v4

    .line 190
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 191
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    move-object v1, v4

    .line 193
    :cond_1
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "inputBounds":[Lcom/sun/javafx/geom/Rectangle;
    return-object v0

    .line 179
    .restart local v0    # "inputBounds":[Lcom/sun/javafx/geom/Rectangle;
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 180
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 181
    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    move-object v4, v1

    if-nez v4, :cond_4

    .line 183
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v1, v4

    .line 179
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_4
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->add(Lcom/sun/javafx/geom/Rectangle;)V

    goto :goto_1
.end method

.method public static createCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;
    .locals 6

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/Renderer;->createCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method

.method public static getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;
    .locals 6

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/impl/Renderer;->getCompatibleImage(II)Lcom/sun/scenario/effect/impl/PoolFilterable;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "fctx":Lcom/sun/scenario/effect/FilterContext;
    return-object v0
.end method

.method static getDefaultedInput(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "listedInput":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    .end local v0    # "listedInput":Lcom/sun/scenario/effect/Effect;
    return-object v0

    .restart local v0    # "listedInput":Lcom/sun/scenario/effect/Effect;
    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method private static synthetic lambda$static$22(Lcom/sun/scenario/effect/Effect;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Effect;->getState()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "effect":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public static releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V
    .locals 4

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v1, p1

    .local v1, "image":Lcom/sun/scenario/effect/Filterable;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/impl/Renderer;->releaseCompatibleImage(Lcom/sun/scenario/effect/Filterable;)V

    .line 493
    return-void
.end method

.method public static transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .line 272
    .end local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :goto_0
    return-object v0

    .line 270
    .restart local v0    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_1
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v2, v3

    .line 271
    .local v2, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v2, v3

    .line 272
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected ensureTransform(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "original":Lcom/sun/scenario/effect/ImageData;
    move-object v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "clip":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .line 287
    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    :goto_0
    return-object v0

    .line 283
    .restart local v0    # "this":Lcom/sun/scenario/effect/Effect;
    :cond_1
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 284
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 285
    new-instance v5, Lcom/sun/scenario/effect/ImageData;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const/4 v8, 0x0

    new-instance v9, Lcom/sun/javafx/geom/Rectangle;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v5

    goto :goto_0

    .line 287
    :cond_2
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public abstract filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
.end method

.method public abstract getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
.end method

.method public abstract getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move v1, p1

    .local v1, "inputIndex":I
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/scenario/effect/Effect;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/scenario/effect/Effect;->getDefaultedInput(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    const/4 v6, 0x0

    move-object v3, v6

    .line 324
    .local v3, "merge":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 325
    move-object v6, v0

    move v7, v4

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Effect;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v6

    move-object v5, v6

    .line 326
    .local v5, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 327
    move-object v6, v5

    move-object v3, v6

    .line 324
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_0
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 330
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    goto :goto_1

    .line 334
    .end local v5    # "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_1
    move-object v6, v3

    if-nez v6, :cond_2

    .line 335
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v6

    move-object v3, v6

    .line 338
    :cond_2
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public final getInputs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/scenario/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Effect;->unmodifiableInputs:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public getNumInputs()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return v0
.end method

.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 11

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .line 201
    .local v4, "numinputs":I
    move v7, v4

    new-array v7, v7, [Lcom/sun/javafx/geom/Rectangle;

    move-object v5, v7

    .line 202
    .local v5, "inputBounds":[Lcom/sun/javafx/geom/Rectangle;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 203
    move-object v7, v5

    move v8, v6

    move-object v9, v3

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v9

    aput-object v9, v7, v8

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    :cond_0
    move-object v7, v5

    invoke-static {v7}, Lcom/sun/scenario/effect/Effect;->combineBounds([Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    move-object v6, v7

    .line 206
    .local v6, "rb":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method getState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public abstract reducesOpaquePixels()Z
.end method

.method protected setInput(ILcom/sun/scenario/effect/Effect;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "input":Lcom/sun/scenario/effect/Effect;
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/Effect;->maxInputs:I

    if-lt v3, v4, :cond_1

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Index must be within allowable range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Effect;->inputs:Ljava/util/List;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 4

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect;
    return-object v0
.end method
